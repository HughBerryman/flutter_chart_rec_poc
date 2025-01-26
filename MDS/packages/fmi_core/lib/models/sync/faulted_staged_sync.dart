import 'package:fmi_core/models/sync/sync.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'faulted_staged_sync.g.dart';

@Collection()
@JsonSerializable(explicitToJson: true)
class FaultedStagedSync extends StagedSync{
  bool notificationShown;
  bool systemAcknowledged;

  FaultedStagedSync({
    int syncAttempt = 0,
    required String syncDomain,
    required String syncType,
    required String displayName,
    required String payload,
    String? metadata,
    String? searchKey,
    String? draftSearchKey,
    this.notificationShown = false,
    this.systemAcknowledged = false
  }) : super(
      syncAttempt: syncAttempt,
      syncDomain: syncDomain,
      syncType: syncType,
      displayName: displayName,
      payload: payload,
      metadata: metadata,
      searchKey: searchKey,
      draftSearchKey: draftSearchKey
  );

  factory FaultedStagedSync.fromJson(Map<String, dynamic> json) =>
      _$FaultedStagedSyncFromJson(json);
  Map<String, dynamic> toJson() => _$FaultedStagedSyncToJson(this);

  factory FaultedStagedSync.fromStagedSync({
    required StagedSync stagedSync
  }) => FaultedStagedSync(
      syncAttempt: stagedSync.syncAttempt,
      syncDomain: stagedSync.syncDomain,
      syncType: stagedSync.syncType,
      displayName: stagedSync.displayName,
      payload: stagedSync.payload,
      metadata: stagedSync.metadata,
      searchKey: stagedSync.searchKey,
      draftSearchKey: stagedSync.draftSearchKey
  );
}