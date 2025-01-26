import 'package:flutter/material.dart';
import 'package:fmi_core/ui/components/search/models/models.dart';

class SearchCategory {
  String title;
  Widget? trailing;
  List<SearchOption> options;
  SearchCategory({required this.title, this.trailing, required this.options});
}
