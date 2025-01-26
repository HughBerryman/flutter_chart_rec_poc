import 'package:fmi_core/models/sync/sync_domain_metadata.dart';
import 'package:isar/isar.dart';

import '../interfaces/sync_domain_metadata_local_storage_repository.dart';

class SyncDomainMetadataLocalStorageRepositoryImpl implements SyncDomainMetadataLocalStorageRepository{
  late final Isar isar;

  SyncDomainMetadataLocalStorageRepositoryImpl({required this.isar});

  @override
  Future dispose() async {
    await isar.close();
  }


  IsarCollection<SyncDomainMetadata> getSyncDomainMetadataCollection() {
    return isar.syncDomainMetadatas;
  }

  @override
  Future addSyncDomainMetadata(List<SyncDomainMetadata> syncDomainMetadataList) async {
    await isar.writeTxn((isar) async {
      await getSyncDomainMetadataCollection().putAll(syncDomainMetadataList);
    });
  }

  @override
  Future deleteAllSyncDomainMetadata() async {
    await isar.writeTxn((isar) async {
      await getSyncDomainMetadataCollection().clear();
    });
  }

  @override
  Future deleteSyncDomainMetadata(SyncDomainMetadata syncDomainMetadata) async {
    if(syncDomainMetadata.id != null) {
      await isar.writeTxn((isar) async {
        await getSyncDomainMetadataCollection().delete(syncDomainMetadata.id!);
      });
    }
  }

  @override
  Future<List<SyncDomainMetadata>> getSyncDomainMetadata() async{
    List<SyncDomainMetadata> results = await getSyncDomainMetadataCollection().where().findAll();

    for (SyncDomainMetadata result in results) {
      // ISAR AUTOMATICALLY RETRIEVES ITEMS IN LOCAL TIME, MUST CONVERT BACK
      _convertLastSyncToUtc(result);
    }

    return results;
  }

  @override
  Future upsertSyncDomainMetadata(SyncDomainMetadata syncDomainMetadata) async {
    await isar.writeTxn((isar) async {
      await getSyncDomainMetadataCollection().put(syncDomainMetadata);
    });
  }

  @override
  Future<SyncDomainMetadata?> getSyncDomainMetadataByDomain(String syncDomain) async {
    SyncDomainMetadata? result = await getSyncDomainMetadataCollection().where().filter().syncDomainEqualTo(syncDomain).findFirst();

    // ISAR AUTOMATICALLY RETRIEVES ITEMS IN LOCAL TIME, MUST CONVERT BACK
    _convertLastSyncToUtc(result);

    return result;
  }

  void _convertLastSyncToUtc(SyncDomainMetadata? syncDomainMetadata){
    if(syncDomainMetadata?.lastSync != null){
      syncDomainMetadata!.lastSync = syncDomainMetadata.lastSync!.toUtc();
    }
  }
}