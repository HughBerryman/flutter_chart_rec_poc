import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../interfaces/preference_service.dart';


class PreferenceServiceImpl implements PreferenceService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<String> _getPackageName() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.packageName;
  }

  @override
  Future clearAccessToken() async {
    final packageName = await _getPackageName();
    await _storage.delete(key: "$packageName.accessToken");
  }

  @override
  Future<String?> getAccessToken() async {
    final packageName = await _getPackageName();
    final token = await _storage.read(key: "$packageName.accessToken");

    return token;
  }

  @override
  Future setAccessToken(String accessToken) async {
    final packageName = await _getPackageName();
    await _storage.write(key: "$packageName.accessToken", value: accessToken);
  }

  @override
  Future clearNotificationToken() async {
    final packageName = await _getPackageName();
    await _storage.delete(key: "$packageName.notificationToken");
  }

  @override
  Future<String?> getNotificationToken() async {
    final packageName = await _getPackageName();
    final token = await _storage.read(key: "$packageName.notificationToken");

    return token;
  }

  @override
  Future setNotificationToken(String notificationToken) async {
    final packageName = await _getPackageName();
    await _storage.write(key: "$packageName.notificationToken", value: notificationToken);
  }
}