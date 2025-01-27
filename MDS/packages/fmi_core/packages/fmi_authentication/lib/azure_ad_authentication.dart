import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'exeption.dart';
import 'model/ad_token.dart';

const String _authority =
    'https://login.microsoftonline.com/5f229ce1-773c-46ed-a6fa-974006fae097';
AdToken? _userToken;

class AzureAdAuthentication extends ChangeNotifier {
  AzureAdAuthentication({required this.clientId});

  static const MethodChannel _channel =
      MethodChannel('azure_ad_authentication');
  final String? clientId;

  AdToken? get token => _userToken;

  Future initialize() async {
    var res = <String, dynamic>{'clientId': clientId};
    res["authority"] = _authority;

    try {
      await _channel.invokeMethod('initialize', res);
    } on PlatformException catch (e) {
      throw _convertException(e);
    }
  }

  bool isTokenValid() {
    if(_userToken != null && _userToken!.accessToken != null) {
      DateTime? expDate;
      if(kIsWeb) {
        var parsedDate = _userToken!.expiresOn!.substring(0, _userToken!.expiresOn!.indexOf('-')-4);
        expDate = DateFormat("E MMM dd yyyy hh:mm:ss").parse(parsedDate);
      }
      else if(Platform.isAndroid) {
        var parsedDate = _userToken!.expiresOn!.substring(0, _userToken!.expiresOn!.lastIndexOf(':')+4);
        var parsedYear = _userToken!.expiresOn!.substring(_userToken!.expiresOn!.length-4);
        expDate = DateFormat("E MMM dd hh:mm:ss yyyy").parse(parsedDate + parsedYear);
      }
      else if(Platform.isIOS) {
        var parsedDate = _userToken!.expiresOn!.substring(_userToken!.expiresOn!.indexOf('(')+1, _userToken!.expiresOn!.indexOf('+')-1);
        expDate = DateTime.parse(parsedDate);
      }

      var diff = expDate!.difference(DateTime.now());

      return !diff.isNegative;
    }
    else {
      return false;
    }
  }

  /// Acquire a token interactively for the given [scopes]
  /// return [AdToken] contains user information but token and expiration date
  Future acquireToken({required List<String> scopes}) async {
    var res = <String, dynamic>{'scopes': scopes};
    try {
      final String json = await _channel.invokeMethod('acquireToken', res);
      _userToken = AdToken.fromJson(jsonDecode(json));
    } on PlatformException catch (e) {
      throw _convertException(e);
    }
  }

  Future acquireTokenRedirect({required List<String> scopes}) async {
    var res = <String, dynamic>{'scopes': scopes, 'authority': _authority};
    try {
      if (!kIsWeb && Platform.isAndroid) {
        await _channel.invokeMethod('loadAccounts');
      }
      await _channel.invokeMethod('acquireTokenRedirect', res);
    } on PlatformException catch (e) {
      throw _convertException(e);
    }
  }

  /// Acquire a token silently, with no user interaction, for the given [scopes]
  /// return [AdToken] contains user information but token and expiration date
  Future acquireTokenSilent({required List<String> scopes}) async {
    var res = <String, dynamic>{'scopes': scopes};
    try {
      if (!kIsWeb && Platform.isAndroid) {
        await _channel.invokeMethod('loadAccounts');
      }
      final String json =
          await _channel.invokeMethod('acquireTokenSilent', res);
      _userToken = AdToken.fromJson(jsonDecode(json));
    } on PlatformException catch (e) {
        throw _convertException(e);
    }
  }

  /// clear user input data
  Future logout() async {
    try {
      if (!kIsWeb && Platform.isAndroid) {
        await _channel.invokeMethod('loadAccounts');
      }
      await _channel.invokeMethod('logout', <String, dynamic>{});
      _userToken = null;
    } on PlatformException catch (e) {
      debugPrint(e.message);
      throw _convertException(e);
    }
  }

  MsalException _convertException(PlatformException e) {
    switch (e.code) {
      case "CANCELLED":
        return MsalUserCancelledException();
      case "NO_SCOPE":
        return MsalInvalidScopeException();
      case "NO_ACCOUNT":
        return MsalNoAccountException();
      case "NO_CLIENTID":
        return MsalInvalidConfigurationException("Client Id not set");
      case "INVALID_AUTHORITY":
        return MsalInvalidConfigurationException("Invalid authroity set.");
      case "CONFIG_ERROR":
        return MsalInvalidConfigurationException(
            "Invalid configuration: ${e.message}");
      case "NO_CLIENT":
        return MsalUninitializedException();
      case "CHANGED_CLIENTID":
        return MsalChangedClientIdException();
      case "INIT_ERROR":
        return MsalInitializationException();
      case "AUTH_ERROR":
      default:
        debugPrint("AUTH_ERROR: ${e.message}");
        return MsalException("Authentication error");
    }
  }
}
