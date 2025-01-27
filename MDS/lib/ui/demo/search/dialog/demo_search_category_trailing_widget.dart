import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoSearchCategoryTrailingWidget extends StatelessWidget {
  final Function() onPressed;
  const DemoSearchCategoryTrailingWidget({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: FMIThemeBase.baseIconMedium,
        color: Theme.of(context).colorScheme.secondary,
        onPressed: onPressed,
        icon: const FaIcon(FontAwesomeIcons.solidArrowRightLong));
  }
}
