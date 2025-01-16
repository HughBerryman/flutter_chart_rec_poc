import 'package:flutter/material.dart';
import '../../models/lot_data.dart';
import '../widgets/elements_section.dart';
import 'feed_composition_section.dart';

class RightPanel extends StatelessWidget {
  final double width;
  final ValueChanged<double> onWidthChanged;
  final List<LotData> lots;
  final double feedRate;
  final double sieProduction;
  final DateTime? projectedStartDate;
  final DateTime? targetEndDate;

  const RightPanel({
    super.key,
    required this.width,
    required this.onWidthChanged,
    required this.lots,
    required this.feedRate,
    required this.sieProduction,
    this.projectedStartDate,
    this.targetEndDate,
  });

  Map<String, double> _calculateWeightedAverages(List<LotData> selectedLots) {
    final Map<String, double> weightedSums = {};
    int totalBags = 0;

    // Calculate weighted sums and total bags
    for (final lot in selectedLots) {
      final bags = lot.selectedBags;
      if (bags > 0) {
        totalBags += bags;
        for (final entry in lot.elements.entries) {
          weightedSums[entry.key] =
              (weightedSums[entry.key] ?? 0) + entry.value * bags;
        }
      }
    }

    // Calculate weighted averages
    if (totalBags > 0) {
      for (final key in weightedSums.keys) {
        weightedSums[key] = weightedSums[key]! / totalBags;
      }
    }

    return weightedSums;
  }

  bool _hasOutOfSpecElements(Map<String, double> weightedAverages) {
    final elementRanges = {
      'Mo': [48.0, double.infinity],
      'Fe': [0.0, 4.0],
      'Cu': [0.0, 3.0],
      'Pb': [0.0, 0.1],
      'As': [0.0, 0.05],
      'Insol': [0.0, 5.0],
      'Oil': [0.0, 5.0],
      'H2O': [0.0, 8.0],
    };

    for (final entry in weightedAverages.entries) {
      final range = elementRanges[entry.key];
      if (range != null) {
        if (entry.value < range[0] || entry.value > range[1]) {
          return true;
        }
      }
    }

    return false;
  }

