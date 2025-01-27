import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoSearchOptionLeadingWidget extends StatelessWidget {
  const DemoSearchOptionLeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: FMIThemeBase.baseContainerDimension48,
      height: FMIThemeBase.baseContainerDimension48,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.themeIllustrationsBackgroundBlue,
          borderRadius: const BorderRadius.all(
              Radius.circular(FMIThemeBase.baseBorderRadiusMedium))),
      child: Center(
        child: FaIcon(
          FontAwesomeIcons.solidFileLines,
          color:
              Theme.of(context).colorScheme.themeIllustrationsOnBackgroundBlue,
          size: FMIThemeBase.baseIconLarge,
        ),
      ),
    );
  }
}
