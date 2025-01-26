import 'package:fmi_core/models/sync/staged_sync.dart';

class SyncResult {
  bool success;
  final StagedSync? stagedSync;
  String? failureReason;

  SyncResult({
    required this.success,
    required this.stagedSync,
    this.failureReason});
}