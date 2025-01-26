import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiKpiListCard extends StatefulWidget with FmiKpiHelper {
  const FmiKpiListCard(
      {super.key,
      this.startSlot,
      this.overline,
      required this.title,
      this.subtitle,
      this.kpi = '',
      this.kpiUnit = '',
      required this.kpiTrend,
      this.showPercentAndValue = false,
      this.showAsPercent = true,
      this.showTrendIconTwice = true,
      this.showUnitOnTrend = true,
      this.onTap,
      this.backgroundColor = KpiBackgroundColorEnum.surface});

  final Widget? startSlot;
  final String? overline;
  final String title;
  final String? subtitle;
  final String? kpi;
  final String? kpiUnit;
  final FmiKpiTrend kpiTrend;
  final bool showPercentAndValue;
  final bool showAsPercent;
  final bool showTrendIconTwice;
  final bool showUnitOnTrend;
  final Function()? onTap;
  final KpiBackgroundColorEnum backgroundColor;

  @override
  State<FmiKpiListCard> createState() => _FmiKpiListCardState();
}

class _FmiKpiListCardState extends State<FmiKpiListCard> {
  @override
  Widget build(BuildContext context) {
    bool kpiRowIsVisible = (widget.kpi != null && widget.kpi!.isNotEmpty);

    return InkWell(
      onTap: widget.onTap,
      child: LayoutBuilder(
        builder: (context, constraint) {
          return Container(
            constraints: BoxConstraints(
                minWidth: constraint.maxWidth, maxWidth: constraint.maxWidth),
            decoration: BoxDecoration(
                color: getKpiBackgroundColor(widget.backgroundColor),
                borderRadius: const BorderRadius.all(
                    Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Visibility(
                        visible: widget.startSlot != null,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: FMIThemeBase.basePadding6,
                              right: FMIThemeBase.basePadding4),
                          child: CircleAvatar(
                              radius: FMIThemeBase.baseBorderRadiusXLarge,
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              child: widget.startSlot),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: FMIThemeBase.basePadding6,
                            bottom: FMIThemeBase.basePadding6,
                            left: widget.startSlot != null
                                ? FMIThemeBase.basePadding0
                                : FMIThemeBase.basePadding6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            widget.overline != null
                                ? KpiTitleWithOverlineWidget(
                                    title: widget.title,
                                    overline: widget.overline!)
                                : KpiTitleWidget(title: widget.title),
                            if (widget.subtitle != null)
                              Text(
                                widget.subtitle!,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: FMIThemeBase.basePadding6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Visibility(
                            visible: kpiRowIsVisible, child: kpiRow(context)),
                        Row(
                          children: [
                            getKpiTrendIcon(context, widget.kpiTrend.trend),
                            getKpiTrendText(context, widget.kpiTrend.trend,
                                widget.showAsPercent),
                            if (widget.showPercentAndValue) ...[
                              const SizedBox(width: FMIThemeBase.baseGap18),
                              if (widget.showTrendIconTwice)
                                getKpiTrendIcon(context, widget.kpiTrend.trend),
                              getKpiTrendText(context, widget.kpiTrend.trend,
                                  !widget.showAsPercent)
                            ]
                          ],
                        )
                      ],
                    ),
                  )
                ]),
          );
        },
      ),
    );
  }

  Color getKpiBackgroundColor(KpiBackgroundColorEnum color) {
    switch (color) {
      case KpiBackgroundColorEnum.surface:
        return Theme.of(context).colorScheme.surface;
      case KpiBackgroundColorEnum.transparent:
        return Colors.transparent;
      default:
        return Theme.of(context).colorScheme.surface;
    }
  }

  Text getKpiTrendText(
      BuildContext context, KpiTrendEnum kpiTrendEnum, bool showAsPercent) {
    Color textColor;
    switch (kpiTrendEnum) {
      case KpiTrendEnum.up:
        textColor = Theme.of(context).colorScheme.chartGreen;
        break;
      case KpiTrendEnum.down:
        textColor = Theme.of(context).colorScheme.error;
        break;
      case KpiTrendEnum.flat:
        textColor = Theme.of(context).colorScheme.primary;
        break;
    }
    TextStyle? textStyle =
        Theme.of(context).textTheme.bodyLarge?.copyWith(color: textColor);
    if (showAsPercent) {
      return Text(
        ' ${widget.getPercentageAsDouble(widget.kpiTrend.target, widget.kpiTrend.value).toStringAsFixed(widget.kpiTrend.decimalPlaces)}%',
        style: textStyle,
      );
    } else {
      return Text(
        ' ${(widget.kpiTrend.value - widget.kpiTrend.target).toStringAsFixed(widget.kpiTrend.decimalPlaces)}${widget.showUnitOnTrend && widget.kpiUnit != null && widget.kpiUnit != "" ? " ${widget.kpiUnit}" : ""}',
        style: textStyle,
      );
    }
  }

  Row kpiRow(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.kpi!,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
        if (widget.kpiUnit != null)
          Text(
            " ${widget.kpiUnit!}",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          )
      ],
    );
  }

  FaIcon getKpiTrendIcon(BuildContext context, KpiTrendEnum kpiTrend) {
    double iconSize = FMIThemeBase.baseIconSmall;

    switch (kpiTrend) {
      case KpiTrendEnum.up:
        return FaIcon(
          size: iconSize,
          FontAwesomeIcons.arrowTrendUp,
          color: Theme.of(context).colorScheme.chartGreen,
        );
      case KpiTrendEnum.down:
        return FaIcon(
          size: iconSize,
          FontAwesomeIcons.arrowTrendDown,
          color: Theme.of(context).colorScheme.error,
        );
      case KpiTrendEnum.flat:
        return FaIcon(
          size: iconSize,
          FontAwesomeIcons.arrowTrendUp,
          color: Theme.of(context).colorScheme.primary,
        );
    }
  }
}
