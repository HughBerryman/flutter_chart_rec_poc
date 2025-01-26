import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiMineScorecard extends StatelessWidget with FmiKpiHelper {
  const FmiMineScorecard(
      {super.key,
      required this.title,
      required this.metric,
      this.onPressed,
      required this.target,
      required this.value});
  final String title;
  final String metric;
  final double target;
  final double value;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FmiBaseScorecard(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(
              top: FMIThemeBase.basePadding4,
              bottom: FMIThemeBase.basePadding4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
                textAlign: TextAlign.center,
              ),
              Text(
                metric,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: Theme.of(context).colorScheme.secondary),
                textAlign: TextAlign.center,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: getPercentage(target, value) != 0
                    ? [
                        FaIcon(
                          getIcon(getTrend(
                            target,
                            value,
                          )),
                          color: getIconColor(
                              context,
                              getTrend(
                                target,
                                value,
                              )),
                          size: FMIThemeBase.baseIconXSmall,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: FMIThemeBase.basePadding2),
                          child: Text(getTrendLabel(target, value),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary)),
                        )
                      ]
                    : [
                        Text(getTrendLabel(target, value),
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary))
                      ],
              )
            ],
          ),
        ),
      ),
    );
  }

  MouseCursor getMouseCursor() {
    if (onPressed != null) {
      return SystemMouseCursors.click;
    } else {
      return SystemMouseCursors.basic;
    }
  }

  String getTrendLabel(double target, double value) {
    String trendLabel = '';
    if (value > target) {
      trendLabel += '+';
    }

    trendLabel += '${getPercentage(target, value)}%';
    return trendLabel;
  }

  IconData getIcon(ScorecardTrend trend) {
    switch (trend) {
      case ScorecardTrend.standard:
        return const IconData(0);
      case ScorecardTrend.up:
        return FontAwesomeIcons.arrowTrendUp;
      case ScorecardTrend.down:
        return FontAwesomeIcons.arrowTrendDown;
    }
  }

  Color getIconColor(BuildContext context, ScorecardTrend trend) {
    switch (trend) {
      case ScorecardTrend.standard:
        return Theme.of(context).colorScheme.primary;
      case ScorecardTrend.up:
        return Theme.of(context).colorScheme.chartGreen;
      case ScorecardTrend.down:
        return Theme.of(context).colorScheme.chartError;
    }
  }
}
