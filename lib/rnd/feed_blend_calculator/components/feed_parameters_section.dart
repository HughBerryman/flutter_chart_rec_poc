import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'feed_parameters.dart';

class FeedParametersSection extends StatelessWidget {
  final double feedRate;
  final double sieProduction;
  final DateTime? projectedStartDate;
  final DateTime? targetEndDate;
  final ValueChanged<double> onFeedRateChanged;
  final ValueChanged<double> onSieProductionChanged;
  final ValueChanged<DateTime?> onStartDateChanged;
  final ValueChanged<DateTime?> onTargetEndDateChanged;

  const FeedParametersSection({
    super.key,
    required this.feedRate,
    required this.sieProduction,
    this.projectedStartDate,
    this.targetEndDate,
    required this.onFeedRateChanged,
    required this.onSieProductionChanged,
    required this.onStartDateChanged,
    required this.onTargetEndDateChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceAltSurface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Feed Parameters',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeAltSurfaceOnAltSurface,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          FeedParameters(
            feedRate: feedRate,
            sieProduction: sieProduction,
            projectedStartDate: projectedStartDate,
            targetEndDate: targetEndDate,
            onFeedRateChanged: onFeedRateChanged,
            onSieProductionChanged: onSieProductionChanged,
            onStartDateChanged: onStartDateChanged,
            onTargetEndDateChanged: onTargetEndDateChanged,
          ),
        ],
      ),
    );
  }
}
