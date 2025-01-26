import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

extension ColorSchemeExtension on ColorScheme {
  // CHART COLORS ---------------------------------------------

  Color get textChartInternalTextLight => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryOnPrimary
      : FMIThemeLight.lightThemePrimaryOnPrimary;

  Color get textChartRoseLight => brightness == Brightness.light
      ? FMIThemeLight.lightChartRose
      : FMIThemeLight.lightThemePrimaryOnPrimary;

  Color get textChartText => brightness == Brightness.light
      ? FMIThemeLight.lightChartTextChartText
      : FMIThemeDark.darkChartTextChartText;

  Color get textChartText2 => brightness == Brightness.light
      ? FMIThemeLight.lightChartTextChartText2
      : FMIThemeDark.darkChartTextChartText2;

  Color get baseGridLine => brightness == Brightness.light
      ? FMIThemeLight.lightChartBaseGridLine
      : FMIThemeDark.darkChartBaseGridLine;

  Color get chartAmber => brightness == Brightness.light
      ? FMIThemeLight.lightChartAmber
      : FMIThemeDark.darkChartAmber;

  Color get chartBlue => brightness == Brightness.light
      ? FMIThemeLight.lightChartBlue
      : FMIThemeDark.darkChartBlue;

  Color get chartBlueEvp => brightness == Brightness.light
      ? FMIThemeLight.lightChartBlueEvp
      : FMIThemeDark.darkChartBlueEvp;

  Color get chartBlueGray => brightness == Brightness.light
      ? FMIThemeLight.lightChartBlueGray
      : FMIThemeDark.darkChartBlueGray;

  Color get chartBlueGray300 => brightness == Brightness.light
      ? FMIThemeLight.lightChartBlueGray300
      : FMIThemeDark.darkChartBlueGray300;

  Color get chartCopper => brightness == Brightness.light
      ? FMIThemeLight.lightChartCopper
      : FMIThemeDark.darkChartCopper;

  Color get chartCopperEvp => brightness == Brightness.light
      ? FMIThemeLight.lightChartCopperEvp
      : FMIThemeDark.darkChartCopperEvp;

  Color get chartDarkBlue => brightness == Brightness.light
      ? FMIThemeLight.lightChartDarkBlue
      : FMIThemeDark.darkChartDarkBlue;

  Color get chartDeepBlue => brightness == Brightness.light
      ? FMIThemeLight.lightChartDeepBlue
      : FMIThemeDark.darkChartDeepBlue;

  Color get chartDeepFuchsia => brightness == Brightness.light
      ? FMIThemeLight.lightChartDeepFuchsia
      : FMIThemeDark.darkChartDeepFuchsia;

  Color get chartError => brightness == Brightness.light
      ? FMIThemeLight.lightChartError
      : FMIThemeDark.darkChartError;

  Color get chartFuchsia => brightness == Brightness.light
      ? FMIThemeLight.lightChartFuchsia
      : FMIThemeDark.darkChartFuchsia;

  Color get chartGreen => brightness == Brightness.light
      ? FMIThemeLight.lightChartGreen
      : FMIThemeDark.darkChartGreen;

  Color get chartLightPurple => brightness == Brightness.light
      ? FMIThemeLight.lightChartLightPurple
      : FMIThemeDark.darkChartLightPurple;

  Color get chartLime => brightness == Brightness.light
      ? FMIThemeLight.lightChartLime
      : FMIThemeDark.darkChartLime;

  Color get chartOrange => brightness == Brightness.light
      ? FMIThemeLight.lightChartOrange
      : FMIThemeDark.darkChartOrange;

  Color get chartPink => brightness == Brightness.light
      ? FMIThemeLight.lightChartPink
      : FMIThemeDark.darkChartPink;

  Color get chartPurple => brightness == Brightness.light
      ? FMIThemeLight.lightChartPurple
      : FMIThemeDark.darkChartPurple;

