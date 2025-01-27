import 'package:flutter/material.dart';

import '../fmi_theme_base.dart';

class FmiConfirmationDialogTheme {
  static ThemeData confirmationDialog(BuildContext context) {
    DialogTheme dialogTheme =
        Theme.of(context).dialogTheme;

    return Theme.of(context)
        .copyWith(dialogTheme: dialogTheme.copyWith(
            contentTextStyle: FmiThemeBase.fmiThemeDataBase.textTheme.bodyLarge
                ?.apply(color: Theme.of(context).colorScheme.onSecondaryContainer)
    ));
  }
}