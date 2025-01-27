import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FeedParameters extends StatefulWidget {
  final double feedRate;
  final double sieProduction;
  final DateTime? projectedStartDate;
  final DateTime? targetEndDate;
  final ValueChanged<double> onFeedRateChanged;
  final ValueChanged<double> onSieProductionChanged;
  final ValueChanged<DateTime?> onStartDateChanged;
  final ValueChanged<DateTime?> onTargetEndDateChanged;

  const FeedParameters({
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
  State<FeedParameters> createState() => _FeedParametersState();
}

class _FeedParametersState extends State<FeedParameters> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(FeedParameters oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _buildSliderInput({
    required BuildContext context,
    required String label,
    required double value,
    required double min,
    required double max,
    required ValueChanged<double> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.blue[700],
                  inactiveTrackColor: Colors.blue.withOpacity(0.1),
                  thumbColor: Colors.white,
                  overlayColor: Colors.blue.withOpacity(0.1),
                  valueIndicatorColor: Colors.blue[700],
                  showValueIndicator: ShowValueIndicator.always,
                ),
                child: Slider(
                  value: widget.feedRate,
                  min: 4.0,
                  max: 9.0,
                  divisions: 50,
                  label: '${widget.feedRate.toStringAsFixed(1)} TPH',
                  onChanged: widget.onFeedRateChanged,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                '${widget.feedRate.toStringAsFixed(1)} TPH',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[700],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Start Date *',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      OutlinedButton(
                        onPressed: () async {
                          final date = await showDatePicker(
                            context: context,
                            initialDate:
                                widget.projectedStartDate ?? DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate:
                                DateTime.now().add(const Duration(days: 365)),
                          );
                          if (date != null) {
                            widget.onStartDateChanged(date);
                          }
                        },
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 40),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          side: BorderSide(
                            color: widget.projectedStartDate != null
                                ? Colors.grey[300]!
                                : Colors.red[300]!,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 16,
                              color: widget.projectedStartDate != null
                                  ? Colors.grey[700]
                                  : Colors.red[700],
                            ),
                            const SizedBox(width: 8),
                            Text(
                              widget.projectedStartDate != null
                                  ? "${widget.projectedStartDate!.month}/${widget.projectedStartDate!.day}/${widget.projectedStartDate!.year}"
                                  : 'Select date',
                              style: TextStyle(
                                color: widget.projectedStartDate != null
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
                      const Text(
                        'Target End Date (Optional)',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      OutlinedButton(
                        onPressed: () async {
                          final date = await showDatePicker(
                            context: context,
                            initialDate: widget.targetEndDate ??
                                (widget.projectedStartDate
                                        ?.add(const Duration(days: 4)) ??
                                    DateTime.now()
                                        .add(const Duration(days: 4))),
                            firstDate:
                                widget.projectedStartDate ?? DateTime.now(),
                            lastDate:
                                DateTime.now().add(const Duration(days: 365)),
                          );
                          if (date != null) {
                            widget.onTargetEndDateChanged(date);
                          }
                        },
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 40),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          side: BorderSide(color: Colors.grey[300]!),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 16,
                              color: Colors.grey[700],
                            ),
                            const SizedBox(width: 8),
                            Text(
                              widget.targetEndDate != null
                                  ? "${widget.targetEndDate!.month}/${widget.targetEndDate!.day}/${widget.targetEndDate!.year}"
                                  : 'Select date',
                              style: TextStyle(
                                color: Colors.grey[700],
                              ),
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
                      const Text(
                        'Overall Feed Rate',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
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
                                value: widget.feedRate,
                                min: 4.0,
                                max: 9.0,
                                divisions: 50,
                                label:
                                    '${widget.feedRate.toStringAsFixed(1)} TPH',
                                onChanged: widget.onFeedRateChanged,
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
                              '${widget.feedRate.toStringAsFixed(1)} TPH',
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
                      const Text(
                        'SIE Mo Production',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
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
                                value: widget.sieProduction,
                                min: 0.0,
                                max: 100.0,
                                divisions: 100,
                                label:
                                    '${widget.sieProduction.toStringAsFixed(1)}k lbs/day',
                                onChanged: widget.onSieProductionChanged,
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
                              '${widget.sieProduction.toStringAsFixed(1)}k lbs/day',
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
