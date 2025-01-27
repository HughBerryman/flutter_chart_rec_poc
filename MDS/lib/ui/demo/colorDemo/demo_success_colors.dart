import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/colorDemo/colorDemo.dart';
import 'package:poc/ui/demo/component_header.dart';
import 'package:poc/ui/demo/component_subheader.dart';

class DemoSuccessColors extends StatelessWidget {
  const DemoSuccessColors({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> _successColors = <Color>[
      Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess,
      Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccessContainer,
      Theme.of(context).colorScheme.fmiBaseThemeSuccessOnSuccess,
      Theme.of(context).colorScheme.fmiBaseThemeSuccessOnSuccessContainer,
      Theme.of(context).colorScheme.fmiBaseThemeSuccessInverseSuccess,
    ];
    List<String> _successColorNames = <String>[
      'success',
      'successContainer',
      'onSuccess',
      'onSuccessContainer',
      'inverseSuccess'
    ];
    List<String> _successColorSyntax = <String>[
      'fmiBaseThemeSuccessSuccess',
      'fmiBaseThemeSuccessSuccessContainer',
      'fmiBaseThemeSuccessOnSuccess',
      'fmiBaseThemeSuccessOnSuccessContainer',
      'fmiBaseThemeSuccessInverseSuccess',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Success Colors'),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: ComponentSubheader(
              title: 'Success - Theme.of(context).colorScheme.{name}'),
        ),
        ColorTileGrid(
          colors: _successColors,
          colorNames: _successColorNames,
          colorSyntax: _successColorSyntax,
        )
      ],
    );
  }
}
