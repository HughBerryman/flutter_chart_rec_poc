import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

@Deprecated('Deprecated - Will be removed in future artifact update')
class FmiKpiProgressCard extends StatefulWidget with FmiKpiHelper {
  const FmiKpiProgressCard({
    super.key,
    required this.title,
    required this.target,
    required this.value,
    required this.kpiUnit,
    this.onTap,
    this.barRange,
    required this.iconData,
  });

  final String title;
  final double target;
  final double value;
  final IconData iconData;
  final String kpiUnit;
  final FmiKpiProgressRange? barRange;
  final Function()? onTap;
  @override
  State<FmiKpiProgressCard> createState() => _FmiKpiProgressCardState();
}

class _FmiKpiProgressCardState extends State<FmiKpiProgressCard> {
  late List<OPSData> chartData;
  @override
  void initState() {
    super.initState();
    chartData = setChartData(widget.target, widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: LayoutBuilder(builder: (context, constraint) {
        return Container(
            constraints: BoxConstraints(
                minWidth: constraint.maxWidth, maxWidth: constraint.maxWidth),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.all(
                    Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
            child: Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface),
                          ),
                          Row(
                            children: [
                              FaIcon(widget.iconData,
                                  size: FMIThemeBase.baseIconSmall,
                                  color:
                                      getProgressColor(context, widget.value)),
                              Text(
                                ' ${widget.getPercentage(widget.target, widget.value)}% ${context.coreLocalize.target}',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .chartGreen),
                              )
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      Text(
                        widget.target.toStringAsFixed(0),
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                color: Theme.of(context).colorScheme.onSurface),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: FMIThemeBase.basePadding3,
                            right: FMIThemeBase.basePadding6),
                        child: Text(
                          ' ${widget.kpiUnit}',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSurface),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: SfCartesianChart(
                      onMarkerRender: (MarkerRenderArgs args) {
                        if (args.pointIndex != 0) {
                          args.markerHeight = 0;
                          args.markerWidth = 0;
                        }
                      },
                      margin: const EdgeInsets.only(
                          top: FMIThemeBase.basePadding2,
                          bottom: FMIThemeBase.basePadding3),
                      series: <CartesianSeries>[
                        BarSeries<dynamic, String>(
                            markerSettings: MarkerSettings(
                                borderColor:
                                    Theme.of(context).colorScheme.onSurface,
                                color: Theme.of(context).colorScheme.onSurface,
                                isVisible: true,
                                shape: DataMarkerType.verticalLine),
                            color: getProgressColor(context, widget.value),
                            dataSource: chartData,
                            xValueMapper: (val, _) => val.metric,
                            yValueMapper: (val, _) => val.value,
                            isTrackVisible: true,
                            trackColor:
                                Theme.of(context).colorScheme.surfaceContainerHighest,
                            dataLabelSettings:
                                const DataLabelSettings(isVisible: false),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(
                                    FMIThemeBase.baseBorderRadiusXLarge)))
                      ],
                      plotAreaBorderWidth: 0.0,
                      primaryYAxis: NumericAxis(
                          isVisible: false,
                          minimum: widget.barRange?.min ?? 0,
                          maximum: widget.barRange?.max ?? 100),
                      primaryXAxis: const CategoryAxis(isVisible: false),
                    ),
                  )
                ],
              ),
            ));
      }),
    );
  }

  List<OPSData> setChartData(double target, double progressVal) {
    final List<OPSData> chartData = [
      OPSData('', target),
      OPSData('', progressVal)
    ];
    return chartData;
  }

  Color getProgressColor(BuildContext context, double progressVal) {
    if (progressVal < widget.target) {
      return Theme.of(context).colorScheme.chartBlue;
    } else {
      return Theme.of(context).colorScheme.chartGreen;
    }
  }
}

class OPSData {
  OPSData(this.metric, this.value);
  final String metric;
  final double value;
}
