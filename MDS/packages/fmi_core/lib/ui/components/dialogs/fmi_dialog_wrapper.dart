import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiDialogWrapper extends StatelessWidget {
  final Widget child;
  const FmiDialogWrapper({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    double _height = context.isMedium
        ? FMIThemeBase.baseContainerDimension400
        : FMIThemeBase.baseContainerDimension560;

    double _width = (context.isSmall || context.isXSmall)
        ? context.usableWidth
        : context.usableWidth * .5;

    return Dialog(
      insetPadding: const EdgeInsets.only(
        left: FMIThemeBase.basePadding0,
        top: FMIThemeBase.basePadding15,
        right: FMIThemeBase.basePadding0,
        bottom: FMIThemeBase.basePadding15,
      ),
      clipBehavior: Clip.antiAlias,
      backgroundColor: Theme.of(context).colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge)),
      child: Container(
          width: _width,
          constraints: BoxConstraints(maxHeight: _height),
          child: child),
    );
  }
}
