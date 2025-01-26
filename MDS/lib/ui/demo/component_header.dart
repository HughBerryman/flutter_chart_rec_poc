import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class ComponentHeader extends StatelessWidget {
  const ComponentHeader({Key? key, required this.title, double? padding})
      : super(key: key);

  final String title;
  final double? padding = FMIThemeBase.basePaddingMedium;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: padding!),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }
}
