import 'package:flutter/material.dart';
import 'package:fmi_core/enums/fab_theme_enum.dart';
import 'package:fmi_core/extensions/color_scheme_extension.dart';
import 'package:fmi_core/mixins/navigation_mixin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationBarFab extends StatelessWidget with NavigationMixin {
  const NavigationBarFab(
      {super.key, required this.fabIcon, this.fabOnTap, this.fabTheme});

  final IconData fabIcon;
  final FabThemeEnum? fabTheme;
  final Function()? fabOnTap;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: getFabThemeData(context, fabTheme),
      child: FloatingActionButton(
        onPressed: fabOnTap,
        child: FaIcon(
          fabIcon,
          color: fabTheme == null
              ? Theme.of(context).colorScheme.chartGrayscaleGray0
              : null,
        ),
      ),
    );
  }
}
