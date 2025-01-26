import 'package:azure_ad_authentication/azure_ad_authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:fmi_core/providers/interfaces/internet_connectivity_provider.dart';
import 'package:fmi_core/services/interfaces/preference_service.dart';
import 'package:get_it/get_it.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../interfaces/authorization_service.dart';
import '../interfaces/telemetry_service.dart';

class AuthorizationServiceImpl implements AuthorizationService {
  TelemetryService get _telemetry => GetIt.instance.get<TelemetryService>();
  PreferenceService get _preference => GetIt.instance.get<PreferenceService>();
  AzureAdAuthentication get _azureAdAuth =>
      GetIt.instance.get<AzureAdAuthentication>();
  InternetConnectivityProvider get _internetConnectivityProvider =>
      GetIt.instance.get<InternetConnectivityProvider>();

  @override
  Future<String?> acquireTokenSilent(List<String> authScopes) async {
    final shouldRefresh = await _shouldRefreshToken();

    if (shouldRefresh) {
      await _azureAdAuth.acquireTokenSilent(scopes: authScopes);

      final token = _azureAdAuth.token;
      if (token != null) {
        await _preference.setAccessToken(token.accessToken!);
      } else {
        _telemetry.trackTrace("Access token not found, initialization failed.");
        throw Exception("Access token not found, initialization failed.");
      }
    }
    return await _preference.getAccessToken();
  }

  @override
  Future<bool> isAlreadyLoggedIn() async {
    final needsRefresh = await _shouldRefreshToken();

    return !needsRefresh;
  }

  @override
  Future acquireTokenPopup(List<String> authScopes) async {
    await _azureAdAuth.acquireToken(scopes: authScopes);
    final token = _azureAdAuth.token;
    if (token != null) {
      await _preference.setAccessToken(token.accessToken!);
    } else {
      _telemetry.trackTrace("Access token not found");
      throw Exception("Access token not found");
    }
  }

  @override
  Future acquireTokenRedirect(List<String> authScopes) async {
    await _azureAdAuth.acquireTokenRedirect(scopes: authScopes);
  }

  @override
  Future logout(BuildContext context) async {

    await _preference.clearAccessToken();
    await _azureAdAuth.logout();
  }

  @override
  Future initialize() async {
    await _azureAdAuth.initialize();
  }

  Future<bool> _shouldRefreshToken() async {
    final token = await _preference.getAccessToken();

    if (token != null) {
      if (!_internetConnectivityProvider.connected) {
        return false;
      } else {
        return JwtDecoder.isExpired(token);
      }
    } else {
      return true;
    }
  }
}