  Color get chartRose => brightness == Brightness.light
      ? FMIThemeLight.lightChartRose
      : FMIThemeDark.darkChartRose;

  Color get chartTeal => brightness == Brightness.light
      ? FMIThemeLight.lightChartTeal
      : FMIThemeDark.darkChartTeal;

  Color get chartYellow => brightness == Brightness.light
      ? FMIThemeLight.lightChartYellow
      : FMIThemeDark.darkChartYellow;

  Color get chartGrayscaleGray0 => brightness == Brightness.light
      ? FMIThemeLight.lightChartGrayscaleGray0
      : FMIThemeDark.darkChartGrayscaleGray0;

  Color get chartGrayscaleGray10 => brightness == Brightness.light
      ? FMIThemeLight.lightChartGrayscaleGray10
      : FMIThemeDark.darkChartGrayscaleGray10;

  Color get chartGrayscaleGray20 => brightness == Brightness.light
      ? FMIThemeLight.lightChartGrayscaleGray20
      : FMIThemeDark.darkChartGrayscaleGray20;

  Color get chartGrayscaleGray30 => brightness == Brightness.light
      ? FMIThemeLight.lightChartGrayscaleGray30
      : FMIThemeDark.darkChartGrayscaleGray30;

  Color get chartGrayscaleGray40 => brightness == Brightness.light
      ? FMIThemeLight.lightChartGrayscaleGray40
      : FMIThemeDark.darkChartGrayscaleGray40;

  Color get chartGrayscaleGray50 => brightness == Brightness.light
      ? FMIThemeLight.lightChartGrayscaleGray50
      : FMIThemeDark.darkChartGrayscaleGray50;

  Color get chartNeutralBackground => brightness == Brightness.light
      ? FMIThemeLight.lightExtendedChartsGrayscaleGray20
      : FMIThemeDark.darkExtendedChartsGrayscaleGray40;

  // END OF CHART COLORS --------------------------------------

  // ILLUSTRATIONS COLORS ------------------------------------------

  Color get themeIllustrationsOnBackgroundRed => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsOnBackgroundRed
      : FMIThemeDark.darkThemeIllustrationsOnBackgroundRed;

  Color get themeIllustrationsOnBackgroundDarkOrange =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsOnBackgroundDarkOrange
          : FMIThemeDark.darkThemeIllustrationsOnBackgroundDarkOrange;

  Color get themeIllustrationsOnBackgroundOrange =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsOnBackgroundOrange
          : FMIThemeDark.darkThemeIllustrationsOnBackgroundOrange;

  Color get themeIllustrationsOnBackgroundAmber =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsOnBackgroundAmber
          : FMIThemeDark.darkThemeIllustrationsOnBackgroundAmber;

  Color get themeIllustrationsOnBackgroundGreen =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsOnBackgroundGreen
          : FMIThemeDark.darkThemeIllustrationsOnBackgroundGreen;

  Color get themeIllustrationsOnBackgroundLime => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsOnBackgroundLime
      : FMIThemeDark.darkThemeIllustrationsOnBackgroundLime;

  Color get themeIllustrationsOnBackgroundBlue => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsOnBackgroundBlue
      : FMIThemeDark.darkThemeIllustrationsOnBackgroundBlue;

  Color get themeIllustrationsOnBackgroundTeal => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsOnBackgroundTeal
      : FMIThemeDark.darkThemeIllustrationsOnBackgroundTeal;

  Color get themeIllustrationsOnBackgroundDarkBlue =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsOnBackgroundDarkBlue
          : FMIThemeDark.darkThemeIllustrationsOnBackgroundDarkBlue;

  Color get themeIllustrationsOnBackgroundBlueGray =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsOnBackgroundBlueGray
          : FMIThemeDark.darkThemeIllustrationsOnBackgroundBlueGray;

  Color get themeIllustrationsOnBackgroundPurple =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsOnBackgroundPurple
          : FMIThemeDark.darkThemeIllustrationsOnBackgroundPurple;

