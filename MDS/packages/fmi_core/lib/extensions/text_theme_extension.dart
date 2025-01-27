import 'package:flutter/material.dart';

import '../designTokens/fmi_theme_base.dart';

extension TextThemeExtension on TextTheme {
  TextStyle get chartSubtitle => const TextStyle(
        fontSize: FMIThemeBase.baseTextStylesChartSubtitleFontSize,
        fontFamily: FMIThemeBase.baseTextStylesChartSubtitleFontFamily,
        fontWeight: FMIThemeBase.baseTextStylesChartSubtitleFontWeight,
        letterSpacing: FMIThemeBase.baseTextStylesChartSubtitleLetterSpacing,
      );

  TextStyle get chartTitle => const TextStyle(
        fontSize: FMIThemeBase.baseTextStylesChartTitleFontSize,
        fontFamily: FMIThemeBase.baseTextStylesChartTitleFontFamily,
        fontWeight: FMIThemeBase.baseTextStylesChartTitleFontWeight,
        letterSpacing: FMIThemeBase.baseTextStylesChartTitleLetterSpacing,
      );

  TextStyle get legendLabel => const TextStyle(
        fontSize: FMIThemeBase.baseTextStylesLegendLabelFontSize,
        fontFamily: FMIThemeBase.baseTextStylesLegendLabelFontFamily,
        fontWeight: FMIThemeBase.baseTextStylesLegendLabelFontWeight,
        letterSpacing: FMIThemeBase.baseTextStylesLegendLabelLetterSpacing,
      );

  TextStyle get scoreCardMetric => const TextStyle(
        fontSize: FMIThemeBase.baseTextStylesScoreCardMetricFontSize,
        fontFamily: FMIThemeBase.baseTextStylesScoreCardMetricFontFamily,
        fontWeight: FMIThemeBase.baseTextStylesScoreCardMetricFontWeight,
        letterSpacing: FMIThemeBase.baseTextStylesScoreCardMetricLetterSpacing,
      );

  TextStyle get labelXSmall => const TextStyle(
      fontSize: FMIThemeBase.baseLabelXsmallFontSize,
      fontFamily: FMIThemeBase.baseLabelXsmallFontFamily,
      fontWeight: FMIThemeBase.baseLabelXsmallFontWeight,
      letterSpacing: FMIThemeBase.baseLabelXsmallLetterSpacing);

  TextStyle get labelXxSmall => const TextStyle(
      fontSize: FMIThemeBase.baseLabelXxsmallFontSize,
      fontFamily: FMIThemeBase.baseLabelXxsmallFontFamily,
      fontWeight: FMIThemeBase.baseLabelXxsmallFontWeight,
      letterSpacing: FMIThemeBase.baseLabelXxsmallLetterSpacing);

  TextStyle get titleDefault => const TextStyle(
      fontSize: FMIThemeBase.baseTitleDefaultFontSize,
      fontFamily: FMIThemeBase.baseTitleDefaultFontFamily,
      fontWeight: FMIThemeBase.baseTitleDefaultFontWeight,
      letterSpacing: FMIThemeBase.baseTitleDefaultLetterSpacing);
}
