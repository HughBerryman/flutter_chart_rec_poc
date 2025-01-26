import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FmiOverviewBar extends StatefulWidget with FmiKpiHelper {
  const FmiOverviewBar(
      {super.key, required this.model, this.barRange, this.barColor});
  final FmiOverviewBarModel model;
  final FmiKpiProgressRange? barRange;
  final NonTargetedBarColor? barColor;

  @override
  State<FmiOverviewBar> createState() => _FmiOverviewBarState();
}

class _FmiOverviewBarState extends State<FmiOverviewBar> {
  late List<BarData> _barData;
  late ScorecardTrend trend;
  late double target;
  late double value;
  late double max;
  late String metric;
  NonTargetedBarColor? barColor;
  bool isMeasurement = false;

  final ValueNotifier<FmiOverviewBarModel> _modelNotifier =
      ValueNotifier<FmiOverviewBarModel>(FmiOverviewBarModel());

  updateData() {
    setState(() {
      if (widget.model.chartTarget == double.maxFinite) {
        isMeasurement = true;
        if (widget.barColor != null) {
          barColor = widget.barColor;
        } else {
          barColor = NonTargetedBarColor.primary;
        }
      }

      target = widget.model.chartTarget!;
      value = widget.model.chartValue!;
      _barData = setBarData(target, value);
      max = widget.model.chartMaxValue!;
      metric = widget.model.metric!;
      trend = widget.getTrend(
        widget.model.chartTarget!,
        widget.model.chartValue!,
      );
    });
  }

  @override
  void initState() {
    updateData();
    _modelNotifier.value = widget.model;
    super.initState();
  }

  @override
  void didUpdateWidget(FmiOverviewBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.model != oldWidget.model) {
      updateData();
      _modelNotifier.value = widget.model;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<FmiOverviewBarModel>(
        valueListenable: _modelNotifier,
        builder: (context, model, child) {
          return buildChart(context, model);
        });
  }

  Widget buildChart(BuildContext context, FmiOverviewBarModel model) {
    return Padding(
      padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding3),
      child: Row(
        children: [
          Visibility(
              visible: model.avatarDisplayName != null,
              child: Padding(
                padding:
                    const EdgeInsets.only(right: FMIThemeBase.basePadding3),
                child: FmiAvatar(
                  url: model.avatarImg,
                  displayName: model.avatarDisplayName ?? '',
                  avatarSize: FmiAvatarSize.large,
                ),
              )),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Visibility(
                            visible: model.chartSubtitle != null,
                            child: Text(
                              model.chartSubtitle ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .outline),
                            ),
                          ),
                          Text(
                            model.chartTitle!,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                            overflow: TextOverflow.clip,
                          ),
                          Visibility(
                            visible: model.chartSubtext != null,
                            child: Text(
                              model.chartSubtext ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '$value of $max $metric',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                        ),
                        Visibility(
                          visible: !isMeasurement,
                          child: Row(
                            children: widget.getPercentage(target, value) != 0
                                ? [
                                    getIcon(getChartIcon(trend)),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: FMIThemeBase.basePadding3),
                                      child: Text(
                                        getChartLabel(target, value),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                                color: getColorTrend(
                                                    context, trend)),
                                      ),
                                    ),
                                  ]
                                : [
                                    Text(
                                      getChartLabel(target, value),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                              color: getColorTrend(
                                                  context, trend)),
                                    ),
                                  ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                    height: model.height,
                    child: getChart(context, trend, _barData)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getChart(
      BuildContext context, ScorecardTrend trend, List<dynamic> barData) {
    return SfCartesianChart(
      onMarkerRender: (MarkerRenderArgs args) {
        if (args.pointIndex != 0 || isMeasurement) {
          args.markerHeight = FMIThemeBase.baseContainerDimension0;
          args.markerWidth = FMIThemeBase.baseContainerDimension0;
        }
      },
      series: <CartesianSeries>[
        BarSeries<dynamic, String>(
            markerSettings: MarkerSettings(
                borderColor: Theme.of(context).colorScheme.surface,
                color: Theme.of(context).colorScheme.surface,
                isVisible: true,
                shape: DataMarkerType.verticalLine),
            color: getColorTrend(context, trend),
            dataSource: _barData,
            xValueMapper: (val, _) => val.metric,
            yValueMapper: (val, _) => val.value,
            isTrackVisible: true,
            trackColor: Theme.of(context).colorScheme.surfaceContainerHighest,
            dataLabelSettings: const DataLabelSettings(isVisible: false),
            borderRadius: const BorderRadius.all(
                Radius.circular(FMIThemeBase.baseBorderRadiusXLarge)))
      ],
      plotAreaBorderWidth: FMIThemeBase.baseBorderWidthNone,
      margin: EdgeInsets.zero,
      primaryYAxis: NumericAxis(
          isVisible: false,
          minimum: widget.barRange?.min ?? 0,
          maximum: widget.barRange?.max ?? 100),
      primaryXAxis: const CategoryAxis(
        isVisible: false,
      ),
    );
  }

  FaIcon getIcon(IconData iconData) {
    return FaIcon(
        getChartIcon(widget.getTrend(
            widget.model.chartTarget!, widget.model.chartValue!)),
        size: FMIThemeBase.baseIconXSmall,
        color: getColorTrend(context, trend));
  }

  String getChartLabel(double target, double value) {
    return '${widget.getPercentage(target, value)}% ${widget.model.chartTargetLabel ?? context.coreLocalize.target}';
  }

  Color getColorTrend(BuildContext context, ScorecardTrend trend) {
    if (isMeasurement) {
      switch (barColor!) {
        case NonTargetedBarColor.primary:
          return Theme.of(context).colorScheme.primary;
        case NonTargetedBarColor.onSurface:
          return Theme.of(context).colorScheme.onSurface;
      }
    }

    switch (trend) {
      case ScorecardTrend.standard:
        return Theme.of(context).colorScheme.primary;
      case ScorecardTrend.up:
        return Theme.of(context).colorScheme.chartGreen;
      case ScorecardTrend.down:
        return Theme.of(context).colorScheme.chartError;
    }
  }

  IconData getChartIcon(ScorecardTrend trend) {
    switch (trend) {
      case ScorecardTrend.standard:
        return const IconData(0);
      case ScorecardTrend.up:
        return FontAwesomeIcons.arrowUp;
      case ScorecardTrend.down:
        return FontAwesomeIcons.arrowDown;
    }
  }

  List<BarData> setBarData(double target, double value) {
    List<BarData> barData = [BarData(metric: '', value: value)];

    if (isMeasurement) {
      return barData;
    }
    setState(() {
      barData = [
        BarData(metric: '', value: target),
        BarData(metric: '', value: value)
      ];
    });
    return barData;
  }
}

class BarData {
  BarData({this.metric, this.value});
  String? metric;
  double? value;
}
