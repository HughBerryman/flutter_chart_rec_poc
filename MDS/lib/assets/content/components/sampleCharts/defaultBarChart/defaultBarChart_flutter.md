**Examples**

```dart
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoSampleBarChart extends StatelessWidget {
  const DemoSampleBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    List<BarData> barData = <BarData>[
      BarData(
          x: 'Canada',
          y: 98476000,
          secondSeriesYValue: 95372000,
          thirdSeriesYValue: 92951000),
      BarData(
          x: 'Mexico',
          y: 74583000,
          secondSeriesYValue: 78564000,
          thirdSeriesYValue: 36498000),
      BarData(
          x: 'US',
          y: 101234000,
          secondSeriesYValue: 94678000,
          thirdSeriesYValue: 98903000),
    ];

    List<BarSeries<BarData, String>> _getDefaultBarSeries(
        BuildContext context) {
      return <BarSeries<BarData, String>>[
        BarSeries<BarData, String>(
            dataSource: barData,
            xValueMapper: (BarData data, _) => data.x as String,
            yValueMapper: (BarData data, _) => data.y,
            pointColorMapper: (BarData data, _) =>
                Theme.of(context).colorScheme.chartBlue,
            name: '2015'),
        BarSeries<BarData, String>(
            dataSource: barData,
            xValueMapper: (BarData data, _) => data.x as String,
            yValueMapper: (BarData data, _) => data.secondSeriesYValue,
            pointColorMapper: (BarData data, _) =>
                Theme.of(context).colorScheme.chartAmber,
            name: '2016'),
        BarSeries<BarData, String>(
            dataSource: barData,
            xValueMapper: (BarData data, _) => data.x as String,
            yValueMapper: (BarData data, _) => data.thirdSeriesYValue,
            pointColorMapper: (BarData data, _) =>
                Theme.of(context).colorScheme.chartRose,
            name: '2017')
      ];
    }

    return SfCartesianChart(
      plotAreaBorderWidth: FMIThemeBase.baseBorderWidthNone,
      title: ChartTitle(
          text: 'Sample Bar Chart',
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
        } else if (args.seriesIndex == 1) {
          args.color = Theme.of(context).colorScheme.chartAmber;
        } else {
          args.color = Theme.of(context).colorScheme.chartRose;
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
      series: _getDefaultBarSeries(context),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }
}

class BarData {
  BarData({this.x, this.y, this.secondSeriesYValue, this.thirdSeriesYValue});

  final dynamic x;
  final num? y;
  final num? secondSeriesYValue;
  final num? thirdSeriesYValue;
}

```

` `