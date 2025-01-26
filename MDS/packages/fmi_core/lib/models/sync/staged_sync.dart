import 'package:isar/isar.dart';

part 'staged_sync.g.dart';

@Collection()
class StagedSync {
  @Id()
  int? id;

  late int syncAttempt;

  final String displayName;

  String payload;

  final String syncDomain;

  final String syncType;

  final String? metadata;

  final String? searchKey;

  @Name("x_7_draftSearchKey")
  final String? draftSearchKey;

  StagedSync({
    this.syncAttempt = 0,
    required this.syncDomain,
    required this.syncType,
    required this.displayName,
    required this.payload,
    this.metadata,
    this.searchKey,
    this.draftSearchKey
  });
}