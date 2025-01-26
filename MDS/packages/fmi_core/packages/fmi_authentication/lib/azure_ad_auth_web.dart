import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:msal_js/msal_js.dart';

class AzureAdAuthenticationPlugin {
  PublicClientApplication? publicClientApp;
  AccountInfo? _acc;

  static void registerWith(Registrar registrar) {
    final MethodChannel channel = MethodChannel(
        'azure_ad_authentication', const StandardMethodCodec(), registrar);

    final AzureAdAuthenticationPlugin instance = AzureAdAuthenticationPlugin();
    channel.setMethodCallHandler(instance.handleMethodCall);
  }

  Future<dynamic> handleMethodCall(MethodCall call) async {
    debugPrint("Calling: ${call.method}");
    switch (call.method) {
      case "initialize":
        await initialize(call.arguments["clientId"], call.arguments["authority"]);
        break;
      case "acquireToken":
        return await _loginPopup(call.arguments["scopes"]);
      case "acquireTokenRedirect":
        return _acquireTokenRedirect(call.arguments["scopes"]);
      case "acquireTokenSilent":
        return await _silentToken(call.arguments["scopes"]);
      case "logout":
        return await _logoutPopup();
      case "logoutRedirect":
        return _logoutRedirect();
      default:
        throw PlatformException(
            code: 'INVALID_METHOD', message: "The method called is invalid");
    }
  }

  Future initialize(String clientId, String authority) async {
    if (publicClientApp == null) {
      publicClientApp = PublicClientApplication(Configuration()
        ..cache =
        (CacheOptions()..cacheLocation = BrowserCacheLocation.localStorage)
        ..auth = (BrowserAuthOptions()
        // Give MSAL our client ID
          ..clientId = clientId
          ..authority = authority));
    } else {
      final acc = publicClientApp!.getAllAccounts();
      if (acc.isNotEmpty) {
        _acc = acc.first;
        return _acc;
      }
    }

    try {
        final AuthenticationResult? redirectResult = await publicClientApp!.handleRedirectFuture();

        if(redirectResult != null) {          
          publicClientApp!.setActiveAccount(redirectResult.account);
          _acc = redirectResult.account;
        }
    } on AuthException catch(ex) {
      debugPrint('MSAL: ${ex.errorCode}:${ex.errorMessage}');
    } catch (e) {
      debugPrint('ERROR: $e');
    }
  }

  void _acquireTokenRedirect(List<dynamic> scopes) {
    try {
      if (publicClientApp == null) {
        debugPrint("Failure");
      } else {
        publicClientApp!.loginRedirect(RedirectRequest()..scopes = [...scopes]);
      }
    } on AuthException catch (ex) {
      debugPrint('MSAL: ${ex.errorCode}:${ex.errorMessage}');
    } catch (e) {
      debugPrint("ERROR: $e");
    }
  }

  Future<String> _loginPopup(List<dynamic> scopes) async {
    try {
      if (publicClientApp == null) {
        debugPrint("Failure");
      } else {
        final response = await publicClientApp!
            .loginPopup(PopupRequest()..scopes = [...scopes]);

        publicClientApp!.setActiveAccount(response.account);
        _acc = response.account;

        return "{\"accessToken\":\"${response.accessToken}\",\"expiresOn\":\"${response.expiresOn}\",\"idToken\":\"${response.idToken}\"}";
      }
    } on AuthException catch (ex) {
      debugPrint('MSAL: ${ex.errorCode}:${ex.errorMessage}');
    } catch (e) {
      debugPrint("ERROR: $e");
    }

    return "";
  }

  Future<String> _silentToken(List<dynamic> scopes) async {
    try {
      final acc = publicClientApp!.getAllAccounts();

        final response = await publicClientApp!
            .acquireTokenSilent(SilentRequest()
          ..scopes = [...scopes]
          ..account = acc.isEmpty ? _acc : acc.first);

        publicClientApp!.setActiveAccount(response.account);
        return "{\"accessToken\":\"${response
            .accessToken}\",\"expiresOn\":\"${response
            .expiresOn}\",\"idToken\":\"${response.idToken}\"}";

    } on AuthException {
      rethrow;
    }
  }

  /// Logs the current account out using a redirect.
  void _logoutRedirect() {
    publicClientApp!.logoutRedirect();
  }

  /// Logs the current account out using a popup.
  Future<void> _logoutPopup() async {
    await publicClientApp!.logoutPopup();
  }
}
