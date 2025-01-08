import 'package:flutter/material.dart';

class FeedParameters extends StatelessWidget {
  final double feedRate;
  final double sieProduction;
  final ValueChanged<double> onFeedRateChanged;
  final ValueChanged<double> onSieProductionChanged;

  const FeedParameters({
    super.key,
    required this.feedRate,
    required this.sieProduction,
    required this.onFeedRateChanged,
    required this.onSieProductionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Feed Parameters',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Card(
          margin: EdgeInsets.zero,
          color: const Color(0xFFFCFCFF),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // Overall Feed Rate
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Overall Feed Rate'),
                      Row(
                        children: [
                          Expanded(
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.blue,
                                inactiveTrackColor: Colors.grey[200],
                                thumbColor: Colors.white,
                                overlayColor: Colors.blue.withOpacity(0.1),
                                valueIndicatorColor: Colors.blue,
                                showValueIndicator: ShowValueIndicator.always,
                              ),
                              child: Slider(
                                value: feedRate,
                                min: 0,
                                max: 15,
                                divisions: 150,
                                label: '${feedRate.toStringAsFixed(1)} TPH',
                                onChanged: onFeedRateChanged,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: Text(
                              '${feedRate.toStringAsFixed(1)} TPH',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 32),
                // SIE Mo Production
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('SIE Mo Production'),
                      Row(
                        children: [
                          Expanded(
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.blue,
                                inactiveTrackColor: Colors.grey[200],
                                thumbColor: Colors.white,
                                overlayColor: Colors.blue.withOpacity(0.1),
                                valueIndicatorColor: Colors.blue,
                                showValueIndicator: ShowValueIndicator.always,
                              ),
                              child: Slider(
                                value: sieProduction,
                                min: 0,
                                max: 100,
                                divisions: 100,
                                label:
                                    '${sieProduction.toStringAsFixed(1)}k lbs/day',
                                onChanged: onSieProductionChanged,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              '${sieProduction.toStringAsFixed(1)}k lbs/day',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
