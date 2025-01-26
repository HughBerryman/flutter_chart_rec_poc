import 'package:isar/isar.dart';

part 'sync_domain_metadata.g.dart';

@Collection()
class SyncDomainMetadata {
  @Id()
  int? id;

  String syncDomain;

  DateTime? lastSync;

  SyncDomainMetadata({
    this.id,
    required this.syncDomain,
    this.lastSync
  });
}