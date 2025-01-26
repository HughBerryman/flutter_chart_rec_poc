**Examples**

```dart
FmiScorecard(
  title: "Conversion",
  metric: "537",
  unit: "tons",
  subtitle: '-55.6% of target',
  trend: ScorecardTrend.down,
  element:
    Image.asset('assets/images/placeholder/placeholder_barChart.png'),
  onPressed: () {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Scorecard Dialog'),
        content: const Text('Click the OK button to close'),
        actions: [
          TextButton(
            child: const Text("OK"),
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
              .pop('dialog');
            },
          )
        ]
      )
    );
  },
  isChecked: true,
  isTransparent: true,
  hasBorder: false,
  hasElevation: false,
  selectedBehaviorOff: false,
  metricColor: ScorecardTrend.standard,
  isMini: true,
  isFlush: true,
),
```

` `

Radial Graph Implementation
```dart
  final List<DemoScorecardData> chartData = [
    DemoScorecardData(90, 100),
    DemoScorecardData(500, 600),
    DemoScorecardData(30, 100),
  ];

SizedBox getRadialGraph(DemoScorecardData chartData, String unit, Color chartColor, BuildContext context) {
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

 Container(
  padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
  width: defaultWidth,
  child: FmiScorecard(
    title: "Classifier AMPS",
    trend: ScorecardTrend.down,
    element: getRadialGraph(chartData[2], 'AMPS',
        Theme.of(context).colorScheme.error, context),
    warningIndicatorOn: true,
  ),
),
```

` `