import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiSearchOverlay extends StatelessWidget {
  final Widget child;

  const FmiSearchOverlay({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context)
                  .shadowColor
                  .withOpacity(FMIThemeBase.baseOpacity20),
              spreadRadius: FMIThemeBase.baseElevation20Spread.toDouble(),
              blurRadius: FMIThemeBase.baseElevation50Blur.toDouble(),
            )
          ],
        ),
        child: child);
  }
}
