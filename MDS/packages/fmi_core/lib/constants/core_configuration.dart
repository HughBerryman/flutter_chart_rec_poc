import 'package:fmi_core/fmi_core.dart';
import 'package:isar/isar.dart';

class CoreConfiguration {
  static const List<CollectionSchema> isarSchemas = [
    SearchedTermSchema,
    StagedSyncSchema,
    EmployeeSchema,
    SyncDomainMetadataSchema,
    AssetSchema,
    FaultedStagedSyncSchema
  ];
}
