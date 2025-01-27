import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

enum FmiKpiScorecardColor {
  primary,
  success,
  error,
}

class FmiKpiScorecard extends StatefulWidget {
  const FmiKpiScorecard(
      {super.key,
      this.metricColor = FmiKpiScorecardColor.primary,
      required this.metric,
      required this.lineTwo,
      required this.lineThree,
      this.onTap});

  final String metric;
  final String lineTwo;
  final String lineThree;
  final FmiKpiScorecardColor? metricColor;
  final Function()? onTap;
  @override
  State<FmiKpiScorecard> createState() => _FmiKpiScorecardState();
}

class _FmiKpiScorecardState extends State<FmiKpiScorecard> {
  @override
  Widget build(BuildContext context) {
    getColor(FmiKpiScorecardColor color) {
      switch (color) {
        case FmiKpiScorecardColor.primary:
          return Theme.of(context).colorScheme.primary;
        case FmiKpiScorecardColor.success:
          return Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess;
        case FmiKpiScorecardColor.error:
          return Theme.of(context).colorScheme.error;
      }
    }

    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.metric,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: getColor(widget.metricColor!)),
          ),
          Text(widget.lineTwo,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.primary)),
          Text(widget.lineThree,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.primary)),
        ],
      ),
    );
  }
}
