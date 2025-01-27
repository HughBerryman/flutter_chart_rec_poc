import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poc/enums/enums.dart';
import 'package:poc/models/navigation/models.dart';
import 'package:poc/routing/app_link_location_keys.dart';
import 'package:poc/services/interfaces/navigation_service.dart';

class AppStateManager extends ChangeNotifier {
  List<CategorySourceModel> _categories = [];
  List<CategorySourceModel> get categories => List.unmodifiable(_categories);

  set categories(List<CategorySourceModel> newCategories) {
    _categories = newCategories;
    notifyListeners();
  }

  PageSourceModel? _selectedPage;
  PageSourceModel? get selectedPage => _selectedPage;

  AssignedView _selectedView = AssignedView.landingView;
  AssignedView get selectedView => _selectedView;

  String _selectedRootLocation = AppLinkLocationKeys.landingView;
  String get selectedRootLocation => _selectedRootLocation;

  String _initialUrl = '/';
  String get initialUrl => _initialUrl;

  bool _isInitialUrlSet = false;
  bool get isInitialUrlSet => _isInitialUrlSet;
  final NavigationService _navigationService =
      GetIt.instance.get<NavigationService>();

  Future<void> getNavigationMenu() async {
    _categories = await _navigationService.getNavigationMenu();
    notifyListeners();
  }

  int getCategoryIndex(PageSourceModel? page) {
    if (page == null) {
      return 0;
    }
    var category = categories.firstWhere((category) =>
        category.pages.any((pageItem) => pageItem.route == page.route));
    return categories.indexOf(category);
  }

  int getPageIndex(PageSourceModel? page) {
    if (page == null) {
      return 0;
    }
    var category = categories.firstWhere((category) =>
        category.pages.any((pageItem) => pageItem.route == page.route));
    return category.pages.indexOf(page);
  }

  void pageTapped(PageSourceModel? page) {
    if (page == null) {
      _selectedPage = null;
      _selectedRootLocation = AppLinkLocationKeys.landingView;
      _selectedView = AssignedView.landingView;
    } else {
      _selectedPage = page;
      _selectedView = page.view;
      _selectedRootLocation = page.route!;
    }
    notifyListeners();
  }

  void setNewRoute(String newLocation) {
    if (!isInitialUrlSet) {
      _initialUrl = newLocation;
      _isInitialUrlSet = true;
    }

    var doesExist = categories.any(
        (category) => category.pages.any((page) => page.route == newLocation));

    if (doesExist) {
      var category = categories.firstWhere((category) =>
          category.pages.any((page) => page.route == newLocation));
      _selectedPage =
          category.pages.firstWhere((page) => page.route == newLocation);
      if (_selectedPage == null) {
        _selectedRootLocation = AppLinkLocationKeys.landingView;
        _selectedView = AssignedView.landingView;
      } else {
        _selectedRootLocation = _selectedPage!.route.toString();
        _selectedView = _selectedPage!.view;
      }
    } else {
      if (categories.isNotEmpty) {
        _selectedPage = categories.first.pages.first;
      } else {
        _selectedPage = null;
      }
      _selectedRootLocation = AppLinkLocationKeys.landingView;
      _selectedView = AssignedView.landingView;
    }

    notifyListeners();
  }

  CategorySourceModel getCategorySource(String categoryName) {
    late CategorySourceModel categorySource;
    switch (categoryName) {
      case 'changelog':
        categoryName = 'What\'s New';
        break;
      case 'about':
        categoryName = 'About';
        break;
      case 'styles':
        categoryName = 'Styles';
        break;
      case 'components':
        categoryName = 'FMI Components';
        break;
      case 'processes':
        categoryName = 'Processes';
        break;
      case 'demos':
        categoryName = 'Demos';
        break;
      default:
        categoryName = 'What\'s New';
    }

    try {
      for (var category in categories) {
        if (category.name.toLowerCase() == categoryName.toLowerCase()) {
          categorySource = category;
          return categorySource;
        }
      }
    } catch (e) {
      throw Exception('Category Source not found $e');
    }
    return categorySource;
  }
}
