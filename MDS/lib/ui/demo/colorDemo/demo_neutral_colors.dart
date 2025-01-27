import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/component_header.dart';
import 'package:poc/ui/demo/component_subheader.dart';

import 'colorDemo.dart';

class DemoNeutralColors extends StatelessWidget {
  const DemoNeutralColors({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> _neutralSurfaceColors = <Color>[
      Theme.of(context).colorScheme.surface,
      Theme.of(context).colorScheme.onSurface,
      Theme.of(context).colorScheme.surfaceContainerHighest,
      Theme.of(context).colorScheme.onSurfaceVariant,
      Theme.of(context).colorScheme.inverseSurface,
      Theme.of(context).colorScheme.onInverseSurface
    ];
    List<String> _neutralSurfaceColorNames = <String>[
      'surface',
      'onSurface',
      'surfaceContainerHighest',
      'onSurfaceVariant',
      'inverseSurface',
      'onInverseSurface'
    ];
    List<String> _neutralSurfaceColorSyntax = <String>[
      'surface',
      'onSurface',
      'surfaceContainerHighest',
      'onSurfaceVariant',
      'inverseSurface',
      'onInverseSurface'
    ];

    List<Color> _neutralAltSurfaceColors = <Color>[
      Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceAltSurface,
      Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceOnAltSurface,
      Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseAltSurface,
      Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseOnAltSurface
    ];
    List<String> _neutralAltSurfaceColorNames = <String>[
      'AltSurface',
      'OnAltSurface',
      'InverseAltSurface',
      'InverseOnAltSurface'
    ];
    List<String> _neutralAltSurfaceColorSyntax = <String>[
      'fmiBaseThemeAltSurfaceAltSurface',
      'fmiBaseThemeAltSurfaceOnAltSurface',
      'fmiBaseThemeAltSurfaceInverseAltSurface',
      'fmiBaseThemeAltSurfaceInverseOnAltSurface'
    ];
    List<Color> _neutralOutlineColors = <Color>[
      Theme.of(context).colorScheme.outline
    ];
    List<String> _neutralOutlineColorNames = <String>[
      'outline',
    ];
    List<String> _neutralOutlineColorSyntax = <String>[
      'outline',
    ];
    List<Color> _neutralShadowColors = <Color>[
      Theme.of(context).colorScheme.shadow
    ];
    List<String> _neutralShadowColorNames = <String>[
      'shadow',
    ];
    List<String> _neutralShadowColorSyntax = <String>[
      'shadow',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Neutral Colors'),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: ComponentSubheader(
              title: 'Surface - Theme.of(context).colorScheme.{name}'),
        ),
        ColorTileGrid(
          colors: _neutralSurfaceColors,
          colorNames: _neutralSurfaceColorNames,
          colorSyntax: _neutralSurfaceColorSyntax,
        ),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: ComponentSubheader(
              title: 'Alt Surface - Theme.of(context).colorScheme.{name}'),
        ),
        ColorTileGrid(
          colors: _neutralAltSurfaceColors,
          colorNames: _neutralAltSurfaceColorNames,
          colorSyntax: _neutralAltSurfaceColorSyntax,
        ),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: ComponentSubheader(
              title: 'Outline - Theme.of(context).colorScheme.{name}'),
        ),
        ColorTileGrid(
          colors: _neutralOutlineColors,
          colorNames: _neutralOutlineColorNames,
          colorSyntax: _neutralOutlineColorSyntax,
        ),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: ComponentSubheader(
              title: 'Shadow - Theme.of(context).colorScheme.{name}'),
        ),
        ColorTileGrid(
          colors: _neutralShadowColors,
          colorNames: _neutralShadowColorNames,
          colorSyntax: _neutralShadowColorSyntax,
        ),
      ],
    );
  }
}
