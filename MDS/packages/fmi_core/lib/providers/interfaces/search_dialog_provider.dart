import 'package:flutter/material.dart';
import 'package:fmi_core/ui/components/search/models/search_category.dart';

abstract class SearchDialogProvider extends ChangeNotifier {
  List<SearchCategory>? get categories;
  Function()? get optionalRedirect;
  String? get optionalRedirectText;
  IconData? get optionalRedirectIcon;
  void setCategories(List<SearchCategory>? categories);
  void setOptionalRedirect({Function()? optionalRedirect});
  void setOptionalRedirectText({String? optionalRedirectText});
  void setOptionalRedirectIcon({IconData? optionalRedirectIcon});
}
