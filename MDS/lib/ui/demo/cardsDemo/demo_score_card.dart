import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../demo.dart';

class DemoScorecard extends StatefulWidget {
  const DemoScorecard({super.key});

  @override
  State<DemoScorecard> createState() => _DemoScorecardState();
}

class DemoScorecardData {
  DemoScorecardData(this.dataValue, this.dataMax);
  final double dataValue;
  final double dataMax;
}

class _DemoScorecardState extends State<DemoScorecard> {
  Image placeholderImg =
      Image.asset('assets/images/placeholder/placeholder_barChart.png');
  Random random = Random();
  late bool isSelected;
  @override
  void initState() {
    isSelected = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<DemoScorecardData> chartData = [
      DemoScorecardData(90, 100),
      DemoScorecardData(500, 600),
      DemoScorecardData(30, 100),
    ];

    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop('dialog');
      },
    );
    Widget _dialog = AlertDialog(
        title: const Text('Scorecard Dialog'),
        content: const Text('Click the OK button to close'),
        actions: [okButton]);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Scorecards'),
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
        Wrap(
          children: [
            Container(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                title: "Sales",
                metric: "345.8",
                unit: "M",
                onPressed: () {
                  showDialog(context: context, builder: (_) => _dialog);
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                title: "Sales",
                metric: "345.8",
                unit: "M",
                trend: ScorecardTrend.up,
                onPressed: () {
                  showDialog(context: context, builder: (_) => _dialog);
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                title: "Avg. session",
                metric: "4:53",
                unit: "H",
                trend: ScorecardTrend.down,
                onPressed: () {
                  showDialog(context: context, builder: (_) => _dialog);
                },
              ),
            ),
          ],
        ),
        Wrap(
          children: [
            Container(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                isChecked: true,
                title: "Sales",
                metric: "345.8",
                unit: "M",
                subtitle: '+11% of target',
                onPressed: () {},
              ),
            ),
            Container(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                isChecked: true,
                title: "Sales",
                metric: "345.8",
                unit: "M",
                subtitle: '+11% of target',
                trend: ScorecardTrend.up,
                onPressed: () {},
              ),
            ),
            Container(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                isChecked: true,
                title: "Avg. session",
                metric: "4:53",
                unit: "H",
                subtitle: '-55.6% of target',
                trend: ScorecardTrend.down,
                onPressed: () {},
              ),
            ),
          ],
        ),
        Wrap(
          children: [
            Container(
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeAltSurfaceAltSurface,
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                title: "Conversion",
                metric: "537",
                subtitle: '+22% of target',
                element: placeholderImg,
                onPressed: () {},
                isTransparent: true,
              ),
            ),
            Container(
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeAltSurfaceAltSurface,
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                title: "Conversion",
                metric: "537",
                subtitle: '+22% of target',
                trend: ScorecardTrend.up,
                element: placeholderImg,
                onPressed: () {},
                isTransparent: true,
              ),
            ),
            Container(
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeAltSurfaceAltSurface,
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                title: "Conversion",
                metric: "537",
                subtitle: '-55.6% of target',
                trend: ScorecardTrend.down,
                element: placeholderImg,
                onPressed: () {},
                isTransparent: true,
              ),
            ),
          ],
        ),
        Wrap(
          children: [
            Container(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                title: "Conversion",
                metric: "537",
                unit: "tons",
                subtitle: '+22% of target',
                element: placeholderImg,
                hasBorder: false,
                hasElevation: false,
                selectedBehaviorOff: true,
                metricColor: ScorecardTrend.standard,
                isFlush: true,
                isMini: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                title: "Conversion",
                metric: "537",
                unit: "tons",
                subtitle: '+22% of target',
                trend: ScorecardTrend.up,
                element: placeholderImg,
                hasBorder: false,
                hasElevation: false,
                selectedBehaviorOff: true,
                metricColor: ScorecardTrend.up,
                isFlush: true,
                isMini: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                title: "Conversion",
                metric: "537",
                unit: "tons",
                subtitle: '-55.6% of target',
                trend: ScorecardTrend.down,
                element: placeholderImg,
                hasBorder: false,
                hasElevation: false,
                selectedBehaviorOff: true,
                metricColor: ScorecardTrend.down,
                isFlush: true,
                isMini: true,
              ),
            ),
          ],
        ),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                title: "Current TPH",
                trend: ScorecardTrend.standard,
                isMini: true,
                isFlush: true,
                hasBorder: false,
                hasElevation: false,
                selectedBehaviorOff: true,
                element: getRadialGraph(chartData[0], 'TPH',
                    Theme.of(context).colorScheme.primary, context),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                title: "Mill Power",
                trend: ScorecardTrend.up,
                element: getRadialGraph(
                    chartData[1],
                    'KW',
                    Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess,
                    context),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
              width: FMIThemeBase.baseContainerDimension165,
              child: FmiScorecard(
                title: "Classifier AMPS",
                trend: ScorecardTrend.down,
                element: getRadialGraph(chartData[2], 'AMPS',
                    Theme.of(context).colorScheme.error, context),
                warningIndicatorOn: true,
              ),
            ),
          ],
        )
      ],
    );
  }

  SizedBox getRadialGraph(DemoScorecardData chartData, String unit,
      Color chartColor, BuildContext context) {
    return SizedBox(
        width: FMIThemeBase.baseContainerDimension100,
        height: FMIThemeBase.baseContainerDimension100,
        child: SfRadialGauge(axes: <RadialAxis>[
          RadialAxis(
            annotations: [
              GaugeAnnotation(
                  positionFactor: 0.1,
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        chartData.dataValue.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .scoreCardMetric
                            .copyWith(color: chartColor),
                      ),
                      Text(
                        unit,
                        style: Theme.of(context)
                            .textTheme
                            .chartSubtitle
                            .copyWith(color: chartColor),
                      ),
                    ],
                  )),
            ],
            pointers: [
              RangePointer(
                cornerStyle: CornerStyle.bothCurve,
                value: chartData.dataValue,
                color: chartColor,
              ),
            ],
            axisLineStyle:
                const AxisLineStyle(cornerStyle: CornerStyle.bothCurve),
            minimum: 0,
            maximum: chartData.dataMax,
            showTicks: false,
            showLabels: false,
          ),
        ]));
  }
}