  Color get themeIllustrationsOnBackgroundIndigo =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsOnBackgroundIndigo
          : FMIThemeDark.darkThemeIllustrationsOnBackgroundIndigo;

  Color get themeIllustrationsOnBackgroundDarkPurple =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsOnBackgroundDarkPurple
          : FMIThemeDark.darkThemeIllustrationsOnBackgroundDarkPurple;

  Color get themeIllustrationsOnBackgroundLavender =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsOnBackgroundLavender
          : FMIThemeDark.darkThemeIllustrationsOnBackgroundLavender;

  Color get themeIllustrationsOnBackgroundPink => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsOnBackgroundPink
      : FMIThemeDark.darkThemeIllustrationsOnBackgroundPink;

  Color get themeIllustrationsOnBackgroundCopper =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsOnBackgroundCopper
          : FMIThemeDark.darkThemeIllustrationsOnBackgroundCopper;

  Color get themeIllustrationsBackgroundRed => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsBackgroundRed
      : FMIThemeDark.darkThemeIllustrationsBackgroundRed;

  Color get themeIllustrationsBackgroundDarkOrange =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsBackgroundDarkOrange
          : FMIThemeDark.darkThemeIllustrationsBackgroundDarkOrange;

  Color get themeIllustrationsBackgroundOrange => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsBackgroundOrange
      : FMIThemeDark.darkThemeIllustrationsBackgroundOrange;

  Color get themeIllustrationsBackgroundAmber => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsBackgroundAmber
      : FMIThemeDark.darkThemeIllustrationsBackgroundAmber;

  Color get themeIllustrationsBackgroundGreen => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsBackgroundGreen
      : FMIThemeDark.darkThemeIllustrationsBackgroundGreen;

  Color get themeIllustrationsBackgroundLime => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsBackgroundLime
      : FMIThemeDark.darkThemeIllustrationsBackgroundLime;

  Color get themeIllustrationsBackgroundBlue => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsBackgroundBlue
      : FMIThemeDark.darkThemeIllustrationsBackgroundBlue;

  Color get themeIllustrationsBackgroundTeal => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsBackgroundTeal
      : FMIThemeDark.darkThemeIllustrationsBackgroundTeal;

  Color get themeIllustrationsBackgroundDarkBlue =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsBackgroundDarkBlue
          : FMIThemeDark.darkThemeIllustrationsBackgroundDarkBlue;

  Color get themeIllustrationsBackgroundBlueGray =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsBackgroundBlueGray
          : FMIThemeDark.darkThemeIllustrationsBackgroundBlueGray;

  Color get themeIllustrationsBackgroundPurple => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsBackgroundPurple
      : FMIThemeDark.darkThemeIllustrationsBackgroundPurple;

  Color get themeIllustrationsBackgroundIndigo => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsBackgroundIndigo
      : FMIThemeDark.darkThemeIllustrationsBackgroundIndigo;

  Color get themeIllustrationsBackgroundDarkPurple =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsBackgroundDarkPurple
          : FMIThemeDark.darkThemeIllustrationsBackgroundDarkPurple;

  Color get themeIllustrationsBackgroundLavender =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeIllustrationsBackgroundLavender
          : FMIThemeDark.darkThemeIllustrationsBackgroundLavender;

  Color get themeIllustrationsBackgroundPink => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsBackgroundPink
      : FMIThemeDark.darkThemeIllustrationsBackgroundPink;

  Color get themeIllustrationsBackgroundCopper => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsBackgroundCopper
      : FMIThemeDark.darkThemeIllustrationsBackgroundCopper;

  Color get themeIllustrationsBackgroundGray => brightness == Brightness.light
      ? FMIThemeLight.lightThemeIllustrationsBackgroundGray
      : FMIThemeDark.darkThemeIllustrationsBackgroundGray;

  // END OF ILLUSTRATIONS COLORS --------------------------------------

