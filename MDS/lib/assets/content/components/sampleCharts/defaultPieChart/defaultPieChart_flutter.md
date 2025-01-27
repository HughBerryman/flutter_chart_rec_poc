**Examples**

` `
```dart
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoSamplePieChart extends StatelessWidget {
  const DemoSamplePieChart({super.key});

  @override
  Widget build(BuildContext context) {
    List<PieData> dataSource = [
      PieData('Jan', 1408, Theme.of(context).colorScheme.chartAmber),
      PieData('Feb', 1521, Theme.of(context).colorScheme.chartBlue),
      PieData('Mar', 1498, Theme.of(context).colorScheme.chartGreen),
      PieData('Apr', 1450, Theme.of(context).colorScheme.chartBlueGray),
      PieData('May', 1398, Theme.of(context).colorScheme.chartRose)
    ];

    return SfCircularChart(
        title: ChartTitle(
            text: 'Sample Line Chart',
            textStyle: Theme.of(context)
                .textTheme
                .chartTitle
                .copyWith(color: Theme.of(context).colorScheme.textChartText)),
        legend: Legend(
            isVisible: true,
            position: LegendPosition.bottom,
            textStyle: Theme.of(context)
                .textTheme
                .legendLabel
                .copyWith(color: Theme.of(context).colorScheme.textChartText)),
        onLegendItemRender: (LegendRenderArgs args) {
          args.legendIconType = LegendIconType.circle;
        },
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <CircularSeries<PieData, String>>[
          PieSeries<PieData, String>(
              dataSource: dataSource,
              pointColorMapper: (PieData data, _) => data.color,
              xValueMapper: (PieData data, _) => data.x,
              yValueMapper: (PieData data, _) => data.y,
              dataLabelSettings: DataLabelSettings(
                  isVisible: true,
                  textStyle: Theme.of(context).textTheme.legendLabel.copyWith(
                      color: Theme.of(context).colorScheme.onSurface)))
        ]);
  }
}

class PieData {
  PieData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}


```

` `