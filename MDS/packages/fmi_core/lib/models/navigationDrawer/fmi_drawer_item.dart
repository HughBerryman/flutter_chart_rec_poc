import 'package:flutter/material.dart';

class FmiDrawerItem {
  final IconData? leading;
  final String label;
  final Widget? trailing;
  final Function(FmiDrawerItem)? onTapped;
  final bool enabled;

  FmiDrawerItem({
    this.leading,
    required this.label,
    this.trailing,
    this.onTapped,
    this.enabled = true,
  });
}
