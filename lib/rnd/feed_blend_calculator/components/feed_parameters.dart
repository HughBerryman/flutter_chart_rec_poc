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

  FeedParameters({
    super.key,
    required this.feedRate,
    required this.sieProduction,
    DateTime? projectedStartDate,
    DateTime? projectedEndDate,
    required this.onFeedRateChanged,
    required this.onSieProductionChanged,
    required this.onProjectedDatesChanged,
  })  : projectedStartDate = projectedStartDate ?? DateTime.now(),
        projectedEndDate =
            projectedEndDate ?? DateTime.now().add(const Duration(days: 4));

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

    return Card(
      margin: EdgeInsets.zero,
      color: const Color(0xFFFCFCFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Project Timeline Section
            Row(
              children: [
                Icon(Icons.calendar_month, size: 20, color: Colors.blue[700]),
                const SizedBox(width: 8),
                const Text(
                  'Project Timeline',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.start, size: 16, color: Colors.grey[700]),
                          const SizedBox(width: 8),
                          const Text(
                            'Start Date *',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      OutlinedButton(
                        onPressed: () =>
                            _selectDate(context, isStartDate: true),
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 40),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          side: BorderSide(
                            color: projectedStartDate != null
                                ? Colors.grey[300]!
                                : Colors.red[300]!,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 16,
                              color: projectedStartDate != null
                                  ? Colors.grey[700]
                                  : Colors.red[700],
                            ),
                            const SizedBox(width: 8),
                            Text(
                              projectedStartDate != null
                                  ? dateFormat.format(projectedStartDate!)
                                  : 'Select date',
                              style: TextStyle(
                                color: projectedStartDate != null
                                    ? Colors.grey[700]
                                    : Colors.red[700],
                              ),
                            ),
                          ],
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
                      Row(
                        children: [
                          Icon(Icons.flag, size: 16, color: Colors.grey[700]),
                          const SizedBox(width: 8),
                          const Text(
                            'End Date (Optional)',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      OutlinedButton(
                        onPressed: projectedStartDate != null
                            ? () => _selectDate(context, isStartDate: false)
                            : null,
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 40),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          side: BorderSide(color: Colors.grey[300]!),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today,
                                size: 16, color: Colors.grey[700]),
                            const SizedBox(width: 8),
                            Text(
                              projectedEndDate != null
                                  ? dateFormat.format(projectedEndDate!)
                                  : 'Select date',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Divider(
                height: 1,
                color: Color(0xFFE0E0E0),
              ),
            ),

            // Production Rates Section
            Row(
              children: [
                Icon(Icons.speed, size: 20, color: Colors.blue[700]),
                const SizedBox(width: 8),
                const Text(
                  'Production Rates',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                // Overall Feed Rate
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.trending_up,
                              size: 16, color: Colors.grey[700]),
                          const SizedBox(width: 8),
                          const Text(
                            'Overall Feed Rate',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.blue[700],
                                inactiveTrackColor:
                                    Colors.blue.withOpacity(0.1),
                                thumbColor: Colors.white,
                                overlayColor: Colors.blue.withOpacity(0.1),
                                valueIndicatorColor: Colors.blue[700],
                                showValueIndicator: ShowValueIndicator.always,
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
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              '${feedRate.toStringAsFixed(1)} TPH',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[700],
                              ),
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
                      Row(
                        children: [
                          Icon(Icons.science,
                              size: 16, color: Colors.grey[700]),
                          const SizedBox(width: 8),
                          const Text(
                            'SIE Mo Production',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.blue[700],
                                inactiveTrackColor:
                                    Colors.blue.withOpacity(0.1),
                                thumbColor: Colors.white,
                                overlayColor: Colors.blue.withOpacity(0.1),
                                valueIndicatorColor: Colors.blue[700],
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
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              '${sieProduction.toStringAsFixed(1)}k lbs/day',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[700],
                              ),
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
    );
  }
}
