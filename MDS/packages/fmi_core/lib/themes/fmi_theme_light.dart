import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/extensions/extensions.dart';
import 'package:fmi_core/helpers/button_style_helper.dart';

import 'fmi_theme_base.dart';

class FmiThemeLight {
  FmiThemeLight._();

  static ThemeData fmiThemeDataLight = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      snackBarTheme: fmiSnackBarThemeLight,
      primaryColorLight:
          fmiColorSchemeLight.primary.withOpacity(FMIThemeBase.baseOpacity10),
      primaryColorDark:
          fmiColorSchemeLight.primary.withOpacity(FMIThemeBase.baseOpacity70),
      cardColor: fmiColorSchemeLight.surface,
      canvasColor: fmiColorSchemeLight.surface,
      scaffoldBackgroundColor: fmiColorSchemeLight.surface,
      disabledColor:
          fmiColorSchemeLight.onSurface.withOpacity(FMIThemeBase.baseOpacity40),
      colorScheme: fmiColorSchemeLight,
      progressIndicatorTheme: fmiProgressIndicatorThemeDataLight,
      dialogTheme: fmiDialogThemeLight,
      chipTheme: fmiChipThemeDataLight,
      listTileTheme: fmiListTileThemeDataLight,
      floatingActionButtonTheme: fmiFloatingActionButtonThemeDataLight,
      cardTheme: fmiCardThemeLight,
      checkboxTheme: fmiCheckboxThemeDataLight,
      radioTheme: fmiRadioThemeDataLight,
      switchTheme: fmiSwitchThemeDataLight,
      inputDecorationTheme: fmiInputDecorationThemeLight,
      bottomNavigationBarTheme: fmiBottomNavigationBarThemeLight,
      navigationRailTheme: fmiNavigationRailThemeLight,
      navigationBarTheme: fmiNavigationBarThemeLight,
      appBarTheme: fmiAppBarThemeLight,
      tabBarTheme: fmiTabBarThemeLight,
      toggleButtonsTheme: fmiToggleButtonsThemeLight,
      timePickerTheme: fmiTimePickerThemeLight,
      fontFamily: FMIThemeBase.baseFontFamiliesSfProText,
      dividerTheme: fmiDividerThemeLight,
      elevatedButtonTheme: fmiElevatedButtonThemeDataLight,
      filledButtonTheme: fmiFilledButtonThemeDataLight,
      outlinedButtonTheme: fmiOutlinedButtonThemeDataLight,
      textButtonTheme: fmiTextButtonThemeDataLight,
      segmentedButtonTheme: fmiSegmentedButtonsThemeLight,
      textTheme: FmiThemeBase.fmiThemeDataBase.textTheme.apply(
        bodyColor: fmiColorSchemeLight.onSurface,
        displayColor: fmiColorSchemeLight.onSurface,
      ));

  static ColorScheme fmiColorSchemeLight = const ColorScheme(
    brightness: Brightness.light,
    primary: FMIThemeLight.lightThemePrimaryPrimary,
    onPrimary: FMIThemeLight.lightThemePrimaryOnPrimary,
    primaryContainer: FMIThemeLight.lightThemePrimaryPrimaryContainer,
    onPrimaryContainer: FMIThemeLight.lightThemePrimaryOnPrimaryContainer,
    secondary: FMIThemeLight.lightThemeSecondarySecondary,
    onSecondary: FMIThemeLight.lightThemeSecondaryOnSecondary,
    secondaryContainer: FMIThemeLight.lightThemeSecondarySecondaryContainer,
    onSecondaryContainer: FMIThemeLight.lightThemeSecondaryOnSecondaryContainer,
    tertiary: FMIThemeLight.lightThemeTertiaryTertiary,
    onTertiary: FMIThemeLight.lightThemeTertiaryOnTertiary,
    tertiaryContainer: FMIThemeLight.lightThemeTertiaryTertiaryContainer,
    onTertiaryContainer: FMIThemeLight.lightThemeTertiaryOnTertiaryContainer,
    error: FMIThemeLight.lightThemeDangerDanger,
    onError: FMIThemeLight.lightThemeDangerOnDanger,
    errorContainer: FMIThemeLight.lightThemeDangerDangerContainer,
    onErrorContainer: FMIThemeLight.lightThemeDangerOnDangerContainer,
    surface: FMIThemeLight.lightThemeSurfaceSurface,
    onSurface: FMIThemeLight.lightThemeSurfaceOnSurface,
    surfaceContainerHighest: FMIThemeLight.lightThemeSurfaceSurfaceVariant,
    background: FMIThemeLight.lightThemeSurfaceSurface,
    onBackground: FMIThemeLight.lightThemeSurfaceOnSurface,
    surfaceVariant: FMIThemeLight.lightThemeSurfaceSurfaceVariant,
    onSurfaceVariant: FMIThemeLight.lightThemeSurfaceOnSurfaceVariant,
    outline: FMIThemeLight.lightThemeOutlineOutline,
    shadow: FMIThemeLight.lightThemeShadowShadow,
    inverseSurface: FMIThemeLight.lightThemeSurfaceInverseSurface,
    onInverseSurface: FMIThemeLight.lightThemeSurfaceOnInverseSurface,
    inversePrimary: FMIThemeLight.lightThemePrimaryInversePrimary,
  );

  static DividerThemeData fmiDividerThemeLight = const DividerThemeData(
    color: FMIThemeLight.lightPaletteNeutralNeutral90,
  );

  static DialogTheme fmiDialogThemeLight = DialogTheme(
    elevation: FMIThemeBase.baseElevationDouble3,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
    backgroundColor: fmiColorSchemeLight.secondaryContainer,
    titleTextStyle: FmiThemeBase.fmiThemeDataBase.textTheme.headlineMedium
        ?.apply(color: fmiColorSchemeLight.onSecondaryContainer),
    contentTextStyle: FmiThemeBase.fmiThemeDataBase.textTheme.bodyLarge
        ?.apply(color: fmiColorSchemeLight.onSecondaryContainer),
  );

  static ProgressIndicatorThemeData fmiProgressIndicatorThemeDataLight =
      ProgressIndicatorThemeData(
          linearMinHeight: 4,
          color: fmiColorSchemeLight.inversePrimary,
          linearTrackColor: fmiColorSchemeLight.surfaceContainerHighest);

  static ChipThemeData fmiChipThemeDataLight = ChipThemeData(
    backgroundColor: fmiColorSchemeLight.surface,
    selectedColor: fmiColorSchemeLight.fmiBaseThemeAltSurfaceInverseAltSurface,
    deleteIconColor: fmiColorSchemeLight.onSurface,
    iconTheme: IconThemeData(
        size: FMIThemeBase.baseIconSmall, color: fmiColorSchemeLight.onSurface),
    labelStyle: FmiThemeBase.fmiThemeDataBase.textTheme.labelLarge
        ?.apply(color: fmiColorSchemeLight.onSurface),
    labelPadding: const EdgeInsets.only(
        left: FMIThemeBase.basePadding4,
        right: FMIThemeBase.basePadding4,
        top: FMIThemeBase.basePadding1,
        bottom: FMIThemeBase.basePadding0),
    padding: const EdgeInsets.only(
      left: FMIThemeBase.basePadding4,
      right: FMIThemeBase.basePadding4,
      top: FMIThemeBase.basePadding3,
      bottom: FMIThemeBase.basePadding3,
    ),
    side: WidgetStateBorderSide.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        if (states.contains(WidgetState.selected)) {
          return BorderSide(
              color: fmiColorSchemeLight.fmiBaseThemeAltSurfaceInverseAltSurface
                  .withOpacity(FMIThemeBase.baseOpacity40));
        } else {
          return BorderSide(
              color: fmiColorSchemeLight.fmiBaseThemeSecondaryInverseSecondary
                  .withOpacity(FMIThemeBase.baseOpacity40));
        }
      } else {
        if (states.contains(WidgetState.selected)) {
          return BorderSide(
              color:
                  fmiColorSchemeLight.fmiBaseThemeAltSurfaceInverseAltSurface);
        } else {
          return BorderSide(
              color: fmiColorSchemeLight.fmiBaseThemeSecondaryInverseSecondary);
        }
      }
    }),
    shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium)),
    shadowColor: fmiColorSchemeLight.shadow,
    selectedShadowColor: fmiColorSchemeLight.shadow,
    showCheckmark: false,
  );

  static ListTileThemeData fmiListTileThemeDataLight = ListTileThemeData(
      tileColor: fmiColorSchemeLight.surface,
      iconColor: fmiColorSchemeLight.onSurface,
      textColor: fmiColorSchemeLight.onSurface);

  static FloatingActionButtonThemeData fmiFloatingActionButtonThemeDataLight =
      FloatingActionButtonThemeData(
          backgroundColor: fmiColorSchemeLight.primary,
          foregroundColor: fmiColorSchemeLight.onPrimary,
          focusColor: FMIThemeLight.lightComponentButtonPrimaryFocus,
          hoverColor: FMIThemeLight.lightComponentButtonPrimaryHover,
          elevation: FMIThemeBase.baseElevationDouble2,
          focusElevation: FMIThemeBase.baseElevationDouble2,
          hoverElevation: FMIThemeBase.baseElevationDouble2,
          disabledElevation: FMIThemeBase.baseElevationDouble0);

  static CardTheme fmiCardThemeLight = CardTheme(
      clipBehavior: Clip.hardEdge,
      color: fmiColorSchemeLight.surface,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium)));

  static CheckboxThemeData fmiCheckboxThemeDataLight = CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return fmiColorSchemeLight.surface
              .withOpacity(FMIThemeBase.baseOpacity40);
        }
        return fmiColorSchemeLight.surface;
      },
    ),
    fillColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled) &&
            !states.contains(WidgetState.selected)) {
          return Colors.transparent;
        }
        if (states.contains(WidgetState.disabled)) {
          return fmiColorSchemeLight.onSurface
              .withOpacity(FMIThemeBase.baseOpacity20);
        } else if (states.contains(WidgetState.selected)) {
          return fmiColorSchemeLight.primary;
        }
        return Colors.transparent;
      },
    ),
    overlayColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.hovered)) {
          return FMIThemeLight.lightComponentButtonPrimaryHover;
        } else if (states.contains(WidgetState.focused)) {
          return FMIThemeLight.lightComponentButtonPrimaryFocus;
        } else if (states.contains(WidgetState.pressed)) {
          return FMIThemeLight.lightComponentButtonPrimaryPress;
        }
        return null;
      },
    ),
  );

  static RadioThemeData fmiRadioThemeDataLight =
      RadioThemeData(fillColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return fmiColorSchemeLight.onSurface
            .withOpacity(FMIThemeBase.baseOpacity40);
      } else if (states.contains(WidgetState.selected)) {
        return fmiColorSchemeLight.primary;
      }
      return fmiColorSchemeLight.onSurface;
    },
  ), overlayColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.hovered) &&
          states.contains(WidgetState.selected)) {
        return FMIThemeLight.lightComponentButtonPrimaryHover;
      } else if (states.contains(WidgetState.focused) &&
          states.contains(WidgetState.selected)) {
        return FMIThemeLight.lightComponentButtonPrimaryFocus;
      } else if (states.contains(WidgetState.pressed) &&
          states.contains(WidgetState.selected)) {
        return FMIThemeLight.lightComponentButtonPrimaryPress;
      } else if (states.contains(WidgetState.hovered) ||
          states.contains(WidgetState.focused) ||
          states.contains(WidgetState.pressed)) {
        return fmiColorSchemeLight.surfaceContainerHighest;
      }
      return null;
    },
  ));

  static SwitchThemeData fmiSwitchThemeDataLight =
      SwitchThemeData(thumbColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        if (states.contains(WidgetState.disabled)) {
          return fmiColorSchemeLight.surface;
        } else {
          return fmiColorSchemeLight.onPrimary;
        }
      } else {
        if (states.contains(WidgetState.disabled)) {
          return fmiColorSchemeLight.onSurface
              .withOpacity(FMIThemeBase.baseOpacity40);
        } else {
          return fmiColorSchemeLight.outline;
        }
      }
    },
  ), trackColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        if (states.contains(WidgetState.disabled)) {
          return fmiColorSchemeLight.onSurface
              .withOpacity(FMIThemeBase.baseOpacity10);
        } else {
          return fmiColorSchemeLight.primary;
        }
      } else {
        if (states.contains(WidgetState.disabled)) {
          return fmiColorSchemeLight.surfaceContainerHighest
              .withOpacity(FMIThemeBase.baseOpacity10);
        } else {
          return fmiColorSchemeLight.surfaceContainerHighest;
        }
      }
    },
  ), trackOutlineColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        if (states.contains(WidgetState.selected)) {
          return null;
        } else {
          return fmiColorSchemeLight.onSurface
              .withOpacity(FMIThemeBase.baseOpacity10);
        }
      } else {
        if (states.contains(WidgetState.selected)) {
          return null;
        } else {
          return fmiColorSchemeLight.outline;
        }
      }
    },
  ), overlayColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.hovered) &&
          states.contains(WidgetState.selected)) {
        return FMIThemeLight.lightComponentButtonPrimaryHover;
      } else if (states.contains(WidgetState.focused) &&
          states.contains(WidgetState.selected)) {
        return FMIThemeLight.lightComponentButtonPrimaryFocus;
      } else if (states.contains(WidgetState.pressed) &&
          states.contains(WidgetState.selected)) {
        return FMIThemeLight.lightComponentButtonPrimaryPress;
      } else if (states.contains(WidgetState.hovered) ||
          states.contains(WidgetState.focused) ||
          states.contains(WidgetState.pressed)) {
        return fmiColorSchemeLight.surfaceContainerHighest
            .withOpacity(FMIThemeBase.baseOpacity60);
      }
      return null;
    },
  ));

  static InputDecorationTheme fmiInputDecorationThemeLight =
      InputDecorationTheme(
    floatingLabelStyle:
        WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
      Color color;
      if (states.contains(WidgetState.disabled)) {
        color = fmiColorSchemeLight.onSurface
            .withOpacity(FMIThemeBase.baseOpacity40);
      } else if (states.contains(WidgetState.error)) {
        color = fmiColorSchemeLight.onErrorContainer;
      } else {
        color = fmiColorSchemeLight.primary;
      }
      return FmiThemeBase.fmiThemeDataBase.textTheme.bodySmall
          ?.copyWith(color: color) as TextStyle;
    }),
    labelStyle: WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
      Color color;
      if (states.contains(WidgetState.disabled)) {
        color = fmiColorSchemeLight.onSurface
            .withOpacity(FMIThemeBase.baseOpacity40);
      } else {
        color = fmiColorSchemeLight.onSurface;
      }
      return FmiThemeBase.fmiThemeDataBase.textTheme.bodyLarge
          ?.copyWith(color: color) as TextStyle;
    }),
    errorStyle: FmiThemeBase.fmiThemeDataBase.textTheme.labelSmall
        ?.apply(color: fmiColorSchemeLight.error),
    filled: true,
    fillColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return fmiColorSchemeLight.surfaceContainerHighest
            .withOpacity(FMIThemeBase.baseOpacity40);
      } else if (states.contains(WidgetState.error)) {
        return fmiColorSchemeLight.errorContainer;
      } else if (states.contains(WidgetState.focused)) {
        return fmiColorSchemeLight.surfaceContainerHighest;
      } else if (states.contains(WidgetState.hovered)) {
        return fmiColorSchemeLight.surfaceContainerHighest;
      } else {
        return Colors.transparent;
      }
    }),
    iconColor: fmiColorSchemeLight.onSurface,
    prefixIconColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return fmiColorSchemeLight.onSurface
            .withOpacity(FMIThemeBase.baseOpacity40);
      }
      return fmiColorSchemeLight.onSurface;
    }),
    suffixIconColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return fmiColorSchemeLight.onSurface
            .withOpacity(FMIThemeBase.baseOpacity40);
      } else if (states.contains(WidgetState.error)) {
        return fmiColorSchemeLight.error;
      } else {
        return fmiColorSchemeLight.onSurface;
      }
    }),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: fmiColorSchemeLight.outline)),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            color: fmiColorSchemeLight.primary,
            width: FMIThemeBase.baseBorderWidthDefault)),
    disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            color: fmiColorSchemeLight.onSurface
                .withOpacity(FMIThemeBase.baseOpacity40))),
    errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: fmiColorSchemeLight.error)),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: fmiColorSchemeLight.error),
    ),
  );

  static BottomNavigationBarThemeData fmiBottomNavigationBarThemeLight =
      BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
              color: fmiColorSchemeLight.primary,
              size: FMIThemeBase.baseIconSmall),
          selectedLabelStyle:
              FmiThemeBase.fmiThemeDataBase.textTheme.labelSmall,
          selectedItemColor: fmiColorSchemeLight.primary,
          unselectedIconTheme: const IconThemeData(
              color: FMIThemeLight.lightThemeAltSurfaceInverseOnAltSurface,
              size: FMIThemeBase.baseIconSmall),
          unselectedLabelStyle:
              FmiThemeBase.fmiThemeDataBase.textTheme.labelSmall,
          unselectedItemColor:
              FMIThemeLight.lightThemeAltSurfaceInverseOnAltSurface);

  static AppBarTheme fmiAppBarThemeLight = AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: fmiColorSchemeLight.secondaryContainer,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
    centerTitle: false,
    toolbarHeight: FMIThemeBase.baseContainerDimension64,
    titleTextStyle: FmiThemeBase.fmiThemeDataBase.textTheme.chartTitle.copyWith(
        color: fmiColorSchemeLight.onSecondaryContainer,
        fontWeight: FMIThemeBase.baseFontWeightsMedium),
    backgroundColor: fmiColorSchemeLight.secondaryContainer,
    iconTheme: IconThemeData(
        color: fmiColorSchemeLight.onSecondaryContainer,
        size: FMIThemeBase.baseIconSmall),
    actionsIconTheme: IconThemeData(
        color: fmiColorSchemeLight.onSecondaryContainer,
        size: FMIThemeBase.baseIconSmall),
  );

  static NavigationRailThemeData fmiNavigationRailThemeLight =
      NavigationRailThemeData(
          backgroundColor: FMIThemeLight.lightThemeAltSurfaceInverseAltSurface,
          labelType: NavigationRailLabelType.all,
          unselectedLabelTextStyle: FmiThemeBase
              .fmiThemeDataBase.textTheme.labelMedium
              ?.copyWith(color: FMIThemeLight.lightThemeAltSurfaceOnAltSurface),
          selectedLabelTextStyle: FmiThemeBase
              .fmiThemeDataBase.textTheme.labelMedium
              ?.copyWith(color: fmiColorSchemeLight.primary),
          selectedIconTheme: IconThemeData(color: fmiColorSchemeLight.primary),
          unselectedIconTheme: const IconThemeData(
              color: FMIThemeLight.lightThemeAltSurfaceInverseOnAltSurface),
          indicatorColor: fmiColorSchemeLight.primaryContainer);

  static NavigationBarThemeData fmiNavigationBarThemeLight =
      NavigationBarThemeData(
          indicatorColor: fmiColorSchemeLight.primaryContainer,
          labelTextStyle:
              WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return FmiThemeBase.fmiThemeDataBase.textTheme.labelSmall
                  ?.copyWith(color: fmiColorSchemeLight.primary) as TextStyle;
            } else {
              return FmiThemeBase.fmiThemeDataBase.textTheme.labelSmall
                      ?.copyWith(
                          color: FMIThemeLight
                              .lightThemeAltSurfaceInverseOnAltSurface)
                  as TextStyle;
            }
          }),
          iconTheme: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return IconThemeData(
                  size: FMIThemeBase.baseIconSmall,
                  color: fmiColorSchemeLight.primary);
            } else {
              return const IconThemeData(
                  size: FMIThemeBase.baseIconSmall,
                  color: FMIThemeLight.lightThemeAltSurfaceInverseOnAltSurface);
            }
          }));

  static TabBarTheme fmiTabBarThemeLight = TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: fmiColorSchemeLight.primary,
    unselectedLabelColor: fmiColorSchemeLight.secondary,
    indicatorColor: fmiColorSchemeLight.primary,
  );

  static SnackBarThemeData fmiSnackBarThemeLight = SnackBarThemeData(
    backgroundColor: fmiColorSchemeLight.onSurface,
    actionTextColor: fmiColorSchemeLight.surface,
    contentTextStyle: TextStyle(color: fmiColorSchemeLight.surface),
    closeIconColor: fmiColorSchemeLight.surface,
  );

  static SegmentedButtonThemeData fmiSegmentedButtonsThemeLight =
      SegmentedButtonThemeData(
          style: ButtonStyleHelper.getVisualDensityButtonStyle());

  static ToggleButtonsThemeData fmiToggleButtonsThemeLight =
      ToggleButtonsThemeData(
          color: fmiColorSchemeLight.onSurface,
          selectedColor: fmiColorSchemeLight.onPrimaryContainer,
          fillColor: fmiColorSchemeLight.primaryContainer,
          borderColor: fmiColorSchemeLight.fmiBaseThemeAltSurfaceAltSurface,
          selectedBorderColor: fmiColorSchemeLight.primaryContainer,
          borderRadius:
              BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge),
          textStyle: const TextStyle(
            fontSize: FMIThemeBase.baseLabelLargeFontSize,
            fontFamily: FMIThemeBase.baseLabelLargeFontFamily,
            fontWeight: FMIThemeBase.baseLabelLargeFontWeight,
          ));

  static TimePickerThemeData fmiTimePickerThemeLight = TimePickerThemeData(
    dayPeriodColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return fmiColorSchemeLight.primaryContainer;
      } else {
        return Colors.transparent;
      }
    }),
  );

  static ElevatedButtonThemeData fmiElevatedButtonThemeDataLight =
      ElevatedButtonThemeData(
          style: ButtonStyleHelper.getVisualDensityButtonStyle());

  static FilledButtonThemeData fmiFilledButtonThemeDataLight =
      FilledButtonThemeData(
          style: ButtonStyleHelper.getVisualDensityButtonStyle());

  static OutlinedButtonThemeData fmiOutlinedButtonThemeDataLight =
      OutlinedButtonThemeData(
          style: ButtonStyleHelper.getVisualDensityButtonStyle());

  static TextButtonThemeData fmiTextButtonThemeDataLight = TextButtonThemeData(
      style: ButtonStyleHelper.getVisualDensityButtonStyle());
}
