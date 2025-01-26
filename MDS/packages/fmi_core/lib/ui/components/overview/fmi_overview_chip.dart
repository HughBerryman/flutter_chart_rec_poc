import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiOverviewChip extends StatelessWidget {
  const FmiOverviewChip(
      {super.key, required this.chipLabel, required this.chipValue});

  final String chipLabel;
  final double chipValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium),
        color: Theme.of(context)
            .colorScheme
            .fmiBaseThemeAltSurfaceInverseAltSurface,
      ),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding4),
        child: Wrap(
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              chipLabel,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
            Text(
              '$chipValue',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
            )
          ],
        ),
      ),
    );
  }
}
