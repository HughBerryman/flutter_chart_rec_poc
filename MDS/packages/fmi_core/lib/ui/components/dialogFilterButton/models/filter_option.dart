import 'package:flutter/material.dart';

class FilterOption<T, G> {
  String title;
  T id;
  G value;
  Widget? leading;

  FilterOption(
      {required this.title,
      required this.id,
      required this.value,
      this.leading});
}
