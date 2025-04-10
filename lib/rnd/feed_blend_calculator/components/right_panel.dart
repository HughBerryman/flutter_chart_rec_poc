import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import '../../models/lot_data.dart';
import '../widgets/elements_section.dart';
import 'feed_composition_section.dart';

class RightPanel extends StatefulWidget {
  final List<LotData> lots;
  final double width;
  final ValueChanged<double> onWidthChanged;
  final double feedRate;
  final double sieProduction;
  final DateTime? projectedStartDate;
  final DateTime? targetEndDate;
  final GlobalKey feedCompositionKey = GlobalKey();

  RightPanel({
    super.key,
    required this.lots,
    required this.width,
    required this.onWidthChanged,
    required this.feedRate,
    required this.sieProduction,
    this.projectedStartDate,
    this.targetEndDate,
  });

  @override
  State<RightPanel> createState() => _RightPanelState();
}

class _RightPanelState extends State<RightPanel> {
  bool _isProductionRatesExpanded = false;
  bool _isFeedMaterialExpanded = false;

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

  Widget _buildCompactStatCard({
    required IconData icon,
    required String label,
    required String value,
    String? sublabel,
    String? tooltip,
    Color? valueColor,
    VoidCallback? onTap,
  }) {
    final card = Container(
      height: 120,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: Colors.grey[700]),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text(
                      value,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: valueColor ?? Colors.black87,
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
              ),
            ],
          ),
          if (sublabel != null) ...[
            const SizedBox(height: 4),
            Text(
              sublabel,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ] else
            Text(
              '\u200B',
              style: const TextStyle(fontSize: 12),
            ),
        ],
      ),
    );

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: card,
      );
    }

    return card;
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
    final selectedLots =
        widget.lots.where((lot) => lot.selectedBags > 0).toList();
    final hasSelectedLots = selectedLots.isNotEmpty;

    return Row(
      children: [
        // Resizable Divider
        MouseRegion(
          cursor: SystemMouseCursors.resizeColumn,
          child: GestureDetector(
            onHorizontalDragUpdate: (details) {
              final screenWidth = MediaQuery.of(context).size.width;
              final minWidth = context.isMedium ? 300.0 : 400.0;
              final maxWidthFactor = context.isLarge ? 0.7 : 0.6;

              // Use details.globalPosition.dx directly for more responsive dragging
              // Calculate new width based on screen position rather than delta
              final newWidth = screenWidth - details.globalPosition.dx;
              widget.onWidthChanged(
                newWidth.clamp(minWidth, screenWidth * maxWidthFactor),
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
          width: widget.width,
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
                        color: const Color(0xFFEBF2F8),
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
                            '${selectedLots.length} ${selectedLots.length == 1 ? 'lot' : 'lots'} in blend',
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
                            Card(
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              color: Colors.white,
                              surfaceTintColor: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Schedule Row
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today,
                                            size: 20, color: Colors.grey[700]),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Schedule Projection',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: _buildCompactStatCard(
                                            icon: Icons.calendar_today,
                                            label: 'Start',
                                            value: widget.projectedStartDate !=
                                                    null
                                                ? "${widget.projectedStartDate!.month}/${widget.projectedStartDate!.day}/${widget.projectedStartDate!.year}"
                                                : 'Not Set',
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        Expanded(
                                          child: _buildCompactStatCard(
                                            icon: Icons.timer,
                                            label: 'Duration',
                                            value: () {
                                              final externalTons =
                                                  selectedLots.fold<double>(
                                                      0,
                                                      (sum, lot) =>
                                                          sum +
                                                          (lot.selectedBags *
                                                              lot.lbsPerBag /
                                                              2000));
                                              final sieTons =
                                                  widget.sieProduction *
                                                      24 /
                                                      2000;
                                              final totalTons =
                                                  externalTons + sieTons;
                                              final runTimeHours =
                                                  (totalTons * 2000) /
                                                      (widget.feedRate * 1000) *
                                                      24;
                                              final days = runTimeHours / 24;
                                              return '${days.toStringAsFixed(1)} days';
                                            }(),
                                            tooltip: () {
                                              final bagsAndLbs = selectedLots
                                                  .map((lot) =>
                                                      '${lot.selectedBags} bags × ${lot.lbsPerBag} lbs')
                                                  .join(' + ');
                                              return 'Calculation: ($bagsAndLbs + ${widget.sieProduction.toStringAsFixed(1)}k × 24 hrs) ÷ (${widget.feedRate.toStringAsFixed(1)} TPH × 2000 lbs/ton) × 24 hrs/day';
                                            }(),
                                            sublabel: widget.targetEndDate !=
                                                        null &&
                                                    widget.projectedStartDate !=
                                                        null
                                                ? () {
                                                    final externalTons =
                                                        selectedLots.fold<
                                                                double>(
                                                            0,
                                                            (sum, lot) =>
                                                                sum +
                                                                (lot.selectedBags *
                                                                    lot.lbsPerBag /
                                                                    2000));
                                                    final sieTons =
                                                        widget.sieProduction *
                                                            24 /
                                                            2000;
                                                    final totalTons =
                                                        externalTons + sieTons;
                                                    final runTimeHours =
                                                        (totalTons * 2000) /
                                                            (widget.feedRate *
                                                                1000) *
                                                            24;
                                                    final projectedEndDate =
                                                        widget
                                                            .projectedStartDate!
                                                            .add(
                                                      Duration(
                                                          hours: runTimeHours
                                                              .round()),
                                                    );
                                                    final sameDay = projectedEndDate
                                                                .year ==
                                                            widget
                                                                .targetEndDate!
                                                                .year &&
                                                        projectedEndDate
                                                                .month ==
                                                            widget
                                                                .targetEndDate!
                                                                .month &&
                                                        projectedEndDate.day ==
                                                            widget
                                                                .targetEndDate!
                                                                .day;
                                                    if (sameDay) {
                                                      return '✓ Matches target';
                                                    }
                                                    final diff =
                                                        projectedEndDate
                                                            .difference(widget
                                                                .targetEndDate!)
                                                            .inHours;
                                                    final days = (diff / 24)
                                                        .ceil()
                                                        .abs();
                                                    return diff > 0
                                                        ? '⚠️ $days days longer than target'
                                                        : '⚠️ $days days shorter than target';
                                                  }()
                                                : 'Based on current feed rate',
                                            valueColor: widget.targetEndDate !=
                                                        null &&
                                                    widget.projectedStartDate !=
                                                        null
                                                ? () {
                                                    final externalTons =
                                                        selectedLots.fold<
                                                                double>(
                                                            0,
                                                            (sum, lot) =>
                                                                sum +
                                                                (lot.selectedBags *
                                                                    lot.lbsPerBag /
                                                                    2000));
                                                    final sieTons =
                                                        widget.sieProduction *
                                                            24 /
                                                            2000;
                                                    final totalTons =
                                                        externalTons + sieTons;
                                                    final runTimeHours =
                                                        (totalTons * 2000) /
                                                            (widget.feedRate *
                                                                1000) *
                                                            24;
                                                    final projectedEndDate =
                                                        widget
                                                            .projectedStartDate!
                                                            .add(
                                                      Duration(
                                                          hours: runTimeHours
                                                              .round()),
                                                    );
                                                    final sameDay = projectedEndDate
                                                                .year ==
                                                            widget
                                                                .targetEndDate!
                                                                .year &&
                                                        projectedEndDate
                                                                .month ==
                                                            widget
                                                                .targetEndDate!
                                                                .month &&
                                                        projectedEndDate.day ==
                                                            widget
                                                                .targetEndDate!
                                                                .day;
                                                    if (sameDay) {
                                                      return Colors.green[700];
                                                    }
                                                    final diff =
                                                        projectedEndDate
                                                            .difference(widget
                                                                .targetEndDate!)
                                                            .inHours;
                                                    return diff > 0
                                                        ? Colors.red[700]
                                                        : Colors.amber[700];
                                                  }()
                                                : null,
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        Expanded(
                                          child: _buildCompactStatCard(
                                            icon: Icons.event,
                                            label: 'Projected End',
                                            value: () {
                                              if (widget.projectedStartDate ==
                                                  null) return 'Not Set';
                                              final externalTons =
                                                  selectedLots.fold<double>(
                                                      0,
                                                      (sum, lot) =>
                                                          sum +
                                                          (lot.selectedBags *
                                                              lot.lbsPerBag /
                                                              2000));
                                              final sieTons =
                                                  widget.sieProduction *
                                                      24 /
                                                      2000;
                                              final totalTons =
                                                  externalTons + sieTons;
                                              final runTimeHours =
                                                  (totalTons * 2000) /
                                                      (widget.feedRate * 1000) *
                                                      24;
                                              final endDate = widget
                                                  .projectedStartDate!
                                                  .add(
                                                Duration(
                                                    hours:
                                                        runTimeHours.round()),
                                              );
                                              return "${endDate.month}/${endDate.day}/${endDate.year}";
                                            }(),
                                            sublabel: widget.targetEndDate !=
                                                    null
                                                ? () {
                                                    final externalTons =
                                                        selectedLots.fold<
                                                                double>(
                                                            0,
                                                            (sum, lot) =>
                                                                sum +
                                                                (lot.selectedBags *
                                                                    lot.lbsPerBag /
                                                                    2000));
                                                    final sieTons =
                                                        widget.sieProduction *
                                                            24 /
                                                            2000;
                                                    final totalTons =
                                                        externalTons + sieTons;
                                                    final runTimeHours =
                                                        (totalTons * 2000) /
                                                            (widget.feedRate *
                                                                1000) *
                                                            24;
                                                    final projectedEndDate =
                                                        widget
                                                            .projectedStartDate!
                                                            .add(
                                                      Duration(
                                                          hours: runTimeHours
                                                              .round()),
                                                    );
                                                    final sameDay = projectedEndDate
                                                                .year ==
                                                            widget
                                                                .targetEndDate!
                                                                .year &&
                                                        projectedEndDate
                                                                .month ==
                                                            widget
                                                                .targetEndDate!
                                                                .month &&
                                                        projectedEndDate.day ==
                                                            widget
                                                                .targetEndDate!
                                                                .day;
                                                    if (sameDay) {
                                                      return '✓ Matches target';
                                                    }
                                                    final diff =
                                                        projectedEndDate
                                                            .difference(widget
                                                                .targetEndDate!)
                                                            .inHours;
                                                    final days = (diff / 24)
                                                        .ceil()
                                                        .abs();
                                                    return diff > 0
                                                        ? '⚠️ $days days after target'
                                                        : '⚠️ $days days before target';
                                                  }()
                                                : 'Based on duration',
                                            valueColor: widget.targetEndDate !=
                                                    null
                                                ? () {
                                                    final externalTons =
                                                        selectedLots.fold<
                                                                double>(
                                                            0,
                                                            (sum, lot) =>
                                                                sum +
                                                                (lot.selectedBags *
                                                                    lot.lbsPerBag /
                                                                    2000));
                                                    final sieTons =
                                                        widget.sieProduction *
                                                            24 /
                                                            2000;
                                                    final totalTons =
                                                        externalTons + sieTons;
                                                    final runTimeHours =
                                                        (totalTons * 2000) /
                                                            (widget.feedRate *
                                                                1000) *
                                                            24;
                                                    final projectedEndDate =
                                                        widget
                                                            .projectedStartDate!
                                                            .add(
                                                      Duration(
                                                          hours: runTimeHours
                                                              .round()),
                                                    );
                                                    final sameDay = projectedEndDate
                                                                .year ==
                                                            widget
                                                                .targetEndDate!
                                                                .year &&
                                                        projectedEndDate
                                                                .month ==
                                                            widget
                                                                .targetEndDate!
                                                                .month &&
                                                        projectedEndDate.day ==
                                                            widget
                                                                .targetEndDate!
                                                                .day;
                                                    if (sameDay) {
                                                      return Colors.green[700];
                                                    }
                                                    final diff =
                                                        projectedEndDate
                                                            .difference(widget
                                                                .targetEndDate!)
                                                            .inHours;
                                                    return diff > 0
                                                        ? Colors.red[700]
                                                        : Colors.amber[700];
                                                  }()
                                                : null,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 24),

                                    // Production Rates Accordion
                                    Card(
                                      margin: EdgeInsets.zero,
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                _isProductionRatesExpanded =
                                                    !_isProductionRatesExpanded;
                                              });
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12,
                                                      horizontal: 16),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.speed,
                                                      size: 20,
                                                      color: Colors.grey[700]),
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    'Production Rates',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.grey[800],
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  if (!_isProductionRatesExpanded) ...[
                                                    Text(
                                                      () {
                                                        final externalTons =
                                                            selectedLots.fold<
                                                                    double>(
                                                                0,
                                                                (sum, lot) =>
                                                                    sum +
                                                                    (lot.selectedBags *
                                                                        lot.lbsPerBag /
                                                                        2000));
                                                        final sieTons = widget
                                                                .sieProduction *
                                                            24 /
                                                            2000;
                                                        return '${(externalTons + sieTons).toStringAsFixed(1)} total tons';
                                                      }(),
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey[600],
                                                      ),
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Tooltip(
                                                      message: () {
                                                        final bagsAndLbs =
                                                            selectedLots
                                                                .map((lot) =>
                                                                    '${lot.selectedBags} bags × ${lot.lbsPerBag} lbs')
                                                                .join(' + ');
                                                        final externalTons =
                                                            selectedLots.fold<
                                                                    double>(
                                                                0,
                                                                (sum, lot) =>
                                                                    sum +
                                                                    (lot.selectedBags *
                                                                        lot.lbsPerBag /
                                                                        2000));
                                                        final sieTons = widget
                                                                .sieProduction *
                                                            24 /
                                                            2000;
                                                        final totalTons =
                                                            externalTons +
                                                                sieTons;
                                                        final runTimeHours =
                                                            (totalTons * 2000) /
                                                                (widget.feedRate *
                                                                    1000) *
                                                                24;
                                                        final days =
                                                            (runTimeHours / 24)
                                                                .toStringAsFixed(
                                                                    1);
                                                        return 'Total tons for the entire run: (External Feed: $bagsAndLbs) + (SIE Mo: ${widget.sieProduction.toStringAsFixed(1)}k lbs/day × $days days)';
                                                      }(),
                                                      child: Icon(
                                                        Icons.info_outline,
                                                        size: 14,
                                                        color: Colors.grey[400],
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                  ],
                                                  Icon(
                                                    _isProductionRatesExpanded
                                                        ? Icons.expand_less
                                                        : Icons.expand_more,
                                                    size: 20,
                                                    color: Colors.grey[600],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          if (_isProductionRatesExpanded)
                                            Container(
                                              padding: const EdgeInsets.all(16),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child:
                                                        _buildCompactStatCard(
                                                      icon: Icons.speed,
                                                      label: 'Feed Rate',
                                                      value:
                                                          '${widget.feedRate.toStringAsFixed(1)} TPH',
                                                    ),
                                                  ),
                                                  const SizedBox(width: 16),
                                                  Expanded(
                                                    child:
                                                        _buildCompactStatCard(
                                                      icon: Icons.science,
                                                      label:
                                                          'SIE Mo Production',
                                                      value:
                                                          '${widget.sieProduction.toStringAsFixed(1)}k lbs/day',
                                                    ),
                                                  ),
                                                  const SizedBox(width: 16),
                                                  Expanded(
                                                    child:
                                                        _buildCompactStatCard(
                                                      icon: Icons.balance,
                                                      label:
                                                          'Total Tons Processed',
                                                      value: () {
                                                        final externalTons =
                                                            selectedLots.fold<
                                                                    double>(
                                                                0,
                                                                (sum, lot) =>
                                                                    sum +
                                                                    (lot.selectedBags *
                                                                        lot.lbsPerBag /
                                                                        2000));
                                                        final sieTons = widget
                                                                .sieProduction *
                                                            24 /
                                                            2000;
                                                        return '${(externalTons + sieTons).toStringAsFixed(1)} tons';
                                                      }(),
                                                      sublabel: () {
                                                        if (widget.targetEndDate ==
                                                                null ||
                                                            widget.projectedStartDate ==
                                                                null) {
                                                          return 'Based on current feed rate';
                                                        }
                                                        final externalTons =
                                                            selectedLots.fold<
                                                                    double>(
                                                                0,
                                                                (sum, lot) =>
                                                                    sum +
                                                                    (lot.selectedBags *
                                                                        lot.lbsPerBag /
                                                                        2000));
                                                        final sieTons = widget
                                                                .sieProduction *
                                                            24 /
                                                            2000;
                                                        final totalTons =
                                                            externalTons +
                                                                sieTons;
                                                        final runTimeHours =
                                                            (totalTons * 2000) /
                                                                (widget.feedRate *
                                                                    1000) *
                                                                24;
                                                        final projectedEndDate =
                                                            widget
                                                                .projectedStartDate!
                                                                .add(
                                                          Duration(
                                                              hours:
                                                                  runTimeHours
                                                                      .round()),
                                                        );
                                                        final sameDay = projectedEndDate
                                                                    .year ==
                                                                widget
                                                                    .targetEndDate!
                                                                    .year &&
                                                            projectedEndDate
                                                                    .month ==
                                                                widget
                                                                    .targetEndDate!
                                                                    .month &&
                                                            projectedEndDate
                                                                    .day ==
                                                                widget
                                                                    .targetEndDate!
                                                                    .day;
                                                        if (sameDay) {
                                                          return '✓ Matches target duration';
                                                        }
                                                        final diff = projectedEndDate
                                                            .difference(widget
                                                                .targetEndDate!)
                                                            .inHours;
                                                        final days = (diff / 24)
                                                            .ceil()
                                                            .abs();
                                                        return diff > 0
                                                            ? '⚠️ $days days over target'
                                                            : '⚠️ $days days under target';
                                                      }(),
                                                      tooltip: () {
                                                        final bagsAndLbs =
                                                            selectedLots
                                                                .map((lot) =>
                                                                    '${lot.selectedBags} bags × ${lot.lbsPerBag} lbs')
                                                                .join(' + ');
                                                        final externalTons =
                                                            selectedLots.fold<
                                                                    double>(
                                                                0,
                                                                (sum, lot) =>
                                                                    sum +
                                                                    (lot.selectedBags *
                                                                        lot.lbsPerBag /
                                                                        2000));
                                                        final sieTons = widget
                                                                .sieProduction *
                                                            24 /
                                                            2000;
                                                        final totalTons =
                                                            externalTons +
                                                                sieTons;
                                                        final runTimeHours =
                                                            (totalTons * 2000) /
                                                                (widget.feedRate *
                                                                    1000) *
                                                                24;
                                                        final days =
                                                            (runTimeHours / 24)
                                                                .toStringAsFixed(
                                                                    1);
                                                        return 'Total tons for the entire run: (External Feed: $bagsAndLbs) + (SIE Mo: ${widget.sieProduction.toStringAsFixed(1)}k lbs/day × $days days)';
                                                      }(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 16),

                                    // Feed Material Details Accordion
                                    Card(
                                      margin: EdgeInsets.zero,
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                _isFeedMaterialExpanded =
                                                    !_isFeedMaterialExpanded;
                                              });
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12,
                                                      horizontal: 16),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.science,
                                                      size: 20,
                                                      color: Colors.grey[700]),
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    'Feed Material Details',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.grey[800],
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  if (!_isFeedMaterialExpanded) ...[
                                                    Text(
                                                      '${selectedLots.fold<int>(0, (sum, lot) => sum + lot.selectedBags)} external bags',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey[600],
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                  ],
                                                  Icon(
                                                    _isFeedMaterialExpanded
                                                        ? Icons.expand_less
                                                        : Icons.expand_more,
                                                    size: 20,
                                                    color: Colors.grey[600],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          if (_isFeedMaterialExpanded)
                                            Container(
                                              padding: const EdgeInsets.all(16),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child:
                                                        _buildCompactStatCard(
                                                      icon: Icons.folder,
                                                      label: 'Lots',
                                                      value:
                                                          '${selectedLots.length} ${selectedLots.length == 1 ? 'lot' : 'lots'}',
                                                    ),
                                                  ),
                                                  const SizedBox(width: 16),
                                                  Expanded(
                                                    child:
                                                        _buildCompactStatCard(
                                                      icon: Icons.inventory_2,
                                                      label: 'External Bags',
                                                      value:
                                                          '${selectedLots.fold<int>(0, (sum, lot) => sum + lot.selectedBags)} bags',
                                                    ),
                                                  ),
                                                  const SizedBox(width: 16),
                                                  Expanded(
                                                    child:
                                                        _buildCompactStatCard(
                                                      icon: Icons.science,
                                                      label:
                                                          'External Mo lbs/day',
                                                      value: () {
                                                        final lbsPerDay = selectedLots
                                                            .fold<double>(
                                                                0,
                                                                (sum, lot) =>
                                                                    sum +
                                                                    (lot.selectedBags *
                                                                        lot.lbsPerBag /
                                                                        24))
                                                            .round();
                                                        return "${lbsPerDay.toString().replaceAllMapped(
                                                              RegExp(
                                                                  r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                                              (Match m) =>
                                                                  '${m[1]},',
                                                            )} lbs/day";
                                                      }(),
                                                      tooltip: () {
                                                        final bagsAndLbs =
                                                            selectedLots
                                                                .map((lot) =>
                                                                    '${lot.selectedBags} bags × ${lot.lbsPerBag} lbs')
                                                                .join(' + ');
                                                        return 'Calculation: ($bagsAndLbs) ÷ 24 hrs';
                                                      }(),
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
                              ),
                            ),
                            const SizedBox(height: 32),
                            Row(
                              children: [
                                Icon(Icons.science,
                                    size: 20, color: Colors.grey[700]),
                                const SizedBox(width: 8),
                                Text(
                                  'Feed Composition',
                                  key: widget.feedCompositionKey,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
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
