import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fmi_core/extensions/extensions.dart';

import '../designTokens/designTokens.dart';

class FmiAppBarTheme {
  static ThemeData surface(BuildContext context) {
    AppBarTheme base = Theme.of(context).appBarTheme;

    return Theme.of(context).copyWith(
        appBarTheme: base.copyWith(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).colorScheme.surface,
          statusBarIconBrightness:
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? Brightness.dark
                  : Brightness.light,
          statusBarBrightness:
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? Brightness.light
                  : Brightness.dark),
      titleTextStyle: Theme.of(context)
          .textTheme
          .chartTitle
          .copyWith(color: Theme.of(context).colorScheme.onSurface),
      backgroundColor: Theme.of(context).colorScheme.surface,
      iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onSurface,
          size: FMIThemeBase.baseIconSmall),
      actionsIconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onSurface,
          size: FMIThemeBase.baseIconSmall),
    ));
  }

  static ThemeData inverseAltSurface(BuildContext context) {
    AppBarTheme base = Theme.of(context).appBarTheme;

    return Theme.of(context).copyWith(
        appBarTheme: base.copyWith(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context)
              .colorScheme
              .fmiBaseThemeAltSurfaceInverseAltSurface,
          statusBarIconBrightness:
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? Brightness.dark
                  : Brightness.light,
          statusBarBrightness:
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? Brightness.light
                  : Brightness.dark),
      titleTextStyle: Theme.of(context).textTheme.chartTitle.copyWith(
          color: Theme.of(context)
              .colorScheme
              .fmiBaseThemeAltSurfaceInverseOnAltSurface),
      backgroundColor:
          Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseAltSurface,
      iconTheme: IconThemeData(
          color: Theme.of(context)
              .colorScheme
              .fmiBaseThemeAltSurfaceInverseOnAltSurface,
          size: FMIThemeBase.baseIconSmall),
      actionsIconTheme: IconThemeData(
          color: Theme.of(context)
              .colorScheme
              .fmiBaseThemeAltSurfaceInverseOnAltSurface,
          size: FMIThemeBase.baseIconSmall),
    ));
  }

  static ThemeData forceDarkMode(BuildContext context) {
    AppBarTheme base = Theme.of(context).appBarTheme;

    return Theme.of(context).copyWith(
        appBarTheme: base.copyWith(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: FMIThemeDark.darkThemeSurfaceSurface,
          statusBarIconBrightness:
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? Brightness.light
                  : Brightness.light,
          statusBarBrightness:
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? Brightness.dark
                  : Brightness.dark),
      titleTextStyle: Theme.of(context)
          .textTheme
          .chartTitle
          .copyWith(color: Theme.of(context).colorScheme.chartGrayscaleGray0),
      backgroundColor: FMIThemeDark.darkThemeSurfaceSurface,
      iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.chartGrayscaleGray0,
          size: FMIThemeBase.baseIconSmall),
      actionsIconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.chartGrayscaleGray0,
          size: FMIThemeBase.baseIconSmall),
    ));
  }
}
