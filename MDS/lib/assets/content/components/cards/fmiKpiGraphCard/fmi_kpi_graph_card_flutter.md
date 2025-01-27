**Examples**

```dart                                   
FmiKpiGraphCard(
    startSlot: Icon(
        FontAwesomeIcons.chartColumn,
        color: Theme.of(context).colorScheme.secondary,
        size: FMIThemeBase.baseIconMedium,
    ),
    onTap: () {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                title: const Text('Fmi Graph Card Dialog'),
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
    title: 'Crusher 1',
    subtitle: 'Total Shift Tones',
    kpi: '200',
    kpiUnit: 'lbs',
    kpiTrend: const FmiKpiTrend(
        trend: KpiTrendEnum.up,
        target: 53,
        value: 60
    ),
    middleGraph: SfCartesianChart(
        plotAreaBorderColor: Colors.transparent,
        borderColor: Colors.transparent,
        primaryXAxis: NumericAxis(
            rangePadding: ChartRangePadding.none,
            isVisible: false
        ),
        primaryYAxis: NumericAxis(
            rangePadding: ChartRangePadding.none,
            isVisible: false
        ),
        series: <CartesianSeries>[
            SplineAreaSeries<ChartData, int>(
                gradient: gradientColors,
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                emptyPointSettings: EmptyPointSettings(mode: EmptyPointMode.zero),
                dataLabelSettings: const DataLabelSettings(isVisible: false),
            )
        ],
    ),
),
```

`  `