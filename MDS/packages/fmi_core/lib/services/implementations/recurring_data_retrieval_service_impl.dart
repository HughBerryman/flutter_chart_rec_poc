import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:synchronized/synchronized.dart';

import '../../fmi_core.dart';

abstract class RecurringDataRetrievalServiceImpl extends ChangeNotifier
    implements RecurringDataRetrievalService {
  final SyncDomainMetadataLocalStorageRepository
  _syncDomainMetadataLocalStorageRepository =
  GetIt.instance.get<SyncDomainMetadataLocalStorageRepository>();

  final InternetConnectivityProvider _internetConnectivityProvider =
  GetIt.instance.get<InternetConnectivityProvider>();

  final String syncDomain;

  Timer? recurringJob;
  Lock? executionLock;

  @override
  bool syncInProgress = false;

  RecurringDataRetrievalServiceImpl({required this.syncDomain});

  @override
  Future runDataRetrieval() async {
    if(executionLock == null){
      throw(Exception("Service has not yet been initialized"));
    }

    try {
      if (!executionLock!.locked) {
        await executionLock!.synchronized(() async {
          Duration refreshInterval = getInterval();
          SyncDomainMetadata? syncDomainMetadata =
          await getSyncDomainMetadata();
          DateTime currentUtcTime = DateTime.now().toUtc();

          if (syncDomainMetadata?.lastSync != null &&
              (syncDomainMetadata!.lastSync!
                  .toUtc()
                  .add(refreshInterval)
                  .compareTo(currentUtcTime) >
                  0)) {
            // SYNC NOT YET NEEDED, IGNORE
            return;
          }

          if (_internetConnectivityProvider.connected) {
            if (getIsDebugMode()) {
              debugPrint("$syncDomain: Sync started");
            }

            SyncDataRetrievalResult syncDataRetrievalResult =
            await execute(syncDomainMetadata);

            if (syncDataRetrievalResult.success) {
              if (syncDomainMetadata != null) {
                // UPDATE EXISTING RECORD
                syncDomainMetadata.lastSync = currentUtcTime;
                updateSyncDomainMetadata(syncDomainMetadata);
              } else {
                // CREATE NEW RECORD
                SyncDomainMetadata syncDomainMetadata = SyncDomainMetadata(
                    syncDomain: syncDomain, lastSync: currentUtcTime);

                updateSyncDomainMetadata(syncDomainMetadata);
              }
            }

            if (getIsDebugMode()) {
              debugPrint(
                  "$syncDomain: Sync result: ${syncDataRetrievalResult.success ? "SUCCESS" : "FAILURE"}");
            }

            if (getIsDebugMode()) {
              debugPrint("$syncDomain: Sync finished");
            }
          } else {
            if (getIsDebugMode()) {
              debugPrint("$syncDomain: Sync skipped, currently offline.");
            }
          }
        });
      } else {
        if (getIsDebugMode()) {
          debugPrint(
              "$syncDomain: Sync already in progress, ignoring internal execution attempt.");
        }
      }
    } catch (ex, trace) {
      handleError(ex, trace);
    }
  }

  @override
  void initialize() async {
    executionLock = Lock();
    recurringJob = Timer.periodic(const Duration(seconds: 10), (timer) async {
      await runDataRetrieval();
    });
  }

  @override
  Future reset() async {
    if (recurringJob != null) {
      recurringJob!.cancel();
    }

    if(executionLock != null){
      while(executionLock!.locked){
        // wait for any existing sync from cancelled job to terminate
      }
    }

    SyncDomainMetadata? syncDomainMetadata = await getSyncDomainMetadata();

    if(syncDomainMetadata != null){
      await _syncDomainMetadataLocalStorageRepository
          .deleteSyncDomainMetadata(syncDomainMetadata);
    }
  }

  @override
  void dispose() {
    super.dispose();

    if (recurringJob != null) {
      recurringJob!.cancel();
    }
  }

  @override
  Future<SyncDataRetrievalResult> execute(
      SyncDomainMetadata? syncDomainMetadata) async {
    SyncDataRetrievalResult result;

    try {
      syncInProgress = true;

      await handleDataRetrieval(syncDomainMetadata);

      result = SyncDataRetrievalResult(success: true);
    } catch (ex, stackTrace) {
      result =
          SyncDataRetrievalResult(success: false, failureReason: ex.toString());

      handleError(ex, stackTrace);
    } finally {
      syncInProgress = false;
    }

    return result;
  }

  @override
  Future<SyncDomainMetadata?> getSyncDomainMetadata() async {
    return await _syncDomainMetadataLocalStorageRepository
        .getSyncDomainMetadataByDomain(syncDomain);
  }

  @override
  Future updateSyncDomainMetadata(SyncDomainMetadata syncDomainMetadata) async {
    await _syncDomainMetadataLocalStorageRepository
        .upsertSyncDomainMetadata(syncDomainMetadata);
  }
}
