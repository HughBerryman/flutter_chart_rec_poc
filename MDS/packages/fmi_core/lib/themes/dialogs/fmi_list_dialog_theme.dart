import 'package:flutter/material.dart';

import '../fmi_theme_base.dart';

class FmiListDialogTheme {
  static ThemeData listDialog(BuildContext context) {
    DialogTheme dialogTheme = Theme.of(context).dialogTheme as DialogTheme;
    ListTileThemeData listTileTheme = Theme.of(context).listTileTheme;

    return Theme.of(context).copyWith(
        dialogTheme: dialogTheme.copyWith(
            contentTextStyle: FmiThemeBase.fmiThemeDataBase.textTheme.bodyLarge
                ?.apply(
                    color: Theme.of(context).colorScheme.onSecondaryContainer)),
        listTileTheme: listTileTheme.copyWith(tileColor: Colors.transparent));
  }

  static ThemeData listDialogSecondaryContainer(BuildContext context) {
    DialogTheme dialogTheme = Theme.of(context).dialogTheme as DialogTheme;
    ListTileThemeData listTileTheme = Theme.of(context).listTileTheme;

    return Theme.of(context).copyWith(
        dialogTheme: dialogTheme.copyWith(
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            contentTextStyle: FmiThemeBase.fmiThemeDataBase.textTheme.bodyLarge
                ?.apply(
                    color: Theme.of(context).colorScheme.onSecondaryContainer)),
        listTileTheme: listTileTheme.copyWith(tileColor: Colors.transparent));
  }
}
