import 'dart:core';
import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';

class FmiThemeBase {
  FmiThemeBase._();

  static ThemeData fmiThemeDataBase = ThemeData(
      textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: FMIThemeBase.baseDisplayLargeFontSize,
        fontFamily: FMIThemeBase.baseDisplayLargeFontFamily,
        fontWeight: FMIThemeBase.baseDisplayLargeFontWeight),
    displayMedium: TextStyle(
        fontSize: FMIThemeBase.baseDisplayMediumFontSize,
        fontFamily: FMIThemeBase.baseDisplayMediumFontFamily,
        fontWeight: FMIThemeBase.baseDisplayMediumFontWeight),
    displaySmall: TextStyle(
        fontSize: FMIThemeBase.baseDisplaySmallFontSize,
        fontFamily: FMIThemeBase.baseDisplaySmallFontFamily,
        fontWeight: FMIThemeBase.baseDisplaySmallFontWeight),
    headlineLarge: TextStyle(
        fontSize: FMIThemeBase.baseHeadlineLargeFontSize,
        fontFamily: FMIThemeBase.baseHeadlineLargeFontFamily,
        fontWeight: FMIThemeBase.baseHeadlineLargeFontWeight),
    headlineMedium: TextStyle(
        fontSize: FMIThemeBase.baseHeadlineMediumFontSize,
        fontFamily: FMIThemeBase.baseHeadlineMediumFontFamily,
        fontWeight: FMIThemeBase.baseHeadlineMediumFontWeight),
    headlineSmall: TextStyle(
        fontSize: FMIThemeBase.baseHeadlineSmallFontSize,
        fontFamily: FMIThemeBase.baseHeadlineSmallFontFamily,
        fontWeight: FMIThemeBase.baseHeadlineSmallFontWeight),
    titleLarge: TextStyle(
        fontSize: FMIThemeBase.baseTitleLargeFontSize,
        fontFamily: FMIThemeBase.baseTitleLargeFontFamily,
        fontWeight: FMIThemeBase.baseTitleLargeFontWeight),
    titleMedium: TextStyle(
        fontSize: FMIThemeBase.baseTitleMediumFontSize,
        fontFamily: FMIThemeBase.baseTitleMediumFontFamily,
        fontWeight: FMIThemeBase.baseTitleMediumFontWeight),
    titleSmall: TextStyle(
        fontSize: FMIThemeBase.baseTitleSmallFontSize,
        fontFamily: FMIThemeBase.baseTitleSmallFontFamily,
        fontWeight: FMIThemeBase.baseTitleSmallFontWeight),
    bodyLarge: TextStyle(
        fontSize: FMIThemeBase.baseBodyLargeFontSize,
        fontFamily: FMIThemeBase.baseBodyLargeFontFamily,
        fontWeight: FMIThemeBase.baseBodyLargeFontWeight),
    bodyMedium: TextStyle(
        fontSize: FMIThemeBase.baseBodyMediumFontSize,
        fontFamily: FMIThemeBase.baseBodyMediumFontFamily,
        fontWeight: FMIThemeBase.baseBodyMediumFontWeight),
    bodySmall: TextStyle(
        fontSize: FMIThemeBase.baseBodySmallFontSize,
        fontFamily: FMIThemeBase.baseBodySmallFontFamily,
        fontWeight: FMIThemeBase.baseBodySmallFontWeight),
    labelLarge: TextStyle(
        fontSize: FMIThemeBase.baseLabelLargeFontSize,
        fontFamily: FMIThemeBase.baseLabelLargeFontFamily,
        fontWeight: FMIThemeBase.baseLabelLargeFontWeight),
    labelMedium: TextStyle(
        fontSize: FMIThemeBase.baseLabelMediumFontSize,
        fontFamily: FMIThemeBase.baseLabelMediumFontFamily,
        fontWeight: FMIThemeBase.baseLabelMediumFontWeight),
    labelSmall: TextStyle(
        fontSize: FMIThemeBase.baseLabelSmallFontSize,
        fontFamily: FMIThemeBase.baseLabelSmallFontFamily,
        fontWeight: FMIThemeBase.baseLabelSmallFontWeight),
  ));
}
