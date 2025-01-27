import 'package:flutter/cupertino.dart';

abstract class AuthorizationService {
  Future<bool> isAlreadyLoggedIn();
  Future acquireTokenPopup(List<String> authScopes);
  Future acquireTokenRedirect(List<String> authScopes);
  Future<String?> acquireTokenSilent(List<String> authScopes);
  Future logout(BuildContext context);
  Future initialize();
}