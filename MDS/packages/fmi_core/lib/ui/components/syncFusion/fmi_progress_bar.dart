import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/extensions/extensions.dart';
import 'package:fmi_core/ui/components/syncFusion/syncFusion.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class FmiProgressBar extends StatelessWidget {
  final String? title;
  final String unit;

  final double trackLength;

  final double progressValue;

  final double? targetValue;

  final double? varianceValue;

  final bool showTargetValue;
  final bool showTargetBar;
  final bool showTrackLength;

  final bool showVariance;

  final String numberFormat;

  final ProgressBarColorScheme? colorScheme;

  const FmiProgressBar(
      {Key? key,
      this.title,
      required this.unit,
      required this.trackLength,
      required this.progressValue,
      this.targetValue,
      this.varianceValue,
      this.showTargetValue = true,
      this.showTargetBar = true,
      this.showVariance = true,
      this.showTrackLength = true,
      this.numberFormat = "#,###.##",
      this.colorScheme = ProgressBarColorScheme.standard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getChart(context);
  }

  Widget _getVariance(BuildContext context, Color color) {
    double variance = 0;
    if (varianceValue == null) {
      if (targetValue != null && targetValue != 0) {
        variance = (progressValue - targetValue!) / targetValue!;
      } else if (trackLength != 0) {
        variance = (progressValue - trackLength) / trackLength;
      } else {
        variance = 0;
      }
      variance *= 100;
    } else {
      variance = varianceValue!;
    }

    String value = variance.floor().toString();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: FMIThemeBase.basePaddingSmall),
          child: variance != 0
              ? FaIcon(
                  variance < 0
                      ? FontAwesomeIcons.solidArrowDown
                      : FontAwesomeIcons.solidArrowUp,
                  color: color,
                  size: FMIThemeBase.baseIconXSmall,
                )
              : null,
        ),
        Text('$value %',
            style: variance != 0
                ? Theme.of(context).textTheme.bodySmall?.copyWith(color: color)
                : Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant))
      ],
    );
  }

  bool _showTarget() {
    if (targetValue == null ||
        targetValue == 0 ||
        trackLength == 0 ||
        targetValue == trackLength) {
      return false;
    }

    return true;
  }

  bool _showTargetValue() {
    if (targetValue! <= trackLength * 0.2 ||
        targetValue! >= trackLength * 0.8) {
      return false;
    }

    return true;
  }

  Widget _getChart(BuildContext context) {
    double _gaugeHeight = FMIThemeBase.baseContainerDimension40;

    bool _isPositive = targetValue != null
        ? progressValue >= targetValue!
        : progressValue >= trackLength * .5;

    Color _color = (colorScheme == ProgressBarColorScheme.primary)
        ? Theme.of(context).colorScheme.primary
        : _isPositive
            ? Theme.of(context).colorScheme.chartGreen
            : Theme.of(context).colorScheme.chartRose;

    bool lowThreshold = progressValue < trackLength * .25;
    double barLength = trackLength;
    if (trackLength == 0 && targetValue == 0 || progressValue > trackLength) {
      barLength = progressValue;
    }

    List<ProgressBarData> data = [
      ProgressBarData(metric: '', value: targetValue ?? 0),
      ProgressBarData(metric: '', value: progressValue),
    ];

    Color _getDataLabelColor = (lowThreshold)
        ? (_isPositive || colorScheme == ProgressBarColorScheme.primary)
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.textChartRoseLight
        : (colorScheme == ProgressBarColorScheme.primary)
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.textChartInternalTextLight;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Text(
                title!,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                textAlign: TextAlign.start,
                maxLines: 1,
              ),
            SizedBox(
              height: _gaugeHeight,
              child: SfCartesianChart(
                onMarkerRender: (MarkerRenderArgs args) {
                  if (args.pointIndex != 0 || !_showTarget()) {
                    args.markerHeight = FMIThemeBase.baseContainerDimension0;
                    args.markerWidth = FMIThemeBase.baseContainerDimension0;
                    args.color = progressValue == 0 ||
                            (args.pointIndex == 1 &&
                                progressValue < trackLength)
                        ? Theme.of(context).colorScheme.chartNeutralBackground
                        : (args.pointIndex == 1 &&
                                    progressValue >= trackLength ||
                                args.pointIndex == 0 &&
                                    targetValue == trackLength &&
                                    progressValue < trackLength)
                            ? Theme.of(context).colorScheme.formBackground
                            : _color;
                    args.borderColor = progressValue == 0 ||
                            (args.pointIndex == 1 &&
                                progressValue < trackLength)
                        ? Theme.of(context).colorScheme.chartNeutralBackground
                        : (args.pointIndex == 1 &&
                                    progressValue >= trackLength ||
                                args.pointIndex == 0 &&
                                    targetValue == trackLength &&
                                    progressValue < trackLength)
                            ? Theme.of(context).colorScheme.formBackground
                            : _color;
                  } else {
                    args.markerWidth = FMIThemeBase.baseContainerDimension30;
                  }
                },
                onDataLabelRender: (DataLabelRenderArgs args) {
                  if (args.pointIndex == 0) {
                    args.text = '';
                  } else if (args.pointIndex == 1 && args.text == '0') {
                    args.text = '';
                  }
                },
                series: <BarSeries>[
                  BarSeries<dynamic, String>(
                      borderWidth: FMIThemeBase.baseBorderWidthNone,
                      markerSettings: MarkerSettings(
                          height: FMIThemeBase.baseContainerDimension30,
                          borderWidth: FMIThemeBase.baseBorderWidthThin,
                          borderColor: _isPositive
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.primary,
                          color: _isPositive
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.primary,
                          isVisible: true,
                          shape: DataMarkerType.verticalLine),
                      color: _color,
                      dataSource: data,
                      xValueMapper: (val, _) => val.metric,
                      yValueMapper: (val, _) => val.value,
                      isTrackVisible: true,
                      trackColor:
                          Theme.of(context).colorScheme.chartNeutralBackground,
                      dataLabelSettings: DataLabelSettings(
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: _getDataLabelColor),
                          isVisible: true,
                          alignment: ChartAlignment.center,
                          labelAlignment: (lowThreshold)
                              ? ChartDataLabelAlignment.outer
                              : ChartDataLabelAlignment.middle),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(
                              FMIThemeBase.baseBorderRadiusXLarge),
                          bottomRight: Radius.circular(
                              FMIThemeBase.baseBorderRadiusXLarge)))
                ],
                plotAreaBorderWidth: FMIThemeBase.baseBorderWidthNone,
                margin: EdgeInsets.zero,
                primaryYAxis: NumericAxis(
                  isVisible: false,
                  minimum: 0,
                  maximum: barLength,
                ),
                primaryXAxis: const CategoryAxis(
                  isVisible: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: FMIThemeBase.basePadding3),
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: (showVariance)
                              ? _getVariance(context, _color)
                              : Container()),
                      (showTrackLength)
                          ? Expanded(
                              child: Text(
                                  '${NumberFormat(numberFormat).format(trackLength)} $unit',
                                  textAlign: TextAlign.right,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant)),
                            )
                          : Container(),
                    ],
                  ),
                  (_showTarget() && _showTargetValue())
                      ? Positioned.fill(
                          left: (targetValue!.toString().length < 3)
                              ? constraints.maxWidth *
                                      (targetValue! / trackLength) -
                                  2 -
                                  (targetValue!.toString().length * 2)
                              : (targetValue!.toString().length == 3)
                                  ? constraints.maxWidth *
                                          (targetValue! / trackLength) -
                                      2 -
                                      (targetValue!.toString().length * 3)
                                  : constraints.maxWidth *
                                          (targetValue! / trackLength) -
                                      2 -
                                      (targetValue!.toString().length * 4),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                    NumberFormat(numberFormat)
                                        .format(targetValue),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
