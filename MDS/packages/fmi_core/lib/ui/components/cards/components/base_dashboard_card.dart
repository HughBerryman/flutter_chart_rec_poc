import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class BaseDashboardCard extends StatelessWidget {
  final Widget child;

  const BaseDashboardCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: FmiCardTheme.primary(context),
        child: Card(
            surfaceTintColor: Theme.of(context).colorScheme.surface,
            child: child));
  }
}
