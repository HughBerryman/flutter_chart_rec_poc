class SyncDataRetrievalResult {
  bool success;
  String? failureReason;

  SyncDataRetrievalResult({
    required this.success,
    this.failureReason});
}