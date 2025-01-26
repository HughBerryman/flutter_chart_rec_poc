import 'package:flutter/material.dart';

class AppBarActionItem{
  IconData icon;
  String text;
  Function action;
  bool isOverflow;

  AppBarActionItem({
    required this.icon,
    required this.text,
    required this.action,
    required this.isOverflow
  });
}