  // BEGIN SURFACE TONES COLORS -------------------------------------
  @Deprecated('Deprecated and will be removed in future artifact update')
  Color get fmiSurface1 => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryPrimary.withOpacity(.05)
      : FMIThemeDark.darkThemePrimaryPrimary.withOpacity(.05);
  @Deprecated('Deprecated and will be removed in future artifact update')
  Color get fmiSurface2 => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryPrimary.withOpacity(.08)
      : FMIThemeDark.darkThemePrimaryPrimary.withOpacity(.08);
  @Deprecated('Deprecated and will be removed in future artifact update')
  Color get fmiSurface3 => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryPrimary.withOpacity(.11)
      : FMIThemeDark.darkThemePrimaryPrimary.withOpacity(.11);
  @Deprecated('Deprecated and will be removed in future artifact update')
  Color get fmiSurface4 => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryPrimary.withOpacity(.12)
      : FMIThemeDark.darkThemePrimaryPrimary.withOpacity(.12);
  @Deprecated('Deprecated and will be removed in future artifact update')
  Color get fmiSurface5 => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryPrimary.withOpacity(.14)
      : FMIThemeDark.darkThemePrimaryPrimary.withOpacity(.14);

  // END SURFACE TONES COLORS -------------------------------------

  Color get fmiOnPrimaryForceLight => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryOnPrimary
      : FMIThemeLight.lightThemePrimaryOnPrimary;

  Color get formBackground => brightness == Brightness.light
      ? FMIThemeLight.lightThemeBackgroundBackground
      : FMIThemeDark.darkThemeBackgroundBackground;

  Color get shadow => brightness == Brightness.light
      ? FMIThemeLight.lightThemeShadowShadow.withOpacity(0.3)
      : FMIThemeDark.darkThemeShadowShadow.withOpacity(0.3);

  Color get fmiBaseThemeDangerDanger => brightness == Brightness.light
      ? FMIThemeLight.lightThemeDangerDanger
      : FMIThemeDark.darkThemeDangerDanger;

  Color get fmiBaseThemeDangerOnDanger => brightness == Brightness.light
      ? FMIThemeLight.lightThemeDangerOnDanger
      : FMIThemeDark.darkThemeDangerOnDanger;

  Color get fmiBaseThemeSuccessSuccess => brightness == Brightness.light
      ? FMIThemeLight.lightThemeSuccessSuccess
      : FMIThemeDark.darkThemeSuccessSuccess;

  Color get fmiBaseThemeSuccessOnSuccess => brightness == Brightness.light
      ? FMIThemeLight.lightThemeSuccessOnSuccess
      : FMIThemeDark.darkThemeSuccessOnSuccess;

  Color get fmiBaseThemeWarningWarning => brightness == Brightness.light
      ? FMIThemeLight.lightThemeWarningWarning
      : FMIThemeDark.darkThemeWarningWarning;

  Color get fmiBaseThemeWarningWarningContainer =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeWarningWarningContainer
          : FMIThemeDark.darkThemeWarningWarningContainer;

  Color get fmiBaseThemeWarningOnWarning => brightness == Brightness.light
      ? FMIThemeLight.lightThemeWarningOnWarning
      : FMIThemeDark.darkThemeWarningOnWarning;

  Color get fmiBaseThemeWarningOnWarningContainer =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeWarningOnWarningContainer
          : FMIThemeDark.darkThemeWarningOnWarningContainer;

  Color get fmiBaseThemeSuccessInverseSuccess => brightness == Brightness.light
      ? FMIThemeLight.lightThemeSuccessInverseSuccess
      : FMIThemeDark.darkThemeSuccessInverseSuccess;

  Color get fmiBaseThemeSuccessSuccessContainer =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeSuccessSuccessContainer
          : FMIThemeDark.darkThemeSuccessSuccessContainer;

  Color get fmiBaseThemeSuccessOnSuccessContainer =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeSuccessOnSuccessContainer
          : FMIThemeDark.darkThemeSuccessOnSuccessContainer;

