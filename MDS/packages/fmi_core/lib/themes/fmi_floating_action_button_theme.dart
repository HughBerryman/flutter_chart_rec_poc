import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/extensions/extensions.dart';

class FmiFloatingActionButtonTheme {
  static ThemeData primary(BuildContext context) {
    FloatingActionButtonThemeData fabBase =
        Theme.of(context).floatingActionButtonTheme;

    return Theme.of(context)
        .copyWith(floatingActionButtonTheme: fabBase.copyWith());
  }

  static ThemeData primaryContainer(BuildContext context) {
    FloatingActionButtonThemeData fabBase =
        Theme.of(context).floatingActionButtonTheme;

    return Theme.of(context).copyWith(
        floatingActionButtonTheme: fabBase.copyWith(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
    ));
  }

  static ThemeData secondary(BuildContext context) {
    FloatingActionButtonThemeData fabBase =
        Theme.of(context).floatingActionButtonTheme;

    return Theme.of(context).copyWith(
        floatingActionButtonTheme: fabBase.copyWith(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      foregroundColor: Theme.of(context).colorScheme.onSecondary,
    ));
  }

  static ThemeData secondaryContainer(BuildContext context) {
    FloatingActionButtonThemeData fabBase =
        Theme.of(context).floatingActionButtonTheme;

    return Theme.of(context).copyWith(
        floatingActionButtonTheme: fabBase.copyWith(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      foregroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
    ));
  }

  static ThemeData tertiary(BuildContext context) {
    FloatingActionButtonThemeData fabBase =
        Theme.of(context).floatingActionButtonTheme;

    return Theme.of(context).copyWith(
        floatingActionButtonTheme: fabBase.copyWith(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      foregroundColor: Theme.of(context).colorScheme.onTertiary,
    ));
  }

  static ThemeData tertiaryContainer(BuildContext context) {
    FloatingActionButtonThemeData fabBase =
        Theme.of(context).floatingActionButtonTheme;

    return Theme.of(context).copyWith(
        floatingActionButtonTheme: fabBase.copyWith(
      backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
      foregroundColor: Theme.of(context).colorScheme.onTertiaryContainer,
    ));
  }

  static ThemeData hero(BuildContext context) {
    FloatingActionButtonThemeData fabBase =
        Theme.of(context).floatingActionButtonTheme;

    return Theme.of(context).copyWith(
        floatingActionButtonTheme: fabBase.copyWith(
      backgroundColor:
          Theme.of(context).colorScheme.themeIllustrationsOnBackgroundBlue,
      foregroundColor: Theme.of(context).colorScheme.chartGrayscaleGray0,
    ));
  }

  static ThemeData zeroElevation(BuildContext context, ThemeData themeData) {
    FloatingActionButtonThemeData fabBase = themeData.floatingActionButtonTheme;

    return Theme.of(context).copyWith(
        floatingActionButtonTheme: fabBase.copyWith(
            disabledElevation: FMIThemeBase.baseElevationDouble0,
            highlightElevation: FMIThemeBase.baseElevationDouble0,
            focusElevation: FMIThemeBase.baseElevationDouble0,
            hoverElevation: FMIThemeBase.baseElevationDouble0,
            elevation: FMIThemeBase.baseElevationDouble0));
  }

  @Deprecated('Use "primaryContainer" instead')
  static ThemeData elevated(BuildContext context) {
    FloatingActionButtonThemeData fabBase =
        Theme.of(context).floatingActionButtonTheme;

    return Theme.of(context).copyWith(
        floatingActionButtonTheme: fabBase.copyWith(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
            focusColor: Theme.of(context).colorScheme.fmiButtonElevatedFocused,
            hoverColor: Theme.of(context).colorScheme.fmiButtonElevatedHover,
            focusElevation: FMIThemeBase.baseElevationDouble4,
            hoverElevation: FMIThemeBase.baseElevationDouble4,
            elevation: FMIThemeBase.baseElevationDouble3));
  }
}
