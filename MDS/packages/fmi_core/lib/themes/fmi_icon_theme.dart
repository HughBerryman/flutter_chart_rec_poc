import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiIconThemeData {
  static IconThemeData onSecondaryContainer(BuildContext context) {
    return IconThemeData(
        size: FMIThemeBase.baseIconMedium,
        color: Theme.of(context).colorScheme.onSecondaryContainer);
  }
}
