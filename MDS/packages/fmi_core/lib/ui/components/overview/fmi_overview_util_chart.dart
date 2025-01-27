import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FmiOverviewUtilChart extends StatelessWidget {
  const FmiOverviewUtilChart(
      {super.key, required this.utilChart, required this.utilChartLabel});
  final FmiOverviewUtilChartModel utilChart;
  final String utilChartLabel;

  @override
  Widget build(BuildContext context) {
    late List<UtilChart> chartData;
    chartData = [
      UtilChart(utilChart.value, utilChart.total,
          Theme.of(context).colorScheme.primary),
      UtilChart(utilChart.total - utilChart.value, utilChart.total,
          Theme.of(context).colorScheme.fmiBaseThemeSecondaryInverseSecondary)
    ];
    double percentage = utilChart.value / utilChart.total * 100.0;
    return Container(
      height: FMIThemeBase.baseContainerDimension100,
      width: FMIThemeBase.baseContainerDimension100,
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium),
          color: Theme.of(context)
              .colorScheme
              .fmiBaseThemeAltSurfaceInverseAltSurface),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: SfCircularChart(
                annotations: <CircularChartAnnotation>[
                  CircularChartAnnotation(
                      widget: Text(
                    '${percentage.round()}%',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.textChartText),
                  ))
                ],
                margin: EdgeInsets.zero,
                series: <CircularSeries>[
                  DoughnutSeries<UtilChart, double>(
                      dataSource: chartData,
                      xValueMapper: (UtilChart data, _) => data.total,
                      yValueMapper: (UtilChart data, _) => data.value,
                      pointColorMapper: (UtilChart data, _) => data.pointColor,
                      innerRadius: '85%',
                      radius: '70%')
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: FMIThemeBase.basePadding2,
                left: FMIThemeBase.basePadding4,
                right: FMIThemeBase.basePadding4),
            child: Text(
              utilChartLabel,
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              maxLines: 2,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
        ],
      ),
    );
  }
}

class UtilChart {
  UtilChart(this.value, this.total, this.pointColor);
  final double value;
  final double total;
  final Color pointColor;
}
