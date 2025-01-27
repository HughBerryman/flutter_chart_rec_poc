import 'package:fmi_core/models/sync/sync_domain_metadata.dart';

abstract class SyncDomainMetadataLocalStorageRepository {
  Future dispose();
  Future<List<SyncDomainMetadata>> getSyncDomainMetadata();
  Future<SyncDomainMetadata?> getSyncDomainMetadataByDomain(String syncDomain);
  Future deleteAllSyncDomainMetadata();
  Future deleteSyncDomainMetadata(SyncDomainMetadata syncDomainMetadata);
  Future upsertSyncDomainMetadata(SyncDomainMetadata syncDomainMetadata);
  Future addSyncDomainMetadata(List<SyncDomainMetadata> syncDomainMetadataList);
}