import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/colorDemo/colorDemo.dart';
import 'package:poc/ui/demo/component_header.dart';
import 'package:poc/ui/demo/component_subheader.dart';

class DemoWarningColors extends StatelessWidget {
  const DemoWarningColors({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> _warningColors = <Color>[
      Theme.of(context).colorScheme.fmiBaseThemeWarningWarning,
      Theme.of(context).colorScheme.fmiBaseThemeWarningOnWarning,
      Theme.of(context).colorScheme.fmiBaseThemeWarningWarningContainer,
      Theme.of(context).colorScheme.fmiBaseThemeWarningOnWarningContainer,
      Theme.of(context).colorScheme.fmiBaseThemeWarningInverseWarning,
    ];
    List<String> _warningColorNames = <String>[
      'warning',
      'onWarning',
      'warningContainer',
      'onWarningContainer',
      'inverseWarning',
    ];
    List<String> _warningColorSyntax = <String>[
      'fmiBaseThemeWarningWarning',
      'fmiBaseThemeWarningOnWarning',
      'fmiBaseThemeWarningWarningContainer',
      'fmiBaseThemeWarningOnWarningContainer',
      'fmiBaseThemeWarningInverseWarning',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Warning Colors'),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: ComponentSubheader(
              title: 'Warning - Theme.of(context).colorScheme.{name}'),
        ),
        ColorTileGrid(
          colors: _warningColors,
          colorNames: _warningColorNames,
          colorSyntax: _warningColorSyntax,
        )
      ],
    );
  }
}
