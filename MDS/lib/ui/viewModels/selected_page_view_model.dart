import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:poc/models/models.dart';

class SelectedPageViewModel extends ChangeNotifier {
  final AppStateManager appStateManager = GetIt.instance.get<AppStateManager>();

  PageSourceModel? selectedPage;

  void initialize() async {
    _refreshPageUpdated();
    appStateManager.addListener(_refreshPageUpdated);
  }

  @override
  void dispose() {
    appStateManager.removeListener(_refreshPageUpdated);

    super.dispose();
  }

  void _refreshPageUpdated() async {
    selectedPage = appStateManager.selectedPage;
    notifyListeners();
  }
}
