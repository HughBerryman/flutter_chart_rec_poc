import 'package:flutter/material.dart';

class TaskItem {
  String title;
  String? overline;
  String? description;
  Widget? trailing;
  Widget? leading;

  TaskItem(
      {required this.title,
      this.overline,
      this.description,
      this.trailing,
      this.leading});
}
