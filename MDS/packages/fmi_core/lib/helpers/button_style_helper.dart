import 'package:flutter/material.dart';

import '../fmi_core.dart';

class ButtonStyleHelper {
  @Deprecated('Replace with Filled Button')
  static ButtonStyle getFilledButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: Theme.of(context).colorScheme.primary)
        .copyWith(elevation: ButtonStyleButton.allOrNull(0.0));
  }

  @Deprecated('Replace with Filled Button. Add Secondary Filled Button Style.')
  static ButtonStyle getSecondaryButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onSecondary,
            backgroundColor: Theme.of(context).colorScheme.secondary)
        .copyWith(elevation: ButtonStyleButton.allOrNull(0.0));
  }

  @Deprecated('Replace with Filled Button')
  static ButtonStyle getTertiaryButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onTertiary,
            backgroundColor: Theme.of(context).colorScheme.tertiary)
        .copyWith(elevation: ButtonStyleButton.allOrNull(0.0));
  }

  static ButtonStyle getSecondaryFilledButtonStyle(BuildContext context) {
    return FilledButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.onSecondary,
        backgroundColor: Theme.of(context).colorScheme.secondary);
  }

  static ButtonStyle getHeroFilledButtonStyle(BuildContext context) {
    return FilledButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.chartGrayscaleGray0,
      backgroundColor:
          Theme.of(context).colorScheme.themeIllustrationsOnBackgroundBlue,
    );
  }

  static ButtonStyle getVisualDensityButtonStyle() {
    return const ButtonStyle(
      visualDensity: VisualDensity.standard,
      iconSize: WidgetStatePropertyAll(FMIThemeBase.baseIconSmall),
    );
  }
}
