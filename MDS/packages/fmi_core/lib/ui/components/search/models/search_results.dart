import 'package:flutter/material.dart';
import 'package:fmi_core/ui/components/search/models/search_category.dart';

class SearchResults {
  List<SearchCategory>? categories;
  final Function onNoResultRedirect;
  final String? noResultText;
  final Function? optionalRedirect;
  final String? optionalRedirectText;
  final Widget? optionalRedirectButton;
  final IconData? optionalRedirectIcon;

  SearchResults(
      {this.categories,
      required this.onNoResultRedirect,
      this.noResultText,
      this.optionalRedirect,
      this.optionalRedirectText,
      this.optionalRedirectButton,
      this.optionalRedirectIcon})
      : assert(optionalRedirect == null || optionalRedirectText != null,
            'optionalRedirectText is required if optionalRedirect is not null');
}
