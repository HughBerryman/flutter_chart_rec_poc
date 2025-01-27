
**Examples**

` `
```dart
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoSampleLineChart extends StatelessWidget {
  const DemoSampleLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    List<LineData> lineData = <LineData>[
      LineData(2019, 201, 250),
      LineData(2020, 198, 300),
      LineData(2021, 215, 275),
    ];

    List<LineSeries<LineData, num>> _getDefaultLineSeries(
        BuildContext context) {
      return <LineSeries<LineData, num>>[
        LineSeries<LineData, num>(
            dataSource: lineData,
            xValueMapper: (LineData data, _) => data.x,
            yValueMapper: (LineData data, _) => data.y,
            pointColorMapper: (LineData data, _) =>
                Theme.of(context).colorScheme.chartBlue,
            width: FMIThemeBase.baseBorderWidthDefault,
            markerSettings: const MarkerSettings(isVisible: true),
            name: 'Shovels'),
        LineSeries<LineData, num>(
            dataSource: lineData,
            xValueMapper: (LineData data, _) => data.x,
            yValueMapper: (LineData data, _) => data.secondSeriesYValue,
            pointColorMapper: (LineData data, _) =>
                Theme.of(context).colorScheme.chartError,
            markerSettings: const MarkerSettings(isVisible: true),
            name: 'Trucks'),
      ];
    }

    return SfCartesianChart(
      plotAreaBorderWidth: FMIThemeBase.baseBorderWidthNone,
      title: ChartTitle(
          text: 'Sample Line Chart',
          textStyle: Theme.of(context)
              .textTheme
              .chartTitle
              .copyWith(color: Theme.of(context).colorScheme.textChartText)),
      legend: Legend(
          isVisible: true,
          textStyle: Theme.of(context)
              .textTheme
              .legendLabel
              .copyWith(color: Theme.of(context).colorScheme.textChartText)),
      onLegendItemRender: (LegendRenderArgs args) {
        if (args.seriesIndex == 0) {
          args.color = Theme.of(context).colorScheme.chartBlue;
        } else {
          args.color = Theme.of(context).colorScheme.chartError;
        }
        args.legendIconType = LegendIconType.circle;
      },
      primaryXAxis: CategoryAxis(
          axisLine: AxisLine(color: Theme.of(context).colorScheme.primary),
          majorTickLines:
              MajorTickLines(color: Theme.of(context).colorScheme.primary),
          majorGridLines: const MajorGridLines(width: FMIThemeBase.baseBorderWidthNone),
          labelStyle: Theme.of(context)
              .textTheme
              .legendLabel
              .copyWith(color: Theme.of(context).colorScheme.textChartText)),
      primaryYAxis: NumericAxis(
          axisLine: AxisLine(color: Theme.of(context).colorScheme.primary),
          majorTickLines:
              MajorTickLines(color: Theme.of(context).colorScheme.primary),
          majorGridLines: const MajorGridLines(width: FMIThemeBase.baseBorderWidthNone),
          numberFormat: NumberFormat.compact(),
          labelStyle: Theme.of(context)
              .textTheme
              .legendLabel
              .copyWith(color: Theme.of(context).colorScheme.textChartText)),
      series: _getDefaultLineSeries(context),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }
}

class LineData {
  LineData(this.x, this.y, this.secondSeriesYValue);

  final double x;
  final double y;
  final double secondSeriesYValue;
}

```

` `