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

  const RightPanel({
    super.key,
    required this.width,
    required this.onWidthChanged,
    required this.lots,
    required this.feedRate,
    required this.sieProduction,
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
      'Mo': [50.0, 95.0],
      'Fe': [0.0, 3.5],
      'Cu': [1.2, 2.8],
      'Pb': [0.0, 0.08],
      'Zn': [0.0, 0.5],
      'As': [0.0, 0.15],
      'Bi': [0.0, 0.1],
      'Sb': [0.0, 0.08],
      'Se': [0.0, 0.05],
      'Te': [0.0, 0.03],
      'Hg': [0.0, 0.005],
      'Cd': [0.0, 0.01],
      'H2O': [5.0, 10.0],
      'Density': [45.0, 65.0],
      'Size': [100.0, 200.0],
      'pH': [6.0, 8.0],
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
    return Expanded(
      child: Card(
        color: const Color(0xFFFCFCFF),
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedLots = lots.where((lot) => lot.selectedBags > 0).toList();
    final hasSelectedLots = selectedLots.isNotEmpty;

    // Calculate total bags and tons
    final totalBags =
        selectedLots.fold<int>(0, (sum, lot) => sum + lot.selectedBags);
    final totalTons =
        totalBags * 4000 / 2000; // 4000 lbs per bag, 2000 lbs per ton

    // Calculate external Mo lbs/day based on feed rate
    final externalMoLbsDay = feedRate * 2000 * 24; // TPH to lbs/day conversion

    // Calculate weighted averages and check for out-of-spec elements
    final weightedAverages = _calculateWeightedAverages(selectedLots);
    final hasOutOfSpecElements = _hasOutOfSpecElements(weightedAverages);

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
              color: Colors.grey[200],
              child: Center(
                child: Container(
                  width: 2,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
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
          decoration: BoxDecoration(
            color: const Color(0xFFEBF2F8),
            border: Border(
              left: BorderSide(
                color: Colors.grey[300]!,
                width: 1,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 4,
                offset: const Offset(-2, 0),
              ),
            ],
          ),
          child: hasSelectedLots
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
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
                            // Stats Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _buildStatCard(
                                  icon: Icons.inventory_2,
                                  value: totalBags.toString(),
                                  label: 'Bags Selected',
                                ),
                                _buildStatCard(
                                  icon: Icons.science,
                                  value: externalMoLbsDay
                                      .toStringAsFixed(0)
                                      .replaceAllMapped(
                                        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                        (Match m) => '${m[1]},',
                                      ),
                                  label: 'External Mo lbs/day',
                                ),
                                _buildStatCard(
                                  icon: Icons.balance,
                                  value:
                                      (totalTons + (sieProduction * 24 / 2000))
                                          .toStringAsFixed(1),
                                  label: 'Total Tons (SIE Mo + External)',
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),

                            // Out of Specification Warning
                            if (hasOutOfSpecElements)
                              Card(
                                color: Colors.red[50],
                                margin: EdgeInsets.zero,
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.warning_amber_rounded,
                                          color: Colors.red[700], size: 24),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Out of Specification Elements',
                                              style: TextStyle(
                                                color: Colors.red[700],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              'One or more elements outside target range',
                                              style: TextStyle(
                                                color: Colors.red[700],
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if (hasOutOfSpecElements)
                              const SizedBox(height: 24),

                            // Feed Composition Section
                            FeedCompositionSection(selectedLots: selectedLots),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.science_outlined,
                          size: 48, color: Colors.grey),
                      SizedBox(height: 16),
                      Text(
                        'Select bags from assays to view blend details',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
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
