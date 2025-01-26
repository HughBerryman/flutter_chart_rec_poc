import 'package:flutter/material.dart';
import 'package:fmi_core/providers/interfaces/interfaces.dart';
import 'package:fmi_core/ui/components/search/models/search_category.dart';

class SearchDialogProviderImpl extends ChangeNotifier
    implements SearchDialogProvider {
  List<SearchCategory> _categories = [];
  Function()? _optionalRedirect;
  String _optionalRedirectText = '';
  IconData? _optionalRedirectIcon;

  @override
  List<SearchCategory>? get categories => _categories;

  @override
  Function()? get optionalRedirect => _optionalRedirect;

  @override
  String? get optionalRedirectText => _optionalRedirectText;

  @override
  IconData? get optionalRedirectIcon => _optionalRedirectIcon;

  @override
  void setCategories(List<SearchCategory>? newCategories) {
    _categories = newCategories ?? [];
  }

  @override
  void setOptionalRedirect({Function()? optionalRedirect}) {
    _optionalRedirect = optionalRedirect;
    notifyListeners();
  }

  @override
  void setOptionalRedirectText({String? optionalRedirectText}) {
    _optionalRedirectText = optionalRedirectText ?? '';
    notifyListeners();
  }

  @override
  setOptionalRedirectIcon({IconData? optionalRedirectIcon}) {
    _optionalRedirectIcon = optionalRedirectIcon;
    notifyListeners();
  }
}