  Color get fmiBaseThemeDangerDangerContainer => brightness == Brightness.light
      ? FMIThemeLight.lightThemeDangerDangerContainer
      : FMIThemeDark.darkThemeDangerDangerContainer;

  Color get fmiBaseThemeDangerOnDangerContainer =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeDangerOnDangerContainer
          : FMIThemeDark.darkThemeDangerOnDangerContainer;

  Color get fmiBaseThemeErrorInverseError => brightness == Brightness.light
      ? FMIThemeLight.lightThemeDangerInverseDanger
      : FMIThemeDark.darkThemeDangerInverseDanger;

  Color get fmiBaseThemeAltSurfaceOnAltSurface => brightness == Brightness.light
      ? FMIThemeLight.lightThemeAltSurfaceOnAltSurface
      : FMIThemeDark.darkThemeAltSurfaceOnAltSurface;

  Color get fmiBaseThemeAltSurfaceAltSurface => brightness == Brightness.light
      ? FMIThemeLight.lightThemeAltSurfaceAltSurface
      : FMIThemeDark.darkThemeAltSurfaceAltSurface;

  Color get fmiBaseThemeAltSurfaceInverseAltSurface =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeAltSurfaceInverseAltSurface
          : FMIThemeDark.darkThemeAltSurfaceInverseAltSurface;

  Color get fmiBaseThemeAltSurfaceInverseOnAltSurface =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeAltSurfaceInverseOnAltSurface
          : FMIThemeDark.darkThemeAltSurfaceInverseOnAltSurface;

  Color get fmiBaseThemeSecondaryInverseSecondary =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeSecondaryInverseSecondary
          : FMIThemeDark.darkThemeSecondaryInverseSecondary;

  Color get fmiBaseThemeTertiaryInverseTertiary =>
      brightness == Brightness.light
          ? FMIThemeLight.lightThemeTertiaryInverseTertiary
          : FMIThemeDark.darkThemeTertiaryInverseTertiary;

  Color get fmiBaseThemeWarningInverseWarning => brightness == Brightness.light
      ? FMIThemeLight.lightThemeWarningInverseWarning
      : FMIThemeDark.darkThemeWarningInverseWarning;

  // Primary/Filled buttons
  Color get fmiButtonFilledEnabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryPrimary
      : FMIThemeDark.darkThemePrimaryPrimary;

  Color get fmiButtonFilledLabelEnabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryOnPrimary
      : FMIThemeDark.darkThemePrimaryOnPrimary;

  Color get fmiButtonFilledHover => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonElevatedHover
      : FMIThemeDark.darkComponentButtonElevatedHover;

  Color get fmiButtonFilledPressed => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonElevatedPress
      : FMIThemeDark.darkComponentButtonElevatedPress;

  Color get fmiButtonFilledFocused => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonElevatedFocus
      : FMIThemeDark.darkComponentButtonElevatedFocus;

  Color get fmiButtonFilledDisabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemeAltSurfaceAltSurface
      : FMIThemeDark.darkThemeAltSurfaceAltSurface;

  Color get fmiButtonFilledLabelDisabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemeAltSurfaceOnAltSurface
      : FMIThemeDark.darkThemeAltSurfaceOnAltSurface;

  // Outline buttons
  Color get fmiButtonOutlineEnabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryOnPrimary
      : FMIThemeDark.darkThemePrimaryOnPrimary;

  Color get fmiButtonOutlineLabelEnabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryPrimary
      : FMIThemeDark.darkThemePrimaryPrimary;

  Color get fmiButtonOutlinePressed => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonOutlinePress
      : FMIThemeDark.darkComponentButtonOutlinePress;

  Color get fmiButtonOutlineHover => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonOutlineHover
      : FMIThemeDark.darkComponentButtonOutlineHover;

  Color get fmiButtonOutlineFocused => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonOutlineFocus
      : FMIThemeDark.darkComponentButtonOutlineFocus;

