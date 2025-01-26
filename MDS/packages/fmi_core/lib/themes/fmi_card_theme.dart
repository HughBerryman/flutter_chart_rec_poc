import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiCardTheme {
  static ThemeData primary(BuildContext context) {
    CardTheme cardBase = Theme.of(context).cardTheme;
    return Theme.of(context).copyWith(
        cardTheme: cardBase.copyWith(
      color: Theme.of(context).colorScheme.surface,
    ));
  }

  static ThemeData outline(BuildContext context) {
    CardTheme cardBase = Theme.of(context).cardTheme;

    return Theme.of(context).copyWith(
        cardTheme: cardBase.copyWith(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Theme.of(context).colorScheme.outline),
                borderRadius:
                    BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium)),
            shadowColor: Theme.of(context).colorScheme.shadow));
  }

  static ThemeData elevated(BuildContext context) {
    CardTheme cardBase = Theme.of(context).cardTheme;

    return Theme.of(context).copyWith(
        cardTheme: cardBase.copyWith(
            elevation: 2, shadowColor: Theme.of(context).colorScheme.shadow));
  }

  static ThemeData secondary(BuildContext context) {
    CardTheme cardBase = Theme.of(context).cardTheme;

    return Theme.of(context).copyWith(
        cardTheme: cardBase.copyWith(
            color: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceAltSurface));
  }

  static ThemeData filled(BuildContext context) {
    CardTheme cardBase = Theme.of(context).cardTheme;

    return Theme.of(context).copyWith(
        cardTheme: cardBase.copyWith(
            color: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceInverseAltSurface));
  }
}
