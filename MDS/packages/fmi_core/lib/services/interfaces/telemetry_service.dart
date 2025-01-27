abstract class TelemetryService {
  Future initialize();
  void trackError({
    required bool isFatal,
    required Object error,
    required String userId,
    required String siteCode,
    StackTrace? trace});
  void trackTrace(String message, {String? userId, String? siteCode});
  void trackPageView(String pageName, {String? userId, String? siteCode});
  void trackEvent(String eventName, {String? userId, String? siteCode});
}