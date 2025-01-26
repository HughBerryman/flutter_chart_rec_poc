import 'package:flutter/material.dart';

import '../../enums/snack_bar_type_enum.dart';

abstract class SnackBarService {
  void initialize(
      GlobalKey<ScaffoldMessengerState> applicationScaffoldMessengerState);

  void showDismissibleSnackBar(String text,
      {SnackBarType? snackBarType,
      SnackBarAction? snackBarAction,
      Duration? duration,
      IconData? icon});

  void showPinnedSnackBar(String text,
      {SnackBarType? snackBarType,
      SnackBarAction? snackBarAction,
      IconData? icon});
}
