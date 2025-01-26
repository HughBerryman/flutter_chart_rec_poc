import 'package:flutter/material.dart';

import 'svg_asset.dart';

class FmiNavigationDestination {
  final String label;
  final IconData? icon;
  final IconData? selectedIcon;
  final SvgAsset? svgAsset;
  final SvgAsset? selectedSvgAsset;
  final bool useBadge;

  FmiNavigationDestination(
      {required this.label,
      this.icon,
      this.selectedIcon,
      this.svgAsset,
      this.selectedSvgAsset,
      this.useBadge = false})
      : assert((icon != null || svgAsset != null),
            'One of the parameters must be provided');
}
