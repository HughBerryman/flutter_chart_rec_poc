import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiListTileTheme {
  static ThemeData success(BuildContext context) {
    ListTileThemeData listTileBase = Theme.of(context).listTileTheme;

    return Theme.of(context).copyWith(
        listTileTheme: listTileBase.copyWith(
            tileColor: Theme.of(context)
                .colorScheme
                .fmiBaseThemeSuccessSuccessContainer,
            iconColor: Theme.of(context).colorScheme.onSurface));
  }

  static ThemeData danger(BuildContext context) {
    ListTileThemeData listTileBase = Theme.of(context).listTileTheme;

    return Theme.of(context).copyWith(
        listTileTheme: listTileBase.copyWith(
      tileColor:
          Theme.of(context).colorScheme.fmiBaseThemeDangerDangerContainer,
      iconColor: Theme.of(context).colorScheme.onSurface,
    ));
  }

  static ThemeData altSurface(BuildContext context) {
    ListTileThemeData listTileBase = Theme.of(context).listTileTheme;

    return Theme.of(context).copyWith(
        listTileTheme: listTileBase.copyWith(
            tileColor:
                Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceAltSurface,
            iconColor: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceOnAltSurface,
            textColor: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceOnAltSurface));
  }

  static ThemeData transparent(BuildContext context) {
    ListTileThemeData listTileBase = Theme.of(context).listTileTheme;

    return Theme.of(context).copyWith(
        listTileTheme: listTileBase.copyWith(tileColor: Colors.transparent));
  }
}
