import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class ChipBackgroundContainer extends StatelessWidget {
  final Widget child;
  const ChipBackgroundContainer({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context)
            .colorScheme
            .fmiBaseThemeAltSurfaceInverseAltSurface,
        child: Padding(
            padding: const EdgeInsets.all(FMIThemeBase.basePadding4),
            child: child));
  }
}
