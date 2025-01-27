import 'package:flutter/foundation.dart';

import '../../fmi_core.dart';

abstract class RecurringDataRetrievalService extends ChangeNotifier {
  void initialize();
  Future runDataRetrieval();
  Future reset();
  @override
  void dispose();
  void handleError(Object ex, StackTrace trace);
  Duration getInterval();
  bool getIsDebugMode();
  bool get syncInProgress;
  Future handleDataRetrieval(SyncDomainMetadata? syncDomainMetadata);
  Future<SyncDataRetrievalResult> execute(SyncDomainMetadata? syncDomainMetadata);
  Future<SyncDomainMetadata?> getSyncDomainMetadata();
  Future updateSyncDomainMetadata(SyncDomainMetadata syncDomainMetadata);
}