import 'dart:convert';
import 'dart:io';

import 'package:fmi_core/services/interfaces/telemetry_service.dart';
import 'package:azure_application_insights/azure_application_insights.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:package_info_plus/package_info_plus.dart';

class TelemetryServiceImpl implements TelemetryService {
  String telemetryKey;
  late TelemetryClient _telemetryClient;
  final Map<String, dynamic> _deviceContext = <String, dynamic>{};
  final client = Client();

  TelemetryServiceImpl({required this.telemetryKey}) {
    final processor = BufferedProcessor(
        next: TransmissionProcessor(
            instrumentationKey: telemetryKey,
            httpClient: client,
            timeout: const Duration(seconds: 10)
        )
    );

    _telemetryClient = TelemetryClient(processor: processor);
  }

  @override
  Future initialize() async {
    var packageInfo = await PackageInfo.fromPlatform();
    var appVersion = packageInfo.version;

    _deviceContext.putIfAbsent("userId", () => null);
    _deviceContext.putIfAbsent("appVersion", () => appVersion);

    if(kIsWeb) {
      var webInfo = await DeviceInfoPlugin().webBrowserInfo;
      _deviceContext.putIfAbsent("sdkVersion", () => webInfo.userAgent);
      _deviceContext.putIfAbsent("type", () => "Web");
      _deviceContext.putIfAbsent("model", () => "Other");
      _deviceContext.putIfAbsent("deviceInfo", () => <String, dynamic>{
        'browserName': describeEnum(webInfo.browserName),
        'appCodeName': webInfo.appCodeName,
        'appName': webInfo.appName,
        'appVersion': webInfo.appVersion,
        'deviceMemory': webInfo.deviceMemory,
        'language': webInfo.language,
        'languages': webInfo.languages,
        'platform': webInfo.platform,
        'product': webInfo.product,
        'productSub': webInfo.productSub,
        'userAgent': webInfo.userAgent,
        'vendor': webInfo.vendor,
        'vendorSub': webInfo.vendorSub,
        'hardwareConcurrency': webInfo.hardwareConcurrency,
        'maxTouchPoints': webInfo.maxTouchPoints
      });
    }
    else if(Platform.isAndroid) {
      var androidInfo = await DeviceInfoPlugin().androidInfo;
      _deviceContext.putIfAbsent("sdkVersion", () => androidInfo.version.release);
      _deviceContext.putIfAbsent("type", () => "Android");
      _deviceContext.putIfAbsent("model", () => androidInfo.model);
      _deviceContext.putIfAbsent("deviceInfo", () => <String, dynamic>{
        'version.securityPatch': androidInfo.version.securityPatch,
        'version.sdkInt': androidInfo.version.sdkInt,
        'version.release': androidInfo.version.release,
        'version.previewSdkInt': androidInfo.version.previewSdkInt,
        'version.incremental': androidInfo.version.incremental,
        'version.codename': androidInfo.version.codename,
        'version.baseOS': androidInfo.version.baseOS,
        'board': androidInfo.board,
        'bootloader': androidInfo.bootloader,
        'brand': androidInfo.brand,
        'device': androidInfo.device,
        'display': androidInfo.display,
        'fingerprint': androidInfo.fingerprint,
        'hardware': androidInfo.hardware,
        'host': androidInfo.host,
        'id': androidInfo.id,
        'manufacturer': androidInfo.manufacturer,
        'model': androidInfo.model,
        'product': androidInfo.product,
        'supported32BitAbis': androidInfo.supported32BitAbis,
        'supported64BitAbis': androidInfo.supported64BitAbis,
        'supportedAbis': androidInfo.supportedAbis,
        'tags': androidInfo.tags,
        'type': androidInfo.type,
        'isPhysicalDevice': androidInfo.isPhysicalDevice,
        'systemFeatures': androidInfo.systemFeatures
      });
    }
    else if(Platform.isIOS) {
      var iosInfo = await DeviceInfoPlugin().iosInfo;
      _deviceContext.putIfAbsent("sdkVersion", () => iosInfo.systemVersion);
      _deviceContext.putIfAbsent("type", () => "iOS");
      _deviceContext.putIfAbsent("model", () => iosInfo.model);
      _deviceContext.putIfAbsent("deviceInfo", () => <String, dynamic>{
        'name': iosInfo.name,
        'systemName': iosInfo.systemName,
        'systemVersion': iosInfo.systemVersion,
        'model': iosInfo.model,
        'localizedModel': iosInfo.localizedModel,
        'identifierForVendor': iosInfo.identifierForVendor,
        'isPhysicalDevice': iosInfo.isPhysicalDevice,
        'utsname.sysname': iosInfo.utsname.sysname,
        'utsname.nodename': iosInfo.utsname.nodename,
        'utsname.release': iosInfo.utsname.release,
        'utsname.version': iosInfo.utsname.version,
        'utsname.machine': iosInfo.utsname.machine
      });
    }
    setTelemetryContext();
  }

  void setTelemetryContext() {
    _telemetryClient.context.user.id = _deviceContext["userId"];
    _telemetryClient.context.applicationVersion = _deviceContext["appVersion"];
    _telemetryClient.context.device.type = _deviceContext["type"];
    _telemetryClient.context.device.model = _deviceContext["model"];
    _telemetryClient.context.device.osVersion = _deviceContext["sdkVersion"];
    _telemetryClient.context.properties["site"] = _deviceContext["site"];
    _telemetryClient.context.properties["deviceInfo"] = jsonEncode(_deviceContext["deviceInfo"]).toString();
  }

  @override
  void trackError({
    required bool isFatal,
    required Object error,
    required String userId,
    required String siteCode,
    StackTrace? trace}) {
    debugPrint("ERROR: $error");
    debugPrint("STACK: $trace");
    _setUserContext(userId, siteCode);
    _telemetryClient.trackError(
        severity: isFatal ? Severity.critical : Severity.error,
        error: error,
        stackTrace: trace);
  }

  @override
  void trackTrace(String message, {String? userId, String? siteCode}) {
    debugPrint("INFO: $message");
    _setUserContext(userId, siteCode);
    _telemetryClient.trackTrace(
        severity: Severity.information,
        message: message);
  }

  @override
  void trackPageView(String pageName, {String? userId, String? siteCode}) {
    _setUserContext(userId, siteCode);
    _telemetryClient.trackPageView(name: pageName);
  }

  @override
  void trackEvent(String eventName, {String? userId, String? siteCode}) {
    _setUserContext(userId, siteCode);
    _telemetryClient.trackEvent(name: eventName);
  }

  void _setUserContext(String? userId, String? siteCode) {
    _deviceContext.update("userId", (value) => userId, ifAbsent: () => userId);
    _deviceContext.update("site", (value) => siteCode, ifAbsent: () => siteCode);
    setTelemetryContext();
  }
}