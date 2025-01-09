import 'package:flutter/material.dart';
import 'feed_parameters.dart';

class FeedParametersSection extends StatelessWidget {
  final double feedRate;
  final double sieProduction;
  final ValueChanged<double> onFeedRateChanged;
  final ValueChanged<double> onSieProductionChanged;

  const FeedParametersSection({
    super.key,
    required this.feedRate,
    required this.sieProduction,
    required this.onFeedRateChanged,
    required this.onSieProductionChanged,
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
            onFeedRateChanged: onFeedRateChanged,
            onSieProductionChanged: onSieProductionChanged,
          ),
        ],
      ),
    );
  }
}
