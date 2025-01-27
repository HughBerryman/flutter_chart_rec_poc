import 'package:flutter/material.dart';
import 'package:fmi_core/enums/fab_theme_enum.dart';
import 'package:fmi_core/themes/fmi_floating_action_button_theme.dart';

mixin NavigationMixin {
  ThemeData getFabThemeData(BuildContext context, FabThemeEnum? fabTheme) {
    ThemeData theme = Theme.of(context);
    switch (fabTheme) {
      case FabThemeEnum.primary:
        theme = FmiFloatingActionButtonTheme.primary(context);
        break;
      case FabThemeEnum.primaryContainer:
        theme = FmiFloatingActionButtonTheme.primaryContainer(context);
        break;
      case FabThemeEnum.secondary:
        theme = FmiFloatingActionButtonTheme.secondary(context);
        break;
      case FabThemeEnum.secondaryContainer:
        theme = FmiFloatingActionButtonTheme.secondaryContainer(context);
        break;
      case FabThemeEnum.tertiary:
        theme = FmiFloatingActionButtonTheme.tertiary(context);
        break;
      case FabThemeEnum.tertiaryContainer:
        theme = FmiFloatingActionButtonTheme.tertiaryContainer(context);
        break;
      case FabThemeEnum.hero:
        theme = FmiFloatingActionButtonTheme.hero(context);
        break;
      default:
        theme = FmiFloatingActionButtonTheme.primary(context);
        break;
    }

    return FmiFloatingActionButtonTheme.zeroElevation(context, theme);
  }
}
