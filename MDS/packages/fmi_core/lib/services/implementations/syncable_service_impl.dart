import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';

abstract class SyncableServiceImpl implements SyncableService {
  final StagedSyncLocalStorageRepository _stagedSyncLocalStorageRepository
    = GetIt.instance.get<StagedSyncLocalStorageRepository>();
  final StagedSyncService _stagedSyncService
    = GetIt.instance.get<StagedSyncService>();
  final FaultedStagedSyncLocalStorageRepository _faultedStagedSyncLocalStorageRepository
    = GetIt.instance.get<FaultedStagedSyncLocalStorageRepository>();


  final String _syncDomain;
  final int _syncAttemptsBeforeFault;

  @override
  bool syncInProgress = false;

  SyncableServiceImpl(this._syncDomain, this._syncAttemptsBeforeFault);

  @override
  Future handleSync(StagedSync stagedSync);

  @override
  Future<List<SyncResult>> sync() async {
    List<SyncResult> syncResults = [];

    try{
      syncInProgress = true;

      List<StagedSync> stagedSyncs = await getStagedSyncs(ignoreFaultedSyncs: true);

      for (StagedSync stagedSync in stagedSyncs) {
        SyncResult syncResult = SyncResult(
            success: true,
            stagedSync: stagedSync
        );

        try{
          // ALLOW CONSUMING CLASS TO HANDLE SYNC BY ENCOUNTERED TYPE
          await handleSync(stagedSync);

          // IF NO EXCEPTION THROWN, REMOVE SYNC FROM FURTHER FUTURE INSPECTION
          await _stagedSyncLocalStorageRepository.deleteStagedSync(stagedSync);
        }
        catch(ex){
          syncResult.success = false;
          syncResult.failureReason = ex.toString();
        }
        finally{
          if(!syncResult.success){
            // UPDATE SYNC ATTEMPT COUNT
            stagedSync.syncAttempt++;

            if(stagedSync.syncAttempt >= _syncAttemptsBeforeFault){
              _stagedSyncService.faultStagedSync(stagedSync);
            }
            else{
              await _stagedSyncLocalStorageRepository.upsertStagedSync(stagedSync);
            }
          }
        }

        syncResults.add(syncResult);
      }
    }
    finally{
      syncInProgress = false;
    }

    return syncResults;
  }

  @override
  Future stageSync({required String displayName, required String payload, required String syncType, String? metadata, String? searchKey, String? draftSearchKey}) async {
    StagedSync stagedSync = StagedSync(
        displayName: displayName,
        payload: payload,
        syncDomain: _syncDomain,
        syncType: syncType,
        metadata: metadata,
        searchKey: searchKey,
        draftSearchKey: draftSearchKey
    );

    await _stagedSyncLocalStorageRepository.upsertStagedSync(stagedSync);
  }

  @override
  Future upsertStagedSync(StagedSync stagedSync) async {
    await _stagedSyncLocalStorageRepository.upsertStagedSync(stagedSync);
  }

  @override
  Future<List<StagedSync>> getStagedSyncs({bool ignoreFaultedSyncs = false}) async {
    List<StagedSync> stagedSyncs = await _stagedSyncLocalStorageRepository
        .getStagedSyncs();

    stagedSyncs = stagedSyncs
        .where((stagedSync) => stagedSync.syncDomain == _syncDomain)
        .toList();

    if(ignoreFaultedSyncs){
      stagedSyncs = stagedSyncs
          .where((stagedSync) => stagedSync.syncAttempt < _syncAttemptsBeforeFault)
          .toList();
    }

    return stagedSyncs;
  }

  @override
  Future<List<StagedSync>> getFaultedStagedSyncs() async {
    List<StagedSync> faultedStagedSyncs = await _faultedStagedSyncLocalStorageRepository
        .getFaultedStagedSyncs();

    faultedStagedSyncs = faultedStagedSyncs
        .where((stagedSync) => stagedSync.syncDomain == _syncDomain)
        .toList();

    return faultedStagedSyncs;
  }
}