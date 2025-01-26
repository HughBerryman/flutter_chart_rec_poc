import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoNavigationRail extends StatelessWidget {
  const DemoNavigationRail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.basePaddingLarge),
          child: ComponentHeader(title: 'Fmi Navigation Rail'),
        ),
        DemoNavigationRailFaIcons(),
        DemoNavigationRailSvgs(),
        DemoNavigationRailFmiIcons(),
        DemoNavigationRailMixed(),
        DemoNavigationRailFaIconsNestedScaffold(),
        DemoNavigationRailDarkMode(),
        DemoNavigationRailElevation(),
      ],
    );
  }
}
