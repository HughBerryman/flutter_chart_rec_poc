import 'package:flutter/material.dart';

class FmiTourDialogTheme {
  static ThemeData tourDialog(BuildContext context) {
    DialogTheme dialogTheme = Theme.of(context).dialogTheme as DialogTheme;

    return Theme.of(context).copyWith(
      dialogTheme: dialogTheme.copyWith(
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
    );
  }
}
