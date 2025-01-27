import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/extensions/extensions.dart';
import 'package:fmi_core/helpers/button_style_helper.dart';
import 'package:fmi_core/themes/themes.dart';

class FmiThemeDark {
  FmiThemeDark._();

  static ThemeData fmiThemeDataDark = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      snackBarTheme: fmiSnackBarThemeDark,
      primaryColorLight:
          fmiColorSchemeDark.primary.withOpacity(FMIThemeBase.baseOpacity10),
      primaryColorDark:
          fmiColorSchemeDark.primary.withOpacity(FMIThemeBase.baseOpacity70),
      cardColor: fmiColorSchemeDark.surface,
      canvasColor: fmiColorSchemeDark.surface,
      scaffoldBackgroundColor: fmiColorSchemeDark.surface,
      disabledColor:
          fmiColorSchemeDark.onSurface.withOpacity(FMIThemeBase.baseOpacity40),
      colorScheme: fmiColorSchemeDark,
      progressIndicatorTheme: fmiProgressIndicatorThemeDataDark,
      dialogTheme: fmiDialogThemeDark,
      chipTheme: fmiChipThemeDataDark,
      listTileTheme: fmiListTileThemeDataDark,
      floatingActionButtonTheme: fmiFloatingActionButtonThemeDataDark,
      cardTheme: fmiCardThemeDark,
      checkboxTheme: fmiCheckboxThemeDataDark,
      radioTheme: fmiRadioThemeDataDark,
      switchTheme: fmiSwitchThemeDataDark,
      inputDecorationTheme: fmiInputDecorationThemeDark,
      bottomNavigationBarTheme: fmiBottomNavigationBarThemeDark,
      navigationRailTheme: fmiNavigationRailThemeDark,
      navigationBarTheme: fmiNavigationBarThemeDark,
      appBarTheme: fmiAppBarThemeDark,
      tabBarTheme: fmiTabBarThemeDark,
      toggleButtonsTheme: fmiToggleButtonsThemeDark,
      timePickerTheme: fmiTimePickerThemeDark,
      fontFamily: FMIThemeBase.baseFontFamiliesSfProText,
      dividerTheme: fmiDividerThemeDark,
      elevatedButtonTheme: fmiElevatedButtonThemeDataDark,
      filledButtonTheme: fmiFilledButtonThemeDataDark,
      outlinedButtonTheme: fmiOutlinedButtonThemeDataDark,
      textButtonTheme: fmiTextButtonThemeDataDark,
      segmentedButtonTheme: fmiSegmentedButtonsThemeDark,
      textTheme: FmiThemeBase.fmiThemeDataBase.textTheme.apply(
          bodyColor: fmiColorSchemeDark.onSurface,
          displayColor: fmiColorSchemeDark.onSurface));

  static ColorScheme fmiColorSchemeDark = const ColorScheme(
      brightness: Brightness.dark,
      primary: FMIThemeDark.darkThemePrimaryPrimary,
      onPrimary: FMIThemeDark.darkThemePrimaryOnPrimary,
      primaryContainer: FMIThemeDark.darkThemePrimaryPrimaryContainer,
      onPrimaryContainer: FMIThemeDark.darkThemePrimaryOnPrimaryContainer,
      secondary: FMIThemeDark.darkThemeSecondarySecondary,
      onSecondary: FMIThemeDark.darkThemeSecondaryOnSecondary,
      secondaryContainer: FMIThemeDark.darkThemeSecondarySecondaryContainer,
      onSecondaryContainer: FMIThemeDark.darkThemeSecondaryOnSecondaryContainer,
      tertiary: FMIThemeDark.darkThemeTertiaryTertiary,
      onTertiary: FMIThemeDark.darkThemeTertiaryOnTertiary,
      tertiaryContainer: FMIThemeDark.darkThemeTertiaryTertiaryContainer,
      onTertiaryContainer: FMIThemeDark.darkThemeTertiaryOnTertiaryContainer,
      error: FMIThemeDark.darkThemeDangerDanger,
      onError: FMIThemeDark.darkThemeDangerOnDanger,
      errorContainer: FMIThemeDark.darkThemeDangerDangerContainer,
      onErrorContainer: FMIThemeDark.darkThemeDangerOnDangerContainer,
      surface: FMIThemeDark.darkThemeSurfaceSurface,
      onSurface: FMIThemeDark.darkThemeSurfaceOnSurface,
      background: FMIThemeDark.darkThemeSurfaceSurface,
      onBackground: FMIThemeDark.darkThemeSurfaceOnSurface,
      surfaceVariant: FMIThemeDark.darkThemeSurfaceSurfaceVariant,
      surfaceContainerHighest: FMIThemeDark.darkThemeSurfaceSurfaceVariant,
      onSurfaceVariant: FMIThemeDark.darkThemeSurfaceOnSurfaceVariant,
      outline: FMIThemeDark.darkThemeOutlineOutline,
      shadow: FMIThemeDark.darkThemeShadowShadow,
      inverseSurface: FMIThemeDark.darkThemeSurfaceInverseSurface,
      onInverseSurface: FMIThemeDark.darkThemeSurfaceOnInverseSurface,
      inversePrimary: FMIThemeDark.darkThemePrimaryInversePrimary);

  static DividerThemeData fmiDividerThemeDark = const DividerThemeData(
    color: FMIThemeDark.darkPaletteNeutralNeutral90,
  );

  static DialogTheme fmiDialogThemeDark = DialogTheme(
    elevation: FMIThemeBase.baseElevationDouble3,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
    backgroundColor: fmiColorSchemeDark.secondaryContainer,
    titleTextStyle: FmiThemeBase.fmiThemeDataBase.textTheme.headlineMedium
        ?.apply(color: fmiColorSchemeDark.onSecondaryContainer),
    contentTextStyle: FmiThemeBase.fmiThemeDataBase.textTheme.titleMedium
        ?.apply(color: fmiColorSchemeDark.onSecondaryContainer),
  );

  static ProgressIndicatorThemeData fmiProgressIndicatorThemeDataDark =
      ProgressIndicatorThemeData(
          linearMinHeight: 4,
          color: fmiColorSchemeDark.inversePrimary,
          linearTrackColor: fmiColorSchemeDark.surfaceContainerHighest);

  static ChipThemeData fmiChipThemeDataDark = ChipThemeData(
    backgroundColor: fmiColorSchemeDark.surface,
    selectedColor: fmiColorSchemeDark.fmiBaseThemeAltSurfaceInverseAltSurface,
    deleteIconColor: fmiColorSchemeDark.onSurface,
    iconTheme: IconThemeData(
        size: FMIThemeBase.baseIconSmall, color: fmiColorSchemeDark.onSurface),
    labelStyle: FmiThemeBase.fmiThemeDataBase.textTheme.labelLarge
        ?.apply(color: fmiColorSchemeDark.onSurface),
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
              color: fmiColorSchemeDark.fmiBaseThemeAltSurfaceInverseAltSurface
                  .withOpacity(FMIThemeBase.baseOpacity40));
        } else {
          return BorderSide(
              color: fmiColorSchemeDark.fmiBaseThemeSecondaryInverseSecondary
                  .withOpacity(FMIThemeBase.baseOpacity40));
        }
      } else {
        if (states.contains(WidgetState.selected)) {
          return BorderSide(
              color:
                  fmiColorSchemeDark.fmiBaseThemeAltSurfaceInverseAltSurface);
        } else {
          return BorderSide(
              color: fmiColorSchemeDark.fmiBaseThemeSecondaryInverseSecondary);
        }
      }
    }),
    shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium)),
    shadowColor: fmiColorSchemeDark.shadow,
    selectedShadowColor: fmiColorSchemeDark.shadow,
    showCheckmark: false,
  );

  static ListTileThemeData fmiListTileThemeDataDark = ListTileThemeData(
      tileColor: fmiColorSchemeDark.surface,
      iconColor: fmiColorSchemeDark.onSurface,
      textColor: fmiColorSchemeDark.onSurface);

  static FloatingActionButtonThemeData fmiFloatingActionButtonThemeDataDark =
      FloatingActionButtonThemeData(
          backgroundColor: fmiColorSchemeDark.primary,
          foregroundColor: fmiColorSchemeDark.onPrimary,
          focusColor: FMIThemeDark.darkComponentButtonPrimaryFocus,
          hoverColor: FMIThemeDark.darkComponentButtonPrimaryHover,
          elevation: FMIThemeBase.baseElevationDouble2,
          focusElevation: FMIThemeBase.baseElevationDouble2,
          hoverElevation: FMIThemeBase.baseElevationDouble2,
          disabledElevation: FMIThemeBase.baseElevationDouble0);

  static CardTheme fmiCardThemeDark = CardTheme(
      clipBehavior: Clip.hardEdge,
      color: fmiColorSchemeDark.surface,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium)));

  static CheckboxThemeData fmiCheckboxThemeDataDark = CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return fmiColorSchemeDark.surface
              .withOpacity(FMIThemeBase.baseOpacity40);
        }
        return fmiColorSchemeDark.surface;
      },
    ),
    fillColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled) &&
            !states.contains(WidgetState.selected)) {
          return Colors.transparent;
        }
        if (states.contains(WidgetState.disabled)) {
          return fmiColorSchemeDark.onSurface
              .withOpacity(FMIThemeBase.baseOpacity20);
        } else if (states.contains(WidgetState.selected)) {
          return fmiColorSchemeDark.primary;
        }
        return Colors.transparent;
      },
    ),
    overlayColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.hovered)) {
          return FMIThemeDark.darkComponentButtonPrimaryHover;
        } else if (states.contains(WidgetState.focused)) {
          return FMIThemeDark.darkComponentButtonPrimaryFocus;
        } else if (states.contains(WidgetState.pressed)) {
          return FMIThemeDark.darkComponentButtonPrimaryPress;
        }
        return null;
      },
    ),
  );

  static RadioThemeData fmiRadioThemeDataDark =
      RadioThemeData(fillColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return fmiColorSchemeDark.onSurface
            .withOpacity(FMIThemeBase.baseOpacity40);
      } else if (states.contains(WidgetState.selected)) {
        return fmiColorSchemeDark.primary;
      }
      return fmiColorSchemeDark.onSurface;
    },
  ), overlayColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.hovered) &&
          states.contains(WidgetState.selected)) {
        return FMIThemeDark.darkComponentButtonPrimaryHover;
      } else if (states.contains(WidgetState.focused) &&
          states.contains(WidgetState.selected)) {
        return FMIThemeDark.darkComponentButtonPrimaryFocus;
      } else if (states.contains(WidgetState.pressed) &&
          states.contains(WidgetState.selected)) {
        return FMIThemeDark.darkComponentButtonPrimaryPress;
      } else if (states.contains(WidgetState.hovered) ||
          states.contains(WidgetState.focused) ||
          states.contains(WidgetState.pressed)) {
        return fmiColorSchemeDark.surfaceContainerHighest;
      }
      return null;
    },
  ));

  static SwitchThemeData fmiSwitchThemeDataDark =
      SwitchThemeData(thumbColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        if (states.contains(WidgetState.disabled)) {
          return fmiColorSchemeDark.surface;
        } else {
          return fmiColorSchemeDark.onPrimary;
        }
      } else {
        if (states.contains(WidgetState.disabled)) {
          return fmiColorSchemeDark.onSurface
              .withOpacity(FMIThemeBase.baseOpacity40);
        } else {
          return fmiColorSchemeDark.outline;
        }
      }
    },
  ), trackColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        if (states.contains(WidgetState.disabled)) {
          return fmiColorSchemeDark.onSurface
              .withOpacity(FMIThemeBase.baseOpacity10);
        } else {
          return fmiColorSchemeDark.primary;
        }
      } else {
        if (states.contains(WidgetState.disabled)) {
          return fmiColorSchemeDark.surfaceContainerHighest
              .withOpacity(FMIThemeBase.baseOpacity10);
        } else {
          return fmiColorSchemeDark.surfaceContainerHighest;
        }
      }
    },
  ), trackOutlineColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        if (states.contains(WidgetState.selected)) {
          return null;
        } else {
          return fmiColorSchemeDark.onSurface
              .withOpacity(FMIThemeBase.baseOpacity10);
        }
      } else {
        if (states.contains(WidgetState.selected)) {
          return null;
        } else {
          return fmiColorSchemeDark.outline;
        }
      }
    },
  ), overlayColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.hovered) &&
          states.contains(WidgetState.selected)) {
        return FMIThemeDark.darkComponentButtonPrimaryHover;
      } else if (states.contains(WidgetState.focused) &&
          states.contains(WidgetState.selected)) {
        return FMIThemeDark.darkComponentButtonPrimaryFocus;
      } else if (states.contains(WidgetState.pressed) &&
          states.contains(WidgetState.selected)) {
        return FMIThemeDark.darkComponentButtonPrimaryPress;
      } else if (states.contains(WidgetState.hovered) ||
          states.contains(WidgetState.focused) ||
          states.contains(WidgetState.pressed)) {
        return fmiColorSchemeDark.surfaceContainerHighest
            .withOpacity(FMIThemeBase.baseOpacity60);
      }
      return null;
    },
  ));

  static InputDecorationTheme fmiInputDecorationThemeDark =
      InputDecorationTheme(
    floatingLabelStyle:
        WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
      Color color;
      if (states.contains(WidgetState.disabled)) {
        color = fmiColorSchemeDark.onSurface
            .withOpacity(FMIThemeBase.baseOpacity40);
      } else if (states.contains(WidgetState.error)) {
        color = fmiColorSchemeDark.onErrorContainer;
      } else {
        color = fmiColorSchemeDark.primary;
      }
      return FmiThemeBase.fmiThemeDataBase.textTheme.bodySmall
          ?.copyWith(color: color) as TextStyle;
    }),
    labelStyle: WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
      Color color;
      if (states.contains(WidgetState.disabled)) {
        color = fmiColorSchemeDark.onSurface
            .withOpacity(FMIThemeBase.baseOpacity40);
      } else {
        color = fmiColorSchemeDark.onSurface;
      }
      return FmiThemeBase.fmiThemeDataBase.textTheme.bodyLarge
          ?.copyWith(color: color) as TextStyle;
    }),
    errorStyle: FmiThemeBase.fmiThemeDataBase.textTheme.labelSmall
        ?.apply(color: fmiColorSchemeDark.error),
    filled: true,
    fillColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return fmiColorSchemeDark.surfaceContainerHighest
            .withOpacity(FMIThemeBase.baseOpacity40);
      } else if (states.contains(WidgetState.error)) {
        return fmiColorSchemeDark.errorContainer;
      } else if (states.contains(WidgetState.focused)) {
        return fmiColorSchemeDark.surfaceContainerHighest;
      } else if (states.contains(WidgetState.hovered)) {
        return fmiColorSchemeDark.surfaceContainerHighest;
      } else {
        return Colors.transparent;
      }
    }),
    iconColor: fmiColorSchemeDark.onSurface,
    prefixIconColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return fmiColorSchemeDark.onSurface
            .withOpacity(FMIThemeBase.baseOpacity40);
      }
      return fmiColorSchemeDark.onSurface;
    }),
    suffixIconColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return fmiColorSchemeDark.onSurface
            .withOpacity(FMIThemeBase.baseOpacity40);
      } else if (states.contains(WidgetState.error)) {
        return fmiColorSchemeDark.error;
      } else {
        return fmiColorSchemeDark.onSurface;
      }
    }),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: fmiColorSchemeDark.outline)),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            color: fmiColorSchemeDark.primary,
            width: FMIThemeBase.baseBorderWidthDefault)),
    disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            color: fmiColorSchemeDark.onSurface
                .withOpacity(FMIThemeBase.baseOpacity40))),
    errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: fmiColorSchemeDark.error)),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: fmiColorSchemeDark.error),
    ),
  );

  static BottomNavigationBarThemeData fmiBottomNavigationBarThemeDark =
      BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
              color: fmiColorSchemeDark.primary,
              size: FMIThemeBase.baseIconSmall),
          selectedLabelStyle:
              FmiThemeBase.fmiThemeDataBase.textTheme.labelSmall,
          selectedItemColor: fmiColorSchemeDark.primary,
          unselectedIconTheme: const IconThemeData(
              color: FMIThemeDark.darkThemeAltSurfaceInverseOnAltSurface,
              size: FMIThemeBase.baseIconSmall),
          unselectedLabelStyle:
              FmiThemeBase.fmiThemeDataBase.textTheme.labelSmall,
          unselectedItemColor:
              FMIThemeDark.darkThemeAltSurfaceInverseOnAltSurface);

  static AppBarTheme fmiAppBarThemeDark = AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: fmiColorSchemeDark.secondaryContainer,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
    centerTitle: false,
    toolbarHeight: FMIThemeBase.baseContainerDimension64,
    titleTextStyle: FmiThemeBase.fmiThemeDataBase.textTheme.chartTitle.copyWith(
        color: fmiColorSchemeDark.onSecondaryContainer,
        fontWeight: FMIThemeBase.baseFontWeightsMedium),
    backgroundColor: fmiColorSchemeDark.secondaryContainer,
    iconTheme: IconThemeData(
        color: fmiColorSchemeDark.onSecondaryContainer,
        size: FMIThemeBase.baseIconSmall),
    actionsIconTheme: IconThemeData(
        color: fmiColorSchemeDark.onSecondaryContainer,
        size: FMIThemeBase.baseIconSmall),
  );

  static NavigationRailThemeData fmiNavigationRailThemeDark =
      NavigationRailThemeData(
          backgroundColor: FMIThemeDark.darkThemeAltSurfaceInverseAltSurface,
          labelType: NavigationRailLabelType.all,
          unselectedLabelTextStyle: FmiThemeBase
              .fmiThemeDataBase.textTheme.labelMedium
              ?.copyWith(color: FMIThemeDark.darkThemeAltSurfaceOnAltSurface),
          selectedLabelTextStyle: FmiThemeBase
              .fmiThemeDataBase.textTheme.labelMedium
              ?.copyWith(color: fmiColorSchemeDark.primary),
          selectedIconTheme: IconThemeData(color: fmiColorSchemeDark.primary),
          unselectedIconTheme: const IconThemeData(
              color: FMIThemeDark.darkThemeAltSurfaceInverseOnAltSurface),
          indicatorColor: fmiColorSchemeDark.primaryContainer);

  static NavigationBarThemeData fmiNavigationBarThemeDark =
      NavigationBarThemeData(
          indicatorColor: fmiColorSchemeDark.primaryContainer,
          labelTextStyle:
              WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return FmiThemeBase.fmiThemeDataBase.textTheme.labelSmall
                  ?.copyWith(color: fmiColorSchemeDark.primary) as TextStyle;
            } else {
              return FmiThemeBase.fmiThemeDataBase.textTheme.labelSmall
                  ?.copyWith(
                      color: FMIThemeDark
                          .darkThemeAltSurfaceInverseOnAltSurface) as TextStyle;
            }
          }),
          iconTheme: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return IconThemeData(
                  size: FMIThemeBase.baseIconSmall,
                  color: fmiColorSchemeDark.primary);
            } else {
              return const IconThemeData(
                  size: FMIThemeBase.baseIconSmall,
                  color: FMIThemeDark.darkThemeAltSurfaceInverseOnAltSurface);
            }
          }));

  static TabBarTheme fmiTabBarThemeDark = TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: fmiColorSchemeDark.primary,
    unselectedLabelColor: fmiColorSchemeDark.secondary,
    indicatorColor: fmiColorSchemeDark.primary,
  );

  static SnackBarThemeData fmiSnackBarThemeDark = SnackBarThemeData(
    backgroundColor: fmiColorSchemeDark.onSurface,
    actionTextColor: fmiColorSchemeDark.surface,
    contentTextStyle: TextStyle(
      color: fmiColorSchemeDark.surface,
    ),
    closeIconColor: fmiColorSchemeDark.surface,
  );

  static SegmentedButtonThemeData fmiSegmentedButtonsThemeDark =
      SegmentedButtonThemeData(
          style: ButtonStyleHelper.getVisualDensityButtonStyle());

  static ToggleButtonsThemeData fmiToggleButtonsThemeDark =
      ToggleButtonsThemeData(
          color: fmiColorSchemeDark.onSurface,
          selectedColor: fmiColorSchemeDark.onPrimaryContainer,
          fillColor: fmiColorSchemeDark.primaryContainer,
          borderColor: fmiColorSchemeDark.fmiBaseThemeAltSurfaceAltSurface,
          selectedBorderColor: fmiColorSchemeDark.primaryContainer,
          borderRadius:
              BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge),
          textStyle: const TextStyle(
            fontSize: FMIThemeBase.baseLabelLargeFontSize,
            fontFamily: FMIThemeBase.baseLabelLargeFontFamily,
            fontWeight: FMIThemeBase.baseLabelLargeFontWeight,
          ));

  static TimePickerThemeData fmiTimePickerThemeDark = TimePickerThemeData(
    dayPeriodColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return fmiColorSchemeDark.primaryContainer;
      } else {
        return Colors.transparent;
      }
    }),
  );

  static ElevatedButtonThemeData fmiElevatedButtonThemeDataDark =
      ElevatedButtonThemeData(
          style: ButtonStyleHelper.getVisualDensityButtonStyle());

  static FilledButtonThemeData fmiFilledButtonThemeDataDark =
      FilledButtonThemeData(
          style: ButtonStyleHelper.getVisualDensityButtonStyle());

  static OutlinedButtonThemeData fmiOutlinedButtonThemeDataDark =
      OutlinedButtonThemeData(
          style: ButtonStyleHelper.getVisualDensityButtonStyle());

  static TextButtonThemeData fmiTextButtonThemeDataDark = TextButtonThemeData(
      style: ButtonStyleHelper.getVisualDensityButtonStyle());
}
