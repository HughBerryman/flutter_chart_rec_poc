import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiMultiDialogIconButtonModel<T, G> {
  FmiMultiDialogIconButtonModel(
      {this.value,
        this.text,
        this.icon,
        this.svgIcon,
        this.iconColor = IconColors.primary,
        this.initialIsSelected = false,
        this.initialDialogData,
        this.dialogOptions});

  String? value;
  String? text;
  IconData? icon;
  FASafeIcons? svgIcon;
  IconColors? iconColor;
  bool initialIsSelected;
  T? initialDialogData;
  G? dialogOptions;
}
