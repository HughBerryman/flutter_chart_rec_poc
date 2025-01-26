import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiBottomSheetWrapper extends StatelessWidget {
  final Widget child;

  const FmiBottomSheetWrapper({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    double _height = context.isMedium
        ? FMIThemeBase.baseContainerDimension400
        : FMIThemeBase.baseContainerDimension560;

    double _width = (context.isSmall || context.isXSmall)
        ? MediaQuery.of(context).size.width
        : context.isMedium
            ? context.usableWidth * .75
            : context.usableWidth * .50;

    return Container(
        padding: const EdgeInsets.only(top: FMIThemeBase.basePadding8),
        constraints: BoxConstraints(maxHeight: _height),
        width: _width,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(FMIThemeBase.baseBorderRadiusXLarge),
            topRight: Radius.circular(FMIThemeBase.baseBorderRadiusXLarge),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface
                      .withOpacity(FMIThemeBase.baseOpacity40),
                  borderRadius: BorderRadius.circular(
                      FMIThemeBase.baseBorderRadiusLarge)),
              height: FMIThemeBase.baseBorderWidthThick,
              width: FMIThemeBase.baseContainerDimension30,
            ),
            Flexible(child: child)
          ],
        ));
  }
}
