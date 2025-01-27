import 'package:fmi_core/fmi_core.dart';

abstract class FaultedStagedSyncLocalStorageRepository {
  Future dispose();
  Future<List<FaultedStagedSync>> getFaultedStagedSyncs();
  Future deleteAllFaultedStagedSyncs();
  Future deleteFaultedStagedSync(FaultedStagedSync faultedStagedSync);
  Future upsertFaultedStagedSync(FaultedStagedSync faultedStagedSync);
  Future addFaultedStagedSyncs(List<FaultedStagedSync> faultedStagedSyncs);
}