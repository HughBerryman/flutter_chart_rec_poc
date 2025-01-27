import 'package:flutter/material.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:poc/routing/app_link_location_keys.dart';
import 'package:poc/ui/pages/about_view.dart';
import 'package:poc/ui/pages/foundation_view.dart';
import 'package:poc/ui/pages/component_view.dart';
import 'package:poc/ui/pages/process_view.dart';
import 'package:poc/ui/pages/documentation_view.dart';
import 'package:poc/ui/pages/demo_view.dart';
import 'package:poc/enums/assigned_view.dart';
import 'package:poc/ui/pages/demo_detailed_view.dart';
import 'package:poc/ui/pages/changelog_view.dart';
import 'app_link.dart';

class CustomTransitionDelegate extends TransitionDelegate {
  @override
  Iterable<RouteTransitionRecord> resolve(
      {required List<RouteTransitionRecord> newPageRouteHistory,
      required Map<RouteTransitionRecord?, RouteTransitionRecord>
          locationToExitingPageRoute,
      required Map<RouteTransitionRecord?, List<RouteTransitionRecord>>
          pageRouteToPagelessRoutes}) {
    final List<RouteTransitionRecord> results = <RouteTransitionRecord>[];

    for (final RouteTransitionRecord pageRoute in newPageRouteHistory) {
      if (pageRoute.isWaitingForEnteringDecision) {
        pageRoute.markForAdd();
      }
      results.add(pageRoute);
    }
    for (final RouteTransitionRecord exitingPageRoute
        in locationToExitingPageRoute.values) {
      if (exitingPageRoute.isWaitingForExitingDecision) {
        exitingPageRoute.markForRemove();
        final List<RouteTransitionRecord>? pagelessRoutes =
            pageRouteToPagelessRoutes[exitingPageRoute];
        if (pagelessRoutes != null) {
          for (final RouteTransitionRecord pagelessRoute in pagelessRoutes) {
            pagelessRoute.markForRemove();
          }
        }
      }
      results.add(exitingPageRoute);
    }
    return results;
  }
}

class NestedAppRouter extends RouterDelegate<AppLink>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final AppStateManager appStateManager;

  NestedAppRouter({required this.appStateManager})
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
        key: navigatorKey,
        onPopPage: _handlePopPage,
        transitionDelegate: CustomTransitionDelegate(),
        pages: [
          if (appStateManager.selectedView == AssignedView.aboutView)
            AboutView.page()
          else if (appStateManager.selectedView == AssignedView.foundationView)
            FoundationView.page()
          else if (appStateManager.selectedView == AssignedView.componentView)
            ComponentView.page()
          else if (appStateManager.selectedView == AssignedView.processView)
            ProcessView.page()
          else if (appStateManager.selectedView ==
              AssignedView.documentationView)
            DocumentationView.page()
          else if (appStateManager.selectedView == AssignedView.foundationView)
            FoundationView.page()
          else if (appStateManager.selectedView == AssignedView.demoView)
            DemoView.page()
          else if (appStateManager.selectedView == AssignedView.demoChartView ||
              appStateManager.selectedView == AssignedView.demoFlutterView ||
              appStateManager.selectedView == AssignedView.demoColorView ||
              appStateManager.selectedView ==
                  AssignedView.demoIllustrationView ||
              appStateManager.selectedView == AssignedView.demoDataGridView ||
              appStateManager.selectedView == AssignedView.demoScaffoldView)
            DemoDetailedView.page()
          else
            ChangelogView.page()
        ]);
  }

  bool _handlePopPage(Route<dynamic> route, result) {
    if (!route.didPop(result)) {
      return false;
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
    switch (newLink.location) {
      case AppLinkLocationKeys.foundations:
        // DO NOTHING AT THIS TIME
        break;
      default:
        break;
    }
  }
}
