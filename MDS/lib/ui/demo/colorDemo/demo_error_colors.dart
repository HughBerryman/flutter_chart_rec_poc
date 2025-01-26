import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/colorDemo/colorDemo.dart';
import 'package:poc/ui/demo/component_header.dart';
import 'package:poc/ui/demo/component_subheader.dart';

class DemoErrorColors extends StatelessWidget {
  const DemoErrorColors({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> _errorDangerColors = <Color>[
      Theme.of(context).colorScheme.error,
      Theme.of(context).colorScheme.onError,
      Theme.of(context).colorScheme.errorContainer,
      Theme.of(context).colorScheme.onErrorContainer,
      Theme.of(context).colorScheme.fmiBaseThemeErrorInverseError,
    ];
    List<String> _errorDangerColorNames = <String>[
      'error',
      'onError',
      'errorContainer',
      'onErrorContainer',
      'inverseError'
    ];
    List<String> _errorDangerColorSyntax = <String>[
      'error',
      'onError',
      'errorContainer',
      'onErrorContainer',
      'fmiBaseThemeErrorInverseError'
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Danger Colors'),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: ComponentSubheader(
              title: 'Danger - Theme.of(context).colorScheme.{name}'),
        ),
        ColorTileGrid(
          colors: _errorDangerColors,
          colorNames: _errorDangerColorNames,
          colorSyntax: _errorDangerColorSyntax,
        )
      ],
    );
  }
}
