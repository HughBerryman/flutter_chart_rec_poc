import 'package:isar/isar.dart';

import '../../../fmi_core.dart';

class FaultedStagedSyncLocalStorageRepositoryImpl implements FaultedStagedSyncLocalStorageRepository{
  late final Isar isar;

  FaultedStagedSyncLocalStorageRepositoryImpl({
    required this.isar,
  });

  @override
  Future dispose() async {
    await isar.close();
  }

  @override
  Future addFaultedStagedSyncs(List<FaultedStagedSync> faultedStagedSyncs) async {
    await isar.writeTxn((isar) async {
      await getFaultedStagedSyncCollection().putAll(faultedStagedSyncs);
    });
  }

  @override
  Future deleteAllFaultedStagedSyncs() async {
    await isar.writeTxn((isar) async {
      await getFaultedStagedSyncCollection().clear();
    });
  }

  IsarCollection<StagedSync> getStagedSyncCollection() {
    return isar.stagedSyncs;
  }

  @override
  Future<List<FaultedStagedSync>> getFaultedStagedSyncs() async {
    return await getFaultedStagedSyncCollection().where().findAll();
  }

  @override
  Future upsertFaultedStagedSync(FaultedStagedSync faultedStagedSync) async {
    await isar.writeTxn((isar) async {
      await getFaultedStagedSyncCollection().put(faultedStagedSync);
    });
  }

  @override
  Future deleteFaultedStagedSync(FaultedStagedSync faultedStagedSync) async {
    if(faultedStagedSync.id != null) {
      await isar.writeTxn((isar) async {
        await getFaultedStagedSyncCollection().delete(faultedStagedSync.id!);
      });
    }
  }

  IsarCollection<FaultedStagedSync> getFaultedStagedSyncCollection() {
    return isar.faultedStagedSyncs;
  }
}