import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FeedParameters extends StatelessWidget {
  final double feedRate;
  final double sieProduction;
  final DateTime? projectedStartDate;
  final DateTime? projectedEndDate;
  final ValueChanged<double> onFeedRateChanged;
  final ValueChanged<double> onSieProductionChanged;
  final void Function({DateTime? startDate, DateTime? endDate})
      onProjectedDatesChanged;

  const FeedParameters({
    super.key,
    required this.feedRate,
    required this.sieProduction,
    this.projectedStartDate,
    this.projectedEndDate,
    required this.onFeedRateChanged,
    required this.onSieProductionChanged,
    required this.onProjectedDatesChanged,
  });

  Future<void> _selectDate(BuildContext context,
      {bool isStartDate = true}) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStartDate
          ? projectedStartDate ?? DateTime.now()
          : projectedEndDate ??
              (projectedStartDate?.add(const Duration(days: 30)) ??
                  DateTime.now().add(const Duration(days: 30))),
      firstDate:
          isStartDate ? DateTime.now() : (projectedStartDate ?? DateTime.now()),
      lastDate: DateTime.now().add(const Duration(days: 365 * 2)),
    );

    if (picked != null) {
      onProjectedDatesChanged(
        startDate: isStartDate ? picked : null,
        endDate: isStartDate ? null : picked,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('MMM d, y');

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Date Selection Row
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Projected Start Date *',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          OutlinedButton.icon(
                            onPressed: () =>
                                _selectDate(context, isStartDate: true),
                            icon: const Icon(Icons.calendar_today, size: 18),
                            label: Text(
                              projectedStartDate != null
                                  ? dateFormat.format(projectedStartDate!)
                                  : 'Select date',
                              style: TextStyle(
                                color: projectedStartDate != null
                                    ? Colors.black87
                                    : Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Projected End Date (Optional)',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          OutlinedButton.icon(
                            onPressed: projectedStartDate != null
                                ? () => _selectDate(context, isStartDate: false)
                                : null,
                            icon: const Icon(Icons.calendar_today, size: 18),
                            label: Text(
                              projectedEndDate != null
                                  ? dateFormat.format(projectedEndDate!)
                                  : 'Select date',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Feed Rate and Production Row
                Row(
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
                                    showValueIndicator:
                                        ShowValueIndicator.always,
                                  ),
                                  child: Slider(
                                    value: feedRate,
                                    min: 4,
                                    max: 9,
                                    divisions: 50,
                                    label: '${feedRate.toStringAsFixed(1)} TPH',
                                    onChanged: onFeedRateChanged,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Text(
                                  '${feedRate.toStringAsFixed(1)} TPH',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
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
                                    showValueIndicator:
                                        ShowValueIndicator.always,
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
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
