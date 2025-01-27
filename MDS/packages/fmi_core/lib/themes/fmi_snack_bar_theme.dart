import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiSnackBarTheme {
  // Developer Note: showSnackBar requires type SnackBar. Unable to wrap the SnackBar in Theme Widget.
  // Alternative snack bar themes do not register the platform darkness and will not adjust to Theme.of(context).colorScheme.xxx.
  // It is necessary in this one instance to reference the tokens directly instead of the Theme.of(context).
  //
  // The code below replicates the theming definitions and the light token name is the same as the light token name.
  // For example backgroundColor: SurfaceOnSurface
  //
  // Do not repeat this pattern. In all other scenarios, colors should be referenced with Theme.of(context).colorScheme.xxx.

  static SnackBarThemeData defaultTheme(BuildContext context) {
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    SnackBarThemeData base = Theme.of(context).snackBarTheme;

    if (brightness == Brightness.light) {
      return base.copyWith(
        backgroundColor: FMIThemeLight.lightThemeSurfaceOnSurface,
        actionTextColor: FMIThemeLight.lightThemeSurfaceSurface,
        contentTextStyle:
            const TextStyle(color: FMIThemeLight.lightThemeSurfaceSurface),
        closeIconColor: FMIThemeLight.lightThemeSurfaceSurface,
      );
    } else {
      return base.copyWith(
        backgroundColor: FMIThemeDark.darkThemeSurfaceOnSurface,
        actionTextColor: FMIThemeDark.darkThemeSurfaceSurface,
        contentTextStyle:
            const TextStyle(color: FMIThemeDark.darkThemeSurfaceSurface),
        closeIconColor: FMIThemeDark.darkThemeSurfaceSurface,
      );
    }
  }

  static SnackBarThemeData success(BuildContext context) {
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    SnackBarThemeData base = Theme.of(context).snackBarTheme;

    if (brightness == Brightness.light) {
      return base.copyWith(
        backgroundColor: FMIThemeLight.lightThemeSuccessSuccess,
        actionTextColor: FMIThemeLight.lightThemeSuccessOnSuccess,
        contentTextStyle:
            const TextStyle(color: FMIThemeLight.lightThemeSuccessOnSuccess),
        closeIconColor: FMIThemeLight.lightThemeSuccessOnSuccess,
      );
    } else {
      return base.copyWith(
        backgroundColor: FMIThemeDark.darkThemeSuccessSuccess,
        actionTextColor: FMIThemeDark.darkThemeSuccessOnSuccess,
        contentTextStyle:
            const TextStyle(color: FMIThemeDark.darkThemeSuccessOnSuccess),
        closeIconColor: FMIThemeDark.darkThemeSuccessOnSuccess,
      );
    }
  }

  static SnackBarThemeData warning(BuildContext context) {
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    SnackBarThemeData base = Theme.of(context).snackBarTheme;

    if (brightness == Brightness.light) {
      return base.copyWith(
        backgroundColor: FMIThemeLight.lightThemeWarningWarning,
        actionTextColor: FMIThemeLight.lightThemeWarningOnWarning,
        contentTextStyle:
            const TextStyle(color: FMIThemeLight.lightThemeWarningOnWarning),
        closeIconColor: FMIThemeLight.lightThemeWarningOnWarning,
      );
    } else {
      return base.copyWith(
        backgroundColor: FMIThemeDark.darkThemeWarningWarning,
        actionTextColor: FMIThemeDark.darkThemeWarningOnWarning,
        contentTextStyle:
            const TextStyle(color: FMIThemeDark.darkThemeWarningOnWarning),
        closeIconColor: FMIThemeDark.darkThemeWarningOnWarning,
      );
    }
  }

  static SnackBarThemeData error(BuildContext context) {
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    SnackBarThemeData base = Theme.of(context).snackBarTheme;

    if (brightness == Brightness.light) {
      return base.copyWith(
        backgroundColor: FMIThemeLight.lightThemeDangerDanger,
        actionTextColor: FMIThemeLight.lightThemeDangerOnDanger,
        contentTextStyle:
            const TextStyle(color: FMIThemeLight.lightThemeDangerOnDanger),
        closeIconColor: FMIThemeLight.lightThemeDangerOnDanger,
      );
    } else {
      return base.copyWith(
        backgroundColor: FMIThemeDark.darkThemeDangerDanger,
        actionTextColor: FMIThemeDark.darkThemeDangerOnDanger,
        contentTextStyle:
            const TextStyle(color: FMIThemeDark.darkThemeDangerOnDanger),
        closeIconColor: FMIThemeDark.darkThemeDangerOnDanger,
      );
    }
  }
}
