import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

import 'demo.dart';

class DemoProgressBar extends StatelessWidget {
  const DemoProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ComponentHeader(title: 'Fmi Progress Bar'),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              title: 'Progress Title - Positive',
              unit: 'kt',
              trackLength: 0,
              targetValue: 0,
              progressValue: 130),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              title: 'Progress Title - Negative',
              unit: 'kt',
              trackLength: 100,
              targetValue: 50,
              progressValue: 32.9),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              title: 'Progress Title - Mid',
              unit: 'kt',
              trackLength: 100,
              targetValue: 50,
              progressValue: 52.9),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              title: 'Progress Title - High',
              unit: 'kt',
              trackLength: 100,
              targetValue: 75,
              progressValue: 98),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              title: 'Progress Title - Zero',
              unit: 'kt',
              showVariance: true,
              trackLength: 200,
              progressValue: 0),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              title:
                  'Progress Title - Positive & ProgressBarColorScheme.primary',
              colorScheme: ProgressBarColorScheme.primary,
              unit: 'kt',
              trackLength: 0,
              targetValue: 0,
              progressValue: 130),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              unit: 'kt',
              showVariance: false,
              targetValue: 50,
              trackLength: 100,
              progressValue: 100),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              unit: 'kt',
              showVariance: false,
              targetValue: 37,
              trackLength: 74,
              progressValue: 4),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              unit: 'kt',
              showVariance: false,
              trackLength: 74,
              progressValue: 40),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child:
              FmiProgressBar(unit: 'kt', trackLength: 1000, progressValue: 40),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePaddingXLarge,
              bottom: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(unit: 'kt', trackLength: 50, progressValue: 50),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePaddingXLarge,
              bottom: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              unit: 'kt',
              targetValue: 5000,
              trackLength: 10000,
              progressValue: 4000),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePaddingXLarge,
              bottom: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              unit: 'kt',
              numberFormat: '####.##',
              showTargetValue: false,
              targetValue: 1084.4,
              trackLength: 1084.4,
              progressValue: 1032.1),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePaddingXLarge,
              bottom: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              unit: 'kt',
              showTargetValue: false,
              showTargetBar: false,
              targetValue: 84.4,
              trackLength: 84.4,
              progressValue: 32.1),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              colorScheme: ProgressBarColorScheme.primary,
              unit: 'kt',
              trackLength: 1000,
              progressValue: 40),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePaddingXLarge,
              bottom: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              colorScheme: ProgressBarColorScheme.primary,
              unit: 'kt',
              targetValue: 5000,
              trackLength: 10000,
              progressValue: 4000),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePaddingXLarge,
              bottom: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              colorScheme: ProgressBarColorScheme.primary,
              unit: 'kt',
              numberFormat: '####.##',
              showTargetValue: false,
              targetValue: 1084.4,
              trackLength: 1084.4,
              progressValue: 1032.1),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              colorScheme: ProgressBarColorScheme.primary,
              unit: 'kt',
              showVariance: false,
              trackLength: 74,
              progressValue: 40),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              unit: 'kt',
              varianceValue: -6.25,
              targetValue: 80,
              trackLength: 100,
              progressValue: 75),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              unit: 'kt',
              varianceValue: 75,
              targetValue: 20,
              trackLength: 100,
              progressValue: 35),
        ),
        Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: FmiProgressBar(
              colorScheme: ProgressBarColorScheme.primary,
              unit: 'kt',
              showVariance: false,
              showTargetValue: false,
              showTrackLength: false,
              trackLength: 100,
              progressValue: 98),
        ),
      ],
    );
  }
}
