import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/component_header.dart';
import 'package:poc/ui/demo/component_subheader.dart';

import 'colorDemo.dart';

class DemoKeyColors extends StatelessWidget {
  const DemoKeyColors({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> _keyPrimaryColors = <Color>[
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.onPrimary,
      Theme.of(context).colorScheme.primaryContainer,
      Theme.of(context).colorScheme.onPrimaryContainer,
      Theme.of(context).colorScheme.inversePrimary
    ];
    List<String> _keyPrimaryColorNames = <String>[
      'primary',
      'onPrimary',
      'primaryContainer',
      'onPrimaryContainer',
      'inversePrimary'
    ];
    List<String> _keyPrimaryColorSyntax = <String>[
      'primary',
      'onPrimary',
      'primaryContainer',
      'onPrimaryContainer',
      'inversePrimary'
    ];
    List<Color> _keySecondaryColors = <Color>[
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).colorScheme.onSecondary,
      Theme.of(context).colorScheme.secondaryContainer,
      Theme.of(context).colorScheme.onSecondaryContainer,
      Theme.of(context).colorScheme.fmiBaseThemeSecondaryInverseSecondary
    ];
    List<String> _keySecondaryColorNames = <String>[
      'secondary',
      'onSecondary',
      'secondaryContainer',
      'onSecondaryContainer',
      'inverseSecondary'
    ];
    List<String> _keySecondaryColorSyntax = <String>[
      'secondary',
      'onSecondary',
      'secondaryContainer',
      'onSecondaryContainer',
      'fmiBaseThemeSecondaryInverseSecondary'
    ];
    List<Color> _keyTertiaryColors = <Color>[
      Theme.of(context).colorScheme.tertiary,
      Theme.of(context).colorScheme.onTertiary,
      Theme.of(context).colorScheme.tertiaryContainer,
      Theme.of(context).colorScheme.onTertiaryContainer,
      Theme.of(context).colorScheme.fmiBaseThemeTertiaryInverseTertiary
    ];
    List<String> _keyTertiaryColorNames = <String>[
      'tertiary',
      'onTertiary',
      'TertiaryContainer',
      'onTertiaryContainer',
      'inverseTertiary'
    ];
    List<String> _keyTertiaryColorSyntax = <String>[
      'tertiary',
      'onTertiary',
      'TertiaryContainer',
      'onTertiaryContainer',
      'fmiBaseThemeTertiaryInverseTertiary'
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Key Colors'),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: ComponentSubheader(
              title: 'Primary - Theme.of(context).colorScheme.{name}'),
        ),
        ColorTileGrid(
          colors: _keyPrimaryColors,
          colorNames: _keyPrimaryColorNames,
          colorSyntax: _keyPrimaryColorSyntax,
        ),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: ComponentSubheader(
              title: 'Secondary - Theme.of(context).colorScheme.{name}'),
        ),
        ColorTileGrid(
            colors: _keySecondaryColors,
            colorNames: _keySecondaryColorNames,
            colorSyntax: _keySecondaryColorSyntax),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: ComponentSubheader(
              title: 'Tertiary - Theme.of(context).colorScheme.{name}'),
        ),
        ColorTileGrid(
            colors: _keyTertiaryColors,
            colorNames: _keyTertiaryColorNames,
            colorSyntax: _keyTertiaryColorSyntax)
      ],
    );
  }
}
