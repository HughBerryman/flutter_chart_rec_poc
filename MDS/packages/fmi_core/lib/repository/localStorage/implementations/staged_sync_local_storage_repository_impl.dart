import 'package:isar/isar.dart';

import '../../../models/sync/staged_sync.dart';
import '../interfaces/staged_sync_local_storage_repository.dart';

class StagedSyncLocalStorageRepositoryImpl implements StagedSyncLocalStorageRepository{
  late final Isar isar;

  StagedSyncLocalStorageRepositoryImpl({required this.isar});

  @override
  Future dispose() async {
    await isar.close();
  }

  @override
  Future addStagedSyncs(List<StagedSync> stagedSyncs) async {
    await isar.writeTxn((isar) async {
      await getStagedSyncCollection().putAll(stagedSyncs);
    });
  }

  @override
  Future deleteAllStagedSyncs() async {
    await isar.writeTxn((isar) async {
      await getStagedSyncCollection().clear();
    });
  }

  IsarCollection<StagedSync> getStagedSyncCollection() {
    return isar.stagedSyncs;
  }

  @override
  Future<List<StagedSync>> getStagedSyncs() async {
    return await getStagedSyncCollection().where().findAll();
  }

  @override
  Future upsertStagedSync(StagedSync stagedSync) async {
    await isar.writeTxn((isar) async {
      await getStagedSyncCollection().put(stagedSync);
    });
  }

  @override
  Future deleteStagedSync(StagedSync stagedSync) async {
    if(stagedSync.id != null) {
      await isar.writeTxn((isar) async {
        await getStagedSyncCollection().delete(stagedSync.id!);
      });
    }
  }
}