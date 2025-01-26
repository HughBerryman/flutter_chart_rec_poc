import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/appBarTopDemo/forceDarkMode/main_nav_app_bar.dart';

class AppBarWrapper extends StatelessWidget {
  const AppBarWrapper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: FmiThemeDark.fmiThemeDataDark, child: const MainNavAppBar());
  }
}
