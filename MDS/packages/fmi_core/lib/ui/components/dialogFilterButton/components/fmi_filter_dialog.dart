import 'package:flutter/material.dart';

class FmiFilterDialog extends StatelessWidget {
  final List<Widget> children;

  const FmiFilterDialog({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      children: children,
    );
  }
}
