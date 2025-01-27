import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:poc/models/models.dart';
import 'package:poc/routing/nested_app_router.dart';

class HomeViewModel extends ChangeNotifier {
  final AppStateManager appStateManager = GetIt.instance.get<AppStateManager>();

  late NestedAppRouter appRouter;
  List<CategorySourceModel>? categories;
  bool isBusy = true;

  void initialize() async {
    appRouter = NestedAppRouter(appStateManager: appStateManager);
    await appStateManager.getNavigationMenu();
    categories = appStateManager.categories;
    appStateManager.setNewRoute(appStateManager.initialUrl);
    isBusy = false;
    notifyListeners();
  }

  void pageTapped(PageSourceModel selectedPage) {
    appStateManager.pageTapped(selectedPage);
    notifyListeners();
  }
}
