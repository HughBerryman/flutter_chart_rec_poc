import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/component_header.dart';
import 'package:poc/ui/demo/component_subheader.dart';

import 'colorDemo.dart';

class DemoChartColors extends StatelessWidget {
  const DemoChartColors({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> _chartColors = <Color>[
      Theme.of(context).colorScheme.chartBlue,
      Theme.of(context).colorScheme.chartBlueEvp,
      Theme.of(context).colorScheme.chartBlueGray,
      Theme.of(context).colorScheme.chartBlueGray300,
      Theme.of(context).colorScheme.chartDarkBlue,
      Theme.of(context).colorScheme.chartDeepBlue,
      Theme.of(context).colorScheme.chartGreen,
      Theme.of(context).colorScheme.chartLime,
      Theme.of(context).colorScheme.chartTeal,
      Theme.of(context).colorScheme.chartDeepFuchsia,
      Theme.of(context).colorScheme.chartFuchsia,
      Theme.of(context).colorScheme.chartLightPurple,
      Theme.of(context).colorScheme.chartPink,
      Theme.of(context).colorScheme.chartPurple,
      Theme.of(context).colorScheme.chartCopper,
      Theme.of(context).colorScheme.chartCopperEvp,
      Theme.of(context).colorScheme.chartError,
      Theme.of(context).colorScheme.chartRose,
      Theme.of(context).colorScheme.chartAmber,
      Theme.of(context).colorScheme.chartOrange,
      Theme.of(context).colorScheme.chartYellow,
      Theme.of(context).colorScheme.chartGrayscaleGray0,
      Theme.of(context).colorScheme.chartGrayscaleGray10,
      Theme.of(context).colorScheme.chartGrayscaleGray20,
      Theme.of(context).colorScheme.chartGrayscaleGray30,
      Theme.of(context).colorScheme.chartGrayscaleGray40,
      Theme.of(context).colorScheme.chartGrayscaleGray50,
      Theme.of(context).colorScheme.baseGridLine,
      Theme.of(context).colorScheme.textChartText,
      Theme.of(context).colorScheme.textChartText2
    ];
    List<String> _chartColorsNames = <String>[
      'chartBlue',
      'chartBlueEvp',
      'chartBlueGray',
      'chartBlueGray300',
      'chartDarkBlue',
      'chartDeepBlue',
      'chartGreen',
      'chartLime',
      'chartTeal',
      'chartDeepFuchsia',
      'chartFuchsia',
      'chartLightPurple',
      'chartPink',
      'chartPurple',
      'chartCopper',
      'chartCopperEvp',
      'chartError',
      'chartRose',
      'chartAmber',
      'chartOrange',
      'chartYellow',
      'chartGrayscaleGray0',
      'chartGrayscaleGray10',
      'chartGrayscaleGray20',
      'chartGrayscaleGray30',
      'chartGrayscaleGray40',
      'chartGrayscaleGray50',
      'baseGridLine',
      'textChartText',
      'textChartText2',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Chart Colors'),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: ComponentSubheader(
              title: 'Chart Colors - Theme.of(context).colorScheme.{name}'),
        ),
        ColorTileGrid(
          colors: _chartColors,
          colorNames: _chartColorsNames,
          colorSyntax: _chartColorsNames,
        )
      ],
    );
  }
}
