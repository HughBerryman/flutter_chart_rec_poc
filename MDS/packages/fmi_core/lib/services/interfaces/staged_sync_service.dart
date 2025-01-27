import 'package:fmi_core/fmi_core.dart';

abstract class StagedSyncService {
  Future faultStagedSync(StagedSync stagedSync);
  Future unFaultStagedSync(FaultedStagedSync faultedStagedSync);
  Future markFaultedStagedSyncAsNotified(FaultedStagedSync faultedStagedSync);
  Future markFaultedStagedSyncAsSystemAcknowledged(FaultedStagedSync faultedStagedSync);
  Future<List<FaultedStagedSync>> getUnNotifiedFaultedStagedSyncs();
  Future<List<FaultedStagedSync>> getFaultedStagedSyncs();
  Future<List<FaultedStagedSync>> getNonSystemAcknowledgedFaultedStagedSyncs();
}