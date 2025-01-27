import 'package:fmi_core/fmi_core.dart';

abstract class SyncableService {
  bool get syncInProgress;
  handleSync(StagedSync stagedSync);
  Future<List<SyncResult>> sync();
  Future stageSync({required String displayName, required String payload, required String syncType, String? metadata, String? searchKey, String? draftSearchKey});
  Future upsertStagedSync(StagedSync stagedSync);
  Future<List<StagedSync>> getStagedSyncs({bool ignoreFaultedSyncs = false});
  Future<List<StagedSync>> getFaultedStagedSyncs();
}