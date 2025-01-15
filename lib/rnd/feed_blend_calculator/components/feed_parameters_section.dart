import 'package:flutter/material.dart';
import 'feed_parameters.dart';

class FeedParametersSection extends StatelessWidget {
  final double feedRate;
  final double sieProduction;
  final DateTime? projectedStartDate;
  final DateTime? projectedEndDate;
  final ValueChanged<double> onFeedRateChanged;
  final ValueChanged<double> onSieProductionChanged;
  final void Function({DateTime? startDate, DateTime? endDate})
      onProjectedDatesChanged;

  const FeedParametersSection({
    super.key,
    required this.feedRate,
    required this.sieProduction,
    this.projectedStartDate,
    this.projectedEndDate,
    required this.onFeedRateChanged,
    required this.onSieProductionChanged,
    required this.onProjectedDatesChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
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
          const SizedBox(height: 24),
          FeedParameters(
            feedRate: feedRate,
            sieProduction: sieProduction,
            projectedStartDate: projectedStartDate,
            projectedEndDate: projectedEndDate,
            onFeedRateChanged: onFeedRateChanged,
            onSieProductionChanged: onSieProductionChanged,
            onProjectedDatesChanged: onProjectedDatesChanged,
          ),
        ],
      ),
    );
  }
}
