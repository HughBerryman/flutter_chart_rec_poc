import 'package:flutter/material.dart';

import '../../../../../fmi_core.dart';

class ConditionalQuestionButton<T> {
  String text;
  String value;
  ConditionalQuestionButtonType buttonType;
  bool includeInSummary;
  bool showDialog;
  T? dialogOptions;
  IconData? iconData;
  IconData? leadingIconData;

  ConditionalQuestionButton(
      {required this.text,
      required this.value,
      required this.buttonType,
      this.includeInSummary = false,
      this.showDialog = false,
      this.dialogOptions,
      this.iconData,
      this.leadingIconData});
}
