import 'package:flutter/material.dart';

class SearchOption<T, G> {
  String title;
  T? id;
  G value;
  List<String>? tags;
  String? subtitle;
  Widget? leading;
  Function()? onTap;

  SearchOption(
      {required this.title,
      this.id,
      required this.value,
      this.tags,
      this.subtitle,
      this.leading,
      this.onTap});
}
