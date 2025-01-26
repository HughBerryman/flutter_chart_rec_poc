abstract class PreferenceService {
  Future clearAccessToken();
  Future<String?> getAccessToken();
  Future setAccessToken(String accessToken);
  Future clearNotificationToken();
  Future<String?> getNotificationToken();
  Future setNotificationToken(String notificationToken);
}