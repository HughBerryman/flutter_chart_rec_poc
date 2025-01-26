import 'package:flutter/material.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:poc/routing/app_link_location_keys.dart';
import 'package:poc/ui/pages/home_view.dart';
import 'app_link.dart';

class AppRouter extends RouterDelegate<AppLink>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final AppStateManager appStateManager;

  AppRouter({required this.appStateManager})
      : navigatorKey = GlobalKey<NavigatorState>() {
    appStateManager.addListener(notifyListeners);
  }

  @override
  void dispose() {
    appStateManager.removeListener(notifyListeners);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey, onPopPage: _handlePopPage, pages: [HomeView.page()]);
  }

  bool _handlePopPage(Route<dynamic> route, result) {
    if (!route.didPop(result)) {
      return false;
    }

    if (route.settings.name == AppLinkLocationKeys.landingView) {
      // DO NOTHING AT THIS TIME
    }

    return true;
  }

  @override
  AppLink get currentConfiguration => getCurrentPath();

  /// Upon app state updates that affect url, here we will
  /// need to provide a corresponding AppLink object
  /// that the RouteInformationParser utilizes
  AppLink getCurrentPath() {
    return AppLink(location: appStateManager.selectedRootLocation);
  }

  /// Upon a URL update by the browser, this method will be called
  /// and provide us with an AppLink object to inspect
  /// Utilizing the AppLink we can adjust application
  /// State if needed
  @override
  Future<void> setNewRoutePath(AppLink newLink) async {
    if (newLink.location != null) {
      appStateManager.setNewRoute(newLink.location!.toString());
    } else {
      appStateManager.setNewRoute(AppLinkLocationKeys.landingView);
    }
  }
}
