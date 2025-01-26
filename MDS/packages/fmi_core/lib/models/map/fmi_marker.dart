import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../designTokens/fmi_theme_base.dart';
import 'fmi_map_marker.dart';

class FmiMarker extends Marker {
  String id;
  Color backgroundColor;
  FaIcon icon;
  Color? selectedBackgroundColor;
  FaIcon? selectedIcon;
  Function(BuildContext, String, bool)? onTap;
  bool isSelected;

  FmiMarker({
    required super.point,
    required this.id,
    required this.backgroundColor,
    required this.icon,
    this.selectedBackgroundColor,
    this.selectedIcon,
    this.onTap,
    this.isSelected = false,
  }) : super(
      width: FMIThemeBase.baseContainerDimension40,
      height: FMIThemeBase.baseContainerDimension40,
    builder: (BuildContext context) {
      return FmiMapMarker(
        id: id,
        backgroundColor: backgroundColor,
        icon: icon,
        selectedIcon: selectedIcon ?? icon,
        selectedBackgroundColor: selectedBackgroundColor ?? backgroundColor,
        onTap: onTap,
        isSelected: isSelected
      );
    }
  );
}