import 'package:fmi_core/fmi_core.dart';

abstract class StagedSyncLocalStorageRepository {
  Future dispose();
  Future<List<StagedSync>> getStagedSyncs();
  Future deleteAllStagedSyncs();
  Future deleteStagedSync(StagedSync stagedSync);
  Future upsertStagedSync(StagedSync stagedSync);
  Future addStagedSyncs(List<StagedSync> stagedSyncs);
}