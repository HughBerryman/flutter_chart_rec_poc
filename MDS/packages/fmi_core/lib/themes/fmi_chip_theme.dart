import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiChipTheme {
  @Deprecated('Use default theme styling or FmiChipTheme.transparent instead')
  static ThemeData inverseAltSurface(BuildContext context) {
    ChipThemeData base = Theme.of(context).chipTheme as ChipThemeData;

    return Theme.of(context).copyWith(
        chipTheme: base.copyWith(
      backgroundColor:
          Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseAltSurface,
    ));
  }

  static ThemeData transparent(BuildContext context) {
    ChipThemeData base = Theme.of(context).chipTheme as ChipThemeData;

    return Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
        chipTheme: base.copyWith(
          backgroundColor: Colors.transparent,
          selectedColor: Theme.of(context).colorScheme.secondaryContainer,
          side: WidgetStateBorderSide.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              if (states.contains(WidgetState.selected)) {
                return BorderSide(
                    color: Theme.of(context)
                        .colorScheme
                        .secondaryContainer
                        .withOpacity(FMIThemeBase.baseOpacity40));
              } else {
                return BorderSide(
                    color: Theme.of(context)
                        .colorScheme
                        .outline
                        .withOpacity(FMIThemeBase.baseOpacity40));
              }
            } else {
              if (states.contains(WidgetState.selected)) {
                return BorderSide(
                    color: Theme.of(context).colorScheme.secondaryContainer);
              } else {
                return BorderSide(color: Theme.of(context).colorScheme.outline);
              }
            }
          }),
        ));
  }

  static ThemeData defaultNoBorder(BuildContext context) {
    ChipThemeData base = Theme.of(context).chipTheme as ChipThemeData;

    return Theme.of(context).copyWith(
        chipTheme: base.copyWith(
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            selectedColor: Theme.of(context).colorScheme.primaryContainer,
            deleteIconColor: Theme.of(context).colorScheme.onSecondaryContainer,
            disabledColor: Theme.of(context)
                .colorScheme
                .secondaryContainer
                .withOpacity(.4),
            iconTheme: IconThemeData(
                size: FMIThemeBase.baseIconSmall,
                color: Theme.of(context).colorScheme.onSecondaryContainer),
            labelStyle: FmiThemeBase.fmiThemeDataBase.textTheme.labelLarge
                ?.apply(
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
            labelPadding: const EdgeInsets.only(
                left: FMIThemeBase.basePadding4,
                right: FMIThemeBase.basePadding4,
                top: FMIThemeBase.basePadding1,
                bottom: FMIThemeBase.basePadding1),
            side: BorderSide.none));
  }

  @Deprecated('Use default theme styling or FmiChipTheme.transparent instead')
  static ThemeData inverseAltSurfaceNoBorder(BuildContext context) {
    ChipThemeData base = Theme.of(context).chipTheme as ChipThemeData;

    return Theme.of(context).copyWith(
        chipTheme: base.copyWith(
            backgroundColor: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceInverseAltSurface,
            side: BorderSide.none));
  }

  @Deprecated('Use default theme styling or FmiChipTheme.transparent instead')
  static ThemeData transparentNoBorder(BuildContext context) {
    ChipThemeData base = Theme.of(context).chipTheme as ChipThemeData;

    return Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
        chipTheme: base.copyWith(
            backgroundColor: Colors.transparent, side: BorderSide.none));
  }
}
