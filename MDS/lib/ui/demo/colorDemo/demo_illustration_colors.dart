import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/colorDemo/colorDemo.dart';
import 'package:poc/ui/demo/component_header.dart';
import 'package:poc/ui/demo/component_subheader.dart';

class DemoIllustrationColors extends StatelessWidget {
  const DemoIllustrationColors({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> _illustrationColors = <Color>[
      Theme.of(context).colorScheme.themeIllustrationsBackgroundRed,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundRed,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundDarkOrange,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundDarkOrange,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundOrange,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundOrange,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundAmber,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundAmber,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundGreen,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundGreen,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundLime,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundLime,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundBlue,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundBlue,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundTeal,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundTeal,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundDarkBlue,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundDarkBlue,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundBlueGray,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundBlueGray,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundPurple,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundPurple,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundIndigo,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundIndigo,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundDarkPurple,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundDarkPurple,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundLavender,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundLavender,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundPink,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundPink,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundCopper,
      Theme.of(context).colorScheme.themeIllustrationsOnBackgroundCopper,
      Theme.of(context).colorScheme.themeIllustrationsBackgroundGray,
    ];
    List<String> _illustrationColorsNames = <String>[
      'themeIllustrationsBackgroundRed',
      'themeIllustrationsOnBackgroundRed',
      'themeIllustrationsBackgroundDarkOrange',
      'themeIllustrationsOnBackgroundDarkOrange',
      'themeIllustrationsBackgroundOrange',
      'themeIllustrationsOnBackgroundOrange',
      'themeIllustrationsBackgroundAmber',
      'themeIllustrationsOnBackgroundAmber',
      'themeIllustrationsBackgroundGreen',
      'themeIllustrationsOnBackgroundGreen',
      'themeIllustrationsBackgroundLime',
      'themeIllustrationsOnBackgroundLime',
      'themeIllustrationsBackgroundBlue',
      'themeIllustrationsOnBackgroundBlue',
      'themeIllustrationsBackgroundTeal',
      'themeIllustrationsOnBackgroundTeal',
      'themeIllustrationsBackgroundDarkBlue',
      'themeIllustrationsOnBackgroundDarkBlue',
      'themeIllustrationsBackgroundBlueGray',
      'themeIllustrationsOnBackgroundBlueGray',
      'themeIllustrationsBackgroundPurple',
      'themeIllustrationsOnBackgroundPurple',
      'themeIllustrationsBackgroundIndigo',
      'themeIllustrationsOnBackgroundIndigo',
      'themeIllustrationsBackgroundDarkPurple',
      'themeIllustrationsOnBackgroundDarkPurple',
      'themeIllustrationsBackgroundLavender',
      'themeIllustrationsOnBackgroundLavender',
      'themeIllustrationsBackgroundPink',
      'themeIllustrationsOnBackgroundPink',
      'themeIllustrationsBackgroundCopper',
      'themeIllustrationsOnBackgroundCopper',
      'themeIllustrationsBackgroundGray',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Illustration Colors'),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: ComponentSubheader(
              title:
                  'Illustration Colors - Theme.of(context).colorScheme.{name}'),
        ),
        ColorTileGrid(
          colors: _illustrationColors,
          colorNames: _illustrationColorsNames,
          colorSyntax: _illustrationColorsNames,
        )
      ],
    );
  }
}
