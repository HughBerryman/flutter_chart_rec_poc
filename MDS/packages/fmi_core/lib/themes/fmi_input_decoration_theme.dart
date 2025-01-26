import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiInputDecorationTheme {
  static ThemeData searchTheme(BuildContext context) {
    InputDecorationTheme themeBase = Theme.of(context).inputDecorationTheme;

    return Theme.of(context).copyWith(
        inputDecorationTheme: themeBase.copyWith(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hoverColor: Colors.transparent,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            contentPadding: const EdgeInsets.all(FMIThemeBase.basePadding10)));
  }

  static ThemeData defaultOutlineBorderTheme(BuildContext context) {
    InputDecorationTheme themeBase = Theme.of(context).inputDecorationTheme;
    return Theme.of(context).copyWith(
        inputDecorationTheme: themeBase.copyWith(
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outline)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: FMIThemeBase.baseBorderWidthDefault)),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Theme.of(context)
                  .colorScheme
                  .onSurface
                  .withOpacity(FMIThemeBase.baseOpacity10))),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
            width: FMIThemeBase.baseBorderWidthDefault),
      ),
    ));
  }

  static ThemeData defaultNoBorder(BuildContext context) {
    InputDecorationTheme themeBase = Theme.of(context).inputDecorationTheme;
    return Theme.of(context).copyWith(
        inputDecorationTheme: themeBase.copyWith(
      contentPadding: const EdgeInsets.symmetric(
          vertical: FMIThemeBase.basePadding10,
          horizontal: FMIThemeBase.basePadding6),
      filled: false,
      hintStyle: WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
        Color color;
        if (states.contains(WidgetState.disabled)) {
          color = Theme.of(context)
              .colorScheme
              .onSurfaceVariant
              .withOpacity(FMIThemeBase.baseOpacity40);
        } else {
          color = Theme.of(context).colorScheme.onSurfaceVariant;
        }
        return FmiThemeBase.fmiThemeDataBase.textTheme.titleMedium
            ?.copyWith(color: color) as TextStyle;
      }),
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent)),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent)),
      disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent)),
      errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent)),
      focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent)),
    ));
  }

  static ThemeData defaultNoBorderDense(BuildContext context) {
    InputDecorationTheme themeBase = Theme.of(context).inputDecorationTheme;
    return Theme.of(context).copyWith(
        inputDecorationTheme: themeBase.copyWith(
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
          vertical: FMIThemeBase.basePadding0,
          horizontal: FMIThemeBase.basePadding6),
      filled: false,
      hintStyle: WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
        Color color;
        if (states.contains(WidgetState.disabled)) {
          color = Theme.of(context)
              .colorScheme
              .onSurfaceVariant
              .withOpacity(FMIThemeBase.baseOpacity40);
        } else {
          color = Theme.of(context).colorScheme.onSurfaceVariant;
        }
        return FmiThemeBase.fmiThemeDataBase.textTheme.titleMedium
            ?.copyWith(color: color) as TextStyle;
      }),
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent)),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent)),
      disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent)),
      errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent)),
      focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent)),
    ));
  }

  static ThemeData inverseAltSurface(BuildContext context) {
    InputDecorationTheme themeBase = Theme.of(context).inputDecorationTheme;
    return Theme.of(context).copyWith(
        inputDecorationTheme: themeBase.copyWith(
      floatingLabelStyle:
          WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
        Color color;
        if (states.contains(WidgetState.disabled)) {
          color = Theme.of(context)
              .colorScheme
              .onSurface
              .withOpacity(FMIThemeBase.baseOpacity40);
        } else if (states.contains(WidgetState.error)) {
          color = Theme.of(context).colorScheme.onErrorContainer;
        } else {
          color = Theme.of(context).colorScheme.primary;
        }
        return FmiThemeBase.fmiThemeDataBase.textTheme.labelMedium
            ?.copyWith(color: color) as TextStyle;
      }),
      fillColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return Theme.of(context)
              .colorScheme
              .fmiBaseThemeAltSurfaceInverseAltSurface
              .withOpacity(FMIThemeBase.baseOpacity40);
        } else if (states.contains(WidgetState.error)) {
          return Theme.of(context).colorScheme.errorContainer;
        } else if (states.contains(WidgetState.focused)) {
          return Theme.of(context).colorScheme.surfaceContainerHighest;
        } else if (states.contains(WidgetState.hovered)) {
          return Theme.of(context).colorScheme.surfaceContainerHighest;
        } else {
          return Theme.of(context)
              .colorScheme
              .fmiBaseThemeAltSurfaceInverseAltSurface;
        }
      }),
    ));
  }
}
