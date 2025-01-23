import 'package:flutter/material.dart';
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

    return Column(
      children: [
        const SizedBox(height: 32),
        Row(
          children: [
            Icon(
              Icons.science,
              size: 20,
              color: const Color(0xFF757575),
            ),
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
    );
  }
}