  // Color get fmiButtonOutlineDisabled => brightness == Brightness.light
  //     ? FMIThemeLight.lightThemeSurfaceSurface
  //     : FMIThemeDark.darkThemeSurfaceSurface;

  Color get fmiButtonOutlineLabelDisabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemeAltSurfaceOnAltSurface
      : FMIThemeDark.darkThemeAltSurfaceOnAltSurface;

  // Text buttons
  Color get fmiButtonTextLabelEnabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryPrimary
      : FMIThemeDark.darkThemePrimaryPrimary;

  Color get fmiButtonTextPressed => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonTextPress
      : FMIThemeDark.darkComponentButtonTextPress;

  Color get fmiButtonTextHover => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonTextHover
      : FMIThemeDark.darkComponentButtonTextHover;

  Color get fmiButtonTextFocused => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonTextFocus
      : FMIThemeDark.darkComponentButtonTextFocus;

  Color get fmiButtonTextDisabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemeSurfaceSurface
      : FMIThemeDark.darkThemeSurfaceSurface;

  Color get fmiButtonTextLabelDisabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemeAltSurfaceOnAltSurface
      : FMIThemeDark.darkThemeAltSurfaceOnAltSurface;

  // Elevated buttons
  Color get fmiButtonElevatedEnabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryPrimaryContainer
      : FMIThemeDark.darkThemePrimaryPrimaryContainer;

  Color get fmiButtonElevatedLabelEnabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryOnPrimaryContainer
      : FMIThemeDark.darkThemePrimaryOnPrimaryContainer;

  Color get fmiButtonElevatedPressed => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonElevatedPress
      : FMIThemeDark.darkComponentButtonElevatedPress;

  Color get fmiButtonElevatedHover => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonElevatedHover
      : FMIThemeDark.darkComponentButtonElevatedHover;

  Color get fmiButtonElevatedFocused => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonElevatedFocus
      : FMIThemeDark.darkComponentButtonElevatedFocus;

  Color get fmiButtonElevatedDisabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemeAltSurfaceAltSurface
      : FMIThemeDark.darkThemeAltSurfaceAltSurface;

  Color get fmiButtonElevatedLabelDisabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemeAltSurfaceOnAltSurface
      : FMIThemeDark.darkThemeAltSurfaceOnAltSurface;

  // Secondary buttons
  Color get fmiButtonSecondaryEnabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemeSecondarySecondary
      : FMIThemeDark.darkThemeSecondarySecondary;

  Color get fmiButtonSecondaryLabelEnabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemeSecondaryOnSecondary
      : FMIThemeDark.darkThemeSecondaryOnSecondary;

  Color get fmiButtonSecondaryHovered => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonSecondaryHover
      : FMIThemeDark.darkComponentButtonSecondaryHover;

  Color get fmiButtonSecondaryPressed => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonSecondaryPress
      : FMIThemeDark.darkComponentButtonSecondaryPress;

  Color get fmiButtonSecondaryFocused => brightness == Brightness.light
      ? FMIThemeLight.lightComponentButtonSecondaryFocus
      : FMIThemeDark.darkComponentButtonSecondaryFocus;

  Color get fmiButtonSecondaryDisabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemeAltSurfaceAltSurface
      : FMIThemeDark.darkThemeAltSurfaceAltSurface;

  Color get fmiButtonSecondaryLabelDisabled => brightness == Brightness.light
      ? FMIThemeLight.lightThemeAltSurfaceOnAltSurface
      : FMIThemeDark.darkThemeAltSurfaceOnAltSurface;

  Color get onSecondaryText => brightness == Brightness.light
      ? FMIThemeBase.basePaletteCoolGrayCoolGray60
      : FMIThemeBase.basePaletteCoolGrayCoolGray95;

