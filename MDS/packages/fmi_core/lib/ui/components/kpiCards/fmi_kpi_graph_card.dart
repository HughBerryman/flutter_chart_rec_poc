import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiKpiGraphCard extends StatefulWidget with FmiKpiHelper {
  const FmiKpiGraphCard(
      {super.key,
      this.overline = '',
      required this.title,
      this.subtitle = '',
      this.middleGraph,
      required this.kpi,
      this.kpiUnit = '',
      required this.kpiTrend,
      this.onTap,
      this.startSlot});

  final Widget? startSlot;
  final String? overline;
  final String title;
  final String? subtitle;
  final Widget? middleGraph;
  final String kpi;
  final String? kpiUnit;
  final FmiKpiTrend kpiTrend;
  final Function()? onTap;

  @override
  State<FmiKpiGraphCard> createState() => _FmiKpiGraphCardState();
}

class _FmiKpiGraphCardState extends State<FmiKpiGraphCard> {
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Visibility(
                  visible: widget.startSlot != null,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: FMIThemeBase.basePadding8,
                        right: FMIThemeBase.basePadding8),
                    child: widget.startSlot,
                  ),
                ),
                Padding(
                  padding: (widget.startSlot != null)
                      ? const EdgeInsets.only(left: FMIThemeBase.basePadding2)
                      : const EdgeInsets.only(left: FMIThemeBase.basePadding8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Visibility(
                        visible: widget.overline!.isNotEmpty,
                        child: Text(widget.overline!,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.outline)),
                      ),
                      Text(widget.title,
                          style: Theme.of(context).textTheme.headlineSmall),
                      Visibility(
                        visible: widget.subtitle!.isNotEmpty,
                        child: Text(widget.subtitle!,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.outline)),
                      ),
                    ],
                  ),
                ),
                Expanded(child: widget.middleGraph!),
                Padding(
                  padding:
                      const EdgeInsets.only(right: FMIThemeBase.basePadding6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.kpi,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface),
                          ),
                          Visibility(
                            visible: widget.kpiUnit!.isNotEmpty,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: FMIThemeBase.basePadding3),
                              child: Text(
                                widget.kpiUnit!,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: FMIThemeBase.basePadding3),
                              child: getKpiTrendIcon(
                                  context, widget.kpiTrend.trend)),
                          Text(
                            ' ${widget.getPercentageAsDouble(widget.kpiTrend.target, widget.kpiTrend.value).toStringAsFixed(widget.kpiTrend.decimalPlaces)}%',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: getKpiTrendColor(context)),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ));
      }),
    );
  }

  Color getKpiTrendColor(BuildContext context) {
    switch (widget.kpiTrend.trend) {
      case KpiTrendEnum.up:
        return Theme.of(context).colorScheme.chartGreen;
      case KpiTrendEnum.down:
        return Theme.of(context).colorScheme.error;
      case KpiTrendEnum.flat:
        return Theme.of(context).colorScheme.primary;
    }
  }

  FaIcon getKpiTrendIcon(BuildContext context, KpiTrendEnum kpiTrend) {
    switch (kpiTrend) {
      case KpiTrendEnum.up:
        return FaIcon(
          size: FMIThemeBase.baseIconSmall,
          FontAwesomeIcons.arrowTrendUp,
          color: Theme.of(context).colorScheme.chartGreen,
        );
      case KpiTrendEnum.down:
        return FaIcon(
          size: FMIThemeBase.baseIconSmall,
          FontAwesomeIcons.arrowTrendDown,
          color: Theme.of(context).colorScheme.error,
        );
      case KpiTrendEnum.flat:
        return FaIcon(
          size: FMIThemeBase.baseIconSmall,
          FontAwesomeIcons.arrowTrendUp,
          color: Theme.of(context).colorScheme.primary,
        );
    }
  }
}
