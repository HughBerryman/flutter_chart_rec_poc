import 'package:flutter/material.dart';
import 'package:fmi_core/ui/components/candyBar/enums/fmi_candy_bar_type.dart';

class FmiCandyBarItem {
  /// Create a FmiCandyBarItem.
  ///
  /// The [description], [buttonText], and [onTap] arguments must not be null.
  ///
  /// The [type] has default value = FmiCandyBarType.success.
  /// It will define default color of the widget.
  ///
  /// You can override default color by using [iconColor], [backgroundColor], [titleColor], [descriptionColor], and [buttonTextColor]
  const FmiCandyBarItem({
    this.icon,
    this.iconColor,
    this.type = FmiCandyBarType.success,
    this.backgroundColor,
    this.title,
    this.titleColor,
    required this.description,
    this.descriptionColor,
    required this.buttonText,
    this.buttonTextColor,
    required this.onTap,
    this.onRemoved,
  });

  final IconData? icon;
  final Color? iconColor;
  final FmiCandyBarType type;
  final Color? backgroundColor;
  final String? title;
  final Color? titleColor;
  final String description;
  final Color? descriptionColor;
  final String buttonText;
  final Color? buttonTextColor;
  final Function()? onTap;
  final Function()? onRemoved;
}