  Widget _buildStatCard({
    required IconData icon,
    required String value,
    required String label,
  }) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(icon, size: 28),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
    String? sublabel,
    Color? valueColor,
    String? tooltip,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: Colors.grey[700]),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: valueColor,
                    ),
                  ),
                  if (tooltip != null) ...[
                    const SizedBox(width: 4),
                    Tooltip(
                      message: tooltip,
                      child: Icon(
                        Icons.info_outline,
                        size: 16,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ],
              ),
              if (sublabel != null) ...[
                const SizedBox(height: 2),
                Text(
                  sublabel,
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey[200]!),
          ),
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }

  Widget _buildScheduleItem({
    required String title,
    required String value,
    required IconData icon,
    String? sublabel,
    Color? valueColor,
    String? tooltip,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 16, color: Colors.grey[600]),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: valueColor,
              ),
            ),
            if (tooltip != null) ...[
              const SizedBox(width: 4),
              Tooltip(
                message: tooltip,
                child: Icon(
                  Icons.info_outline,
                  size: 16,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ],
        ),
        if (sublabel != null) ...[
          const SizedBox(height: 2),
          Text(
            sublabel,
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 12,
            ),
          ),
        ],
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedLots = lots.where((lot) => lot.selectedBags > 0).toList();
    final hasSelectedLots = selectedLots.isNotEmpty;

    return Row(
      children: [
        // Resizable Divider
        MouseRegion(
          cursor: SystemMouseCursors.resizeColumn,
          child: GestureDetector(
            onHorizontalDragUpdate: (details) {
              onWidthChanged(
                (width - details.delta.dx)
                    .clamp(600.0, MediaQuery.of(context).size.width * 0.6),
              );
            },
            child: Container(
              width: 8,
              height: double.infinity,
              color: const Color(0xFFE5E7EB),
              child: Center(
                child: Container(
                  width: 2,
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFF9CA3AF),
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
              ),
            ),
          ),
        ),
        // Panel Content
        Container(
          width: width,
          decoration: const BoxDecoration(
            color: Color(0xFFEBF2F8),
          ),
          child: !hasSelectedLots
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.science_outlined,
                        size: 48,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Select bags from assays to view details',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              : Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: const Color(0xFFE5E7EB)),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.science),
                              SizedBox(width: 8),
                              Text(
                                'Assay Details',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${selectedLots.length} assay in blend',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Primary Metrics (Hero Cards)
                            Row(
                              children: [
                                Expanded(
                                  child: _buildStatCard(
                                    icon: Icons.inventory_2,
                                    value: selectedLots
                                        .fold<int>(
                                            0,
                                            (sum, lot) =>
                                                sum + lot.selectedBags)
                                        .toString(),
                                    label: 'External Bags',
                                  ),
                                ),
                                Expanded(
                                  child: _buildStatCard(
                                    icon: Icons.speed,
                                    value: '${feedRate.toStringAsFixed(1)} TPH',
                                    label: 'Target Feed Rate',
                                  ),
                                ),
                                Expanded(
                                  child: _buildStatCard(
                                    icon: Icons.science,
                                    value:
                                        '${sieProduction.toStringAsFixed(1)}k',
                                    label: 'SIE Mo Production',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),

                            // Schedule Section
                            _buildSection(
                              title: 'Schedule Projections',
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: _buildScheduleItem(
                                        icon: Icons.calendar_today,
                                        title: 'Start Date',
                                        value: projectedStartDate != null
                                            ? "${projectedStartDate!.month}/${projectedStartDate!.day}/${projectedStartDate!.year}"
                                            : 'Not Set',
                                      ),
                                    ),
                                    const SizedBox(width: 24),
                                    Expanded(
                                      child: _buildScheduleItem(
                                        icon: Icons.timer,
                                        title: 'Projected Run Time',
                                        value: () {
                                          final runTimeHours =
                                              ((selectedLots.fold<int>(
                                                          0,
                                                          (sum, lot) =>
                                                              sum +
                                                              lot.selectedBags) *
                                                      4000) /
                                                  (feedRate * 1000) *
                                                  24);
                                          final days = runTimeHours / 24;
                                          return '${days.toStringAsFixed(1)} days';
                                        }(),
                                        tooltip: () {
                                          final totalBags =
                                              selectedLots.fold<int>(
                                                  0,
                                                  (sum, lot) =>
                                                      sum + lot.selectedBags);
                                          return 'Calculation: ($totalBags bags × 4000 lbs) ÷ (${feedRate.toStringAsFixed(1)} TPH × 2000 lbs/ton) × 24 hrs/day';
                                        }(),
                                        sublabel: targetEndDate != null &&
                                                projectedStartDate != null
                                            ? () {
                                                final runTimeHours =
                                                    ((selectedLots.fold<int>(
                                                                0,
                                                                (sum, lot) =>
                                                                    sum +
                                                                    lot.selectedBags) *
                                                            4000) /
                                                        (feedRate * 1000) *
                                                        24);
                                                final projectedEndDate =
                                                    projectedStartDate!.add(
                                                  Duration(
                                                      hours:
                                                          runTimeHours.round()),
                                                );
                                                final diff = projectedEndDate
                                                    .difference(targetEndDate!)
                                                    .inDays;
                                                final percentDiff = (diff
                                                            .abs() /
                                                        targetEndDate!
                                                            .difference(
                                                                projectedStartDate!)
                                                            .inDays *
                                                        100)
                                                    .round();
                                                if (percentDiff > 10) {
                                                  return diff > 0
                                                      ? '⚠️ ${percentDiff}% longer than target duration'
                                                      : '⚠️ ${percentDiff}% shorter than target duration';
                                                }
                                                return '✓ Within 10% of target duration';
                                              }()
                                            : 'Based on 24hr leach circuit with current feed rate and bag count',
                                        valueColor: targetEndDate != null &&
                                                projectedStartDate != null
                                            ? () {
                                                final runTimeHours =
                                                    ((selectedLots.fold<int>(
                                                                0,
                                                                (sum, lot) =>
                                                                    sum +
                                                                    lot.selectedBags) *
                                                            4000) /
                                                        (feedRate * 1000) *
                                                        24);
                                                final projectedEndDate =
                                                    projectedStartDate!.add(
                                                  Duration(
                                                      hours:
                                                          runTimeHours.round()),
                                                );
                                                final diff = projectedEndDate
                                                    .difference(targetEndDate!)
                                                    .inDays;
                                                final percentDiff = (diff
                                                            .abs() /
                                                        targetEndDate!
                                                            .difference(
                                                                projectedStartDate!)
                                                            .inDays *
                                                        100)
                                                    .round();
                                                if (percentDiff > 10) {
                                                  return Colors.red[700];
                                                }
                                                return Colors.green[700];
                                              }()
                                            : null,
                                      ),
                                    ),
                                    const SizedBox(width: 24),
                                    Expanded(
                                      child: _buildScheduleItem(
                                        icon: Icons.event,
                                        title: 'Projected End Date',
                                        value: () {
                                          final runTimeHours =
                                              ((selectedLots.fold<int>(
                                                          0,
                                                          (sum, lot) =>
                                                              sum +
                                                              lot.selectedBags) *
                                                      4000) /
                                                  (feedRate * 1000) *
                                                  24);
                                          final endDate =
                                              projectedStartDate!.add(
                                            Duration(
                                                hours: runTimeHours.round()),
                                          );
                                          return "${endDate.month}/${endDate.day}/${endDate.year}";
                                        }(),
                                        sublabel: targetEndDate != null
                                            ? () {
                                                final runTimeHours =
                                                    ((selectedLots.fold<int>(
                                                                0,
                                                                (sum, lot) =>
                                                                    sum +
                                                                    lot.selectedBags) *
                                                            4000) /
                                                        (feedRate * 1000) *
                                                        24);
                                                final projectedEndDate =
                                                    projectedStartDate!.add(
                                                  Duration(
                                                      hours:
                                                          runTimeHours.round()),
                                                );
                                                final diff = projectedEndDate
                                                    .difference(targetEndDate!)
                                                    .inDays;
                                                if (diff == 0)
                                                  return '✓ Matches target end date (${targetEndDate!.month}/${targetEndDate!.day}/${targetEndDate!.year})';
                                                return diff > 0
                                                    ? '⚠️ ${diff.abs()} days after target end (${targetEndDate!.month}/${targetEndDate!.day}/${targetEndDate!.year})'
                                                    : '⚠️ ${diff.abs()} days before target end (${targetEndDate!.month}/${targetEndDate!.day}/${targetEndDate!.year})';
                                              }()
                                            : 'Based on projected run time',
                                        valueColor: targetEndDate != null
                                            ? () {
                                                final runTimeHours =
                                                    ((selectedLots.fold<int>(
                                                                0,
                                                                (sum, lot) =>
                                                                    sum +
                                                                    lot.selectedBags) *
                                                            4000) /
                                                        (feedRate * 1000) *
                                                        24);
                                                final projectedEndDate =
                                                    projectedStartDate!.add(
                                                  Duration(
                                                      hours:
                                                          runTimeHours.round()),
                                                );
                                                return projectedEndDate
                                                        .isAtSameMomentAs(
                                                            targetEndDate!)
                                                    ? Colors.green[700]
                                                    : Colors.red[700];
                                              }()
                                            : null,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),

                            // Production Details Section
                            _buildSection(
                              title: 'Production Details',
                              children: [
                                _buildInfoRow(
                                  icon: Icons.science,
                                  label: 'External Mo lbs/day',
                                  value: (feedRate * 2000 * 24)
                                      .toStringAsFixed(0)
                                      .replaceAllMapped(
                                        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                        (Match m) => '${m[1]},',
                                      ),
                                ),
                                _buildInfoRow(
                                  icon: Icons.balance,
                                  label: 'Total Tons',
                                  value:
                                      '${((selectedLots.fold<int>(0, (sum, lot) => sum + lot.selectedBags) * 4000 / 2000) + (sieProduction * 24 / 2000)).toStringAsFixed(1)}',
                                  sublabel: 'SIE Mo + External',
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),

                            // Feed Composition Section
                            const Text(
                              'Feed Composition',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            FeedCompositionSection(selectedLots: selectedLots),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
