import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

import 'demo_navigation_rail_faicons_darkMode.dart';

class DemoNavigationRailDarkModeWrapper extends StatelessWidget {
  const DemoNavigationRailDarkModeWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: FmiThemeDark.fmiThemeDataDark,
        child: const DemoMainNavigationRail());
  }
}
