import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../designTokens/fmi_theme_base.dart';

class FmiMapMarker extends StatefulWidget {
  String id;
  Color backgroundColor;
  FaIcon icon;
  Color? selectedBackgroundColor;
  FaIcon? selectedIcon;
  Function(BuildContext, String, bool)? onTap;
  bool isSelected;

  FmiMapMarker({super.key,
    required this.id,
    required this.backgroundColor,
    required this.icon,
    this.selectedBackgroundColor,
    this.selectedIcon,
    this.onTap,
    required this.isSelected
  });

  @override
  _FmiMapMarkerState createState() => _FmiMapMarkerState();
}

class _FmiMapMarkerState extends State<FmiMapMarker> {
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  void didUpdateWidget(FmiMapMarker oldWidget) {
    super.didUpdateWidget(oldWidget);

    _isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });

        if (widget.onTap != null) {
          widget.onTap!(context, widget.id, _isSelected);
        }
      },
      child: CircleAvatar(
          radius: FMIThemeBase.baseImageCircleMedium,
          backgroundColor: _isSelected ? widget.selectedBackgroundColor ??
              widget.backgroundColor : widget.backgroundColor,
          child: _isSelected
              ? widget.selectedIcon ?? widget.icon
              : widget.icon
      ),
    );
  }
}