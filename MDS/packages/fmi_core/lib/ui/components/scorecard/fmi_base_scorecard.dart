import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiBaseScorecard extends StatelessWidget {
  const FmiBaseScorecard({super.key, this.onTap, this.child});

  final Function()? onTap;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeAltSurfaceAltSurface,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusMedium))),
          child: child,
        ));
  }
}
