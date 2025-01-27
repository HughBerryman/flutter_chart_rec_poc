import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/extensions/localizations.dart';
import 'package:fmi_core/providers/interfaces/internet_connectivity_provider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import "package:universal_html/html.dart" as html;

class InternetConnectivityProviderImpl extends ChangeNotifier
    implements InternetConnectivityProvider {
  bool _connected = true;
  GlobalKey<ScaffoldMessengerState>? _applicationScaffoldMessengerState;

  StreamSubscription<ConnectivityResult>? _connectivityStreamSubscription;

  @override
  bool get connected => _connected;

  @override
  Future initialize() async {
    _connectivityStreamSubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      bool previousConnectedVal = _connected;
      _connected = await hasInternet();

      notifyListeners();

      if (_applicationScaffoldMessengerState != null &&
          _applicationScaffoldMessengerState!.currentState != null &&
          previousConnectedVal != _connected) {
        if (!_connected) {
          _applicationScaffoldMessengerState!.currentState!
              .showSnackBar(SnackBar(
            content: Text(
                coreLocalize(_applicationScaffoldMessengerState!.currentContext)
                    .youAreOffline),
            action: SnackBarAction(
              label: coreLocalize(
                      _applicationScaffoldMessengerState!.currentContext)
                  .dismiss,
              onPressed: () {
                _applicationScaffoldMessengerState!.currentState!
                    .hideCurrentSnackBar();
              },
            ),
          ));
        } else {
          _applicationScaffoldMessengerState!.currentState!
              .showSnackBar(SnackBar(
            content: Text(
                coreLocalize(_applicationScaffoldMessengerState!.currentContext)
                    .youAreBackOnline),
            action: SnackBarAction(
              label: coreLocalize(
                      _applicationScaffoldMessengerState!.currentContext)
                  .dismiss,
              onPressed: () {
                _applicationScaffoldMessengerState!.currentState!
                    .hideCurrentSnackBar();
              },
            ),
          ));
        }
      }
    });

    bool internet = await hasInternet();

    _connected = internet;
    notifyListeners();
  }

  @override
  enableToastMessaging(
      GlobalKey<ScaffoldMessengerState> applicationScaffoldMessengerState) {
    _applicationScaffoldMessengerState = applicationScaffoldMessengerState;
  }

  @override
  void dispose() {
    super.dispose();

    _connectivityStreamSubscription?.cancel();
  }

  @override
  Future<bool> hasInternet() async {
    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();

    bool hasInternet;

    if (kIsWeb) {
      // ConnectivityResult is not reliable on Web until the following bug is resolved.
      // Must use native web to determine if online.
      // https://github.com/fluttercommunity/plus_plugins/issues/639
      var connection = html.window.navigator.onLine;

      if (connection != null) {
        hasInternet = connection;
      } else {
        hasInternet = false;
      }
    } else {
      if (connectivityResult != ConnectivityResult.none) {
        hasInternet = true;
      } else {
        hasInternet = false;
      }
    }

    return hasInternet;
  }
}
