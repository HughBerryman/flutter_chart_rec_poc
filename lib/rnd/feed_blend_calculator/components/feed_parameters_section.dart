import 'package:flutter/material.dart';
import 'feed_parameters.dart';

class FeedParametersSection extends StatelessWidget {
  final double feedRate;
  final double sieProduction;
  final DateTime? projectedStartDate;
  final double? goalDurationDays;
  final ValueChanged<double> onFeedRateChanged;
  final ValueChanged<double> onSieProductionChanged;
  final ValueChanged<DateTime?> onStartDateChanged;
  final ValueChanged<double?> onGoalDurationChanged;

  const FeedParametersSection({
    super.key,
    required this.feedRate,
    required this.sieProduction,
    this.projectedStartDate,
    this.goalDurationDays,
    required this.onFeedRateChanged,
    required this.onSieProductionChanged,
    required this.onStartDateChanged,
    required this.onGoalDurationChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Feed Parameters',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          FeedParameters(
            feedRate: feedRate,
            sieProduction: sieProduction,
            projectedStartDate: projectedStartDate,
            goalDurationDays: goalDurationDays,
            onFeedRateChanged: onFeedRateChanged,
            onSieProductionChanged: onSieProductionChanged,
            onStartDateChanged: onStartDateChanged,
            onGoalDurationChanged: onGoalDurationChanged,
          ),
        ],
      ),
    );
  }
}
