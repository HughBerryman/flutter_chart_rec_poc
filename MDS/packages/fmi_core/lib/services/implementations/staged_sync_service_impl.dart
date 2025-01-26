import 'package:fmi_core/fmi_core.dart';

class StagedSyncServiceImpl implements StagedSyncService{
  StagedSyncServiceImpl({
    required this.stagedSyncLocalStorageRepository,
    required this.faultedStagedSyncLocalStorageRepository
  });

  final StagedSyncLocalStorageRepository stagedSyncLocalStorageRepository;
  final FaultedStagedSyncLocalStorageRepository faultedStagedSyncLocalStorageRepository;

  @override
  Future faultStagedSync(StagedSync stagedSync) async {
    FaultedStagedSync faultedStagedSync = FaultedStagedSync.fromStagedSync(stagedSync: stagedSync);

    faultedStagedSync.id = null;

    await faultedStagedSyncLocalStorageRepository.addFaultedStagedSyncs([faultedStagedSync]);
    await stagedSyncLocalStorageRepository.deleteStagedSync(stagedSync);
  }

  @override
  Future<List<FaultedStagedSync>> getUnNotifiedFaultedStagedSyncs() async {
    List<FaultedStagedSync> faultedStagedSyncs = await faultedStagedSyncLocalStorageRepository.getFaultedStagedSyncs();
    List<FaultedStagedSync> unNotifiedFaultedStagedSyncs = faultedStagedSyncs
        .where((faultedStagedSync) => !faultedStagedSync.notificationShown)
        .toList();

    return unNotifiedFaultedStagedSyncs;
  }

  @override
  Future<List<FaultedStagedSync>> getNonSystemAcknowledgedFaultedStagedSyncs() async {
    List<FaultedStagedSync> faultedStagedSyncs = await faultedStagedSyncLocalStorageRepository.getFaultedStagedSyncs();
    List<FaultedStagedSync> nonSystemAcknowledgedFaultedStagedSyncs = faultedStagedSyncs
        .where((faultedStagedSync) => !faultedStagedSync.systemAcknowledged)
        .toList();

    return nonSystemAcknowledgedFaultedStagedSyncs;
  }

  @override
  Future markFaultedStagedSyncAsNotified(FaultedStagedSync faultedStagedSync) async {
    faultedStagedSync.notificationShown = true;

    await faultedStagedSyncLocalStorageRepository.upsertFaultedStagedSync(faultedStagedSync);
  }

  @override
  Future markFaultedStagedSyncAsSystemAcknowledged(FaultedStagedSync faultedStagedSync) async {
    faultedStagedSync.systemAcknowledged = true;

    await faultedStagedSyncLocalStorageRepository.upsertFaultedStagedSync(faultedStagedSync);
  }

  @override
  Future unFaultStagedSync(FaultedStagedSync faultedStagedSync) async {
    await faultedStagedSyncLocalStorageRepository.deleteFaultedStagedSync(faultedStagedSync);

    faultedStagedSync.id = null;
    faultedStagedSync.syncAttempt = 0;

    await stagedSyncLocalStorageRepository.addStagedSyncs([faultedStagedSync]);
  }

  @override
  Future<List<FaultedStagedSync>> getFaultedStagedSyncs() async {
    List<FaultedStagedSync> results = await faultedStagedSyncLocalStorageRepository.getFaultedStagedSyncs();

    return results;
  }
}