  Color get fmiReadOnlyPrimaryOpacity008 => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryPrimary.withOpacity(.08)
      : FMIThemeDark.darkThemePrimaryPrimary.withOpacity(.08);

  // Work Items
  Color get fmiForm => brightness == Brightness.light
      ? FMIThemeLight.lightThemeSuccessSuccess
      : FMIThemeLight.lightThemeSuccessSuccess;

  Color get fmiFormContainer => brightness == Brightness.light
      ? FMIThemeLight.lightThemeSuccessSuccessContainer
      : FMIThemeLight.lightThemeSuccessSuccessContainer;

  Color get fmiNonAdverseTask => brightness == Brightness.light
      ? FMIThemeDark.darkThemeSecondaryOnSecondary
      : FMIThemeDark.darkThemeSecondaryOnSecondary;

  Color get fmiNonAdverseTaskContainer => brightness == Brightness.light
      ? FMIThemeLight.lightThemeSurfaceOnInverseSurface
      : FMIThemeLight.lightThemeSurfaceOnInverseSurface;

  Color get fmiAdverseTask => brightness == Brightness.light
      ? FMIThemeLight.lightThemeDangerDanger
      : FMIThemeLight.lightThemeDangerDanger;

  Color get fmiAdverseTaskContainer => brightness == Brightness.light
      ? FMIThemeLight.lightThemeDangerDangerContainer
      : FMIThemeLight.lightThemeDangerDangerContainer;

  Color get fmiTraining => brightness == Brightness.light
      ? FMIThemeLight.lightThemeTertiaryTertiary
      : FMIThemeLight.lightThemeTertiaryTertiary;

  Color get fmiTrainingContainer => brightness == Brightness.light
      ? FMIThemeLight.lightThemeTertiaryTertiaryContainer
      : FMIThemeLight.lightThemeTertiaryTertiaryContainer;

  Color get fmiMyAction => brightness == Brightness.light
      ? FMIThemeLight.lightThemePrimaryPrimary
      : FMIThemeLight.lightThemePrimaryPrimary;

  Color get fmiMyActionContainer => brightness == Brightness.light
      ? FMIThemeLight.lightThemeSecondarySecondaryContainer
      : FMIThemeLight.lightThemeSecondarySecondaryContainer;

  Color getFmiColor(FmiColor color) {
    Color result;
    switch (color) {
      case FmiColor.illustrationsOnBackgroundPurple:
        result = themeIllustrationsOnBackgroundPurple;
        break;
      case FmiColor.illustrationsBackgroundPurple:
        result = themeIllustrationsBackgroundPurple;
        break;
      case FmiColor.illustrationsOnBackgroundRed:
        result = themeIllustrationsOnBackgroundRed;
        break;
      case FmiColor.illustrationsBackgroundRed:
        result = themeIllustrationsBackgroundRed;
        break;
      case FmiColor.illustrationsOnBackgroundOrange:
        result = themeIllustrationsOnBackgroundOrange;
        break;
      case FmiColor.illustrationsBackgroundOrange:
        result = themeIllustrationsBackgroundOrange;
        break;
      case FmiColor.illustrationsOnBackgroundGreen:
        result = themeIllustrationsOnBackgroundGreen;
        break;
      case FmiColor.illustrationsBackgroundGreen:
        result = themeIllustrationsBackgroundGreen;
        break;
      case FmiColor.illustrationsOnBackgroundBlue:
        result = themeIllustrationsOnBackgroundBlue;
        break;
      case FmiColor.illustrationsBackgroundBlue:
        result = themeIllustrationsBackgroundBlue;
        break;
      case FmiColor.illustrationsOnBackgroundDarkBlue:
        result = themeIllustrationsOnBackgroundDarkBlue;
        break;
      case FmiColor.illustrationsBackgroundDarkBlue:
        result = themeIllustrationsBackgroundDarkBlue;
        break;
      case FmiColor.illustrationsBackgroundGray:
        result = themeIllustrationsBackgroundGray;
        break;
    }
    return result;
  }
}
