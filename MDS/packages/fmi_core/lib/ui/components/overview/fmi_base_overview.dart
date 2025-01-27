import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiBaseOverview extends StatelessWidget {
  const FmiBaseOverview({super.key, this.onTap, this.child});

  final Function()? onTap;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          child: child,
        ));
  }
}
