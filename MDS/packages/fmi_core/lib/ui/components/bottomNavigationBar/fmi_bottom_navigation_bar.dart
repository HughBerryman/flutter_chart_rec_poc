import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiBottomNavigationBar extends StatelessWidget {
  final List<FmiNavigationDestination> destinations;
  final int currentIndex;
  final bool? showUnselectedLabels;
  final bool? showSelectedLabels;
  final Function(int)? onTap;
  final bool? enableFab;
  final Function()? onFabTap;
  final bool? forceDarkMode;
  final IconData? fabIcon;
  final FabThemeEnum? fabTheme;

  const FmiBottomNavigationBar(
      {super.key,
      required this.destinations,
      required this.currentIndex,
      this.showUnselectedLabels = false,
      this.showSelectedLabels = true,
      this.onTap,
      this.enableFab = false,
      this.onFabTap,
      this.forceDarkMode = false,
      this.fabIcon = FontAwesomeIcons.solidRocket,
      this.fabTheme});

  @override
  Widget build(BuildContext context) {
    if (forceDarkMode!) {
      return Theme(data: FmiThemeDark.fmiThemeDataDark, child: bottomNav());
    } else {
      return bottomNav();
    }
  }

  FmiBottomNavigationBarWidget bottomNav() {
    return FmiBottomNavigationBarWidget(
      destinations: destinations,
      currentIndex: currentIndex,
      showUnselectedLabels: showUnselectedLabels,
      showSelectedLabels: showSelectedLabels,
      onTap: onTap,
      enableFab: enableFab,
      onFabTap: onFabTap,
      fabIcon: fabIcon!,
      fabTheme: fabTheme,
    );
  }
}
