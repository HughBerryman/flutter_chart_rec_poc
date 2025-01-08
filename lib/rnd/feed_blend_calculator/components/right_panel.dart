import 'package:flutter/material.dart';
import '../../models/lot_data.dart';
import '../widgets/elements_section.dart';

class RightPanel extends StatelessWidget {
  final double width;
  final ValueChanged<double> onWidthChanged;
  final List<LotData> lots;

  const RightPanel({
    super.key,
    required this.width,
    required this.onWidthChanged,
    required this.lots,
  });

  @override
  Widget build(BuildContext context) {
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
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
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
          child: Column(
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
                      '${lots.where((lot) => lot.selectedBags > 0).length} of ${lots.length} assays selected',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: lots.any((lot) => lot.selectedBags > 0)
                    ? SingleChildScrollView(
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
                                  value: '36',
                                  label: 'Bags Selected',
                                ),
                                _buildStatCard(
                                  icon: Icons.science,
                                  value: '133,600',
                                  label: 'External Mo lbs/day',
                                ),
                                _buildStatCard(
                                  icon: Icons.balance,
                                  value: '61',
                                  label: 'Total Tons (SIE Mo + External)',
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),

                            // Out of Specification Warning
                            Card(
                              color: Colors.red[50],
                              margin: EdgeInsets.zero,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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

                            // Elements Row
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Primary Elements
                                Expanded(
                                  child: ElementsSection(
                                    title: 'Primary Elements',
                                    elements: {
                                      'Molybdenum': {
                                        'value': 45.00,
                                        'range': '50% - 95%'
                                      },
                                      'Iron': {
                                        'value': 4.20,
                                        'range': '0% - 3.5%'
                                      },
                                      'Copper': {
                                        'value': 3.50,
                                        'range': '1.2% - 2.8%'
                                      },
                                      'Lead': {
                                        'value': 0.15,
                                        'range': '0% - 0.08%'
                                      },
                                    },
                                  ),
                                ),
                                const SizedBox(width: 16),
                                // Secondary Elements
                                Expanded(
                                  child: ElementsSection(
                                    title: 'Secondary Elements',
                                    elements: {
                                      'Tin': {
                                        'value': 0.01,
                                        'range': '0% - 0.002%'
                                      },
                                      'Aluminum': {
                                        'value': 0.60,
                                        'range': '0% - 0.4%'
                                      },
                                      'Chlorine': {
                                        'value': 0.12,
                                        'range': '0% - 0.08%'
                                      },
                                      'Potassium': {
                                        'value': 0.15,
                                        'range': '0% - 0.08%'
                                      },
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),

                            // Properties Section
                            ElementsSection(
                              title: 'Properties',
                              elements: {
                                'Moisture': {'value': 0.00, 'range': '0% - 7%'},
                                'Oil': {'value': 0.00, 'range': '0% - 7%'},
                              },
                            ),
                          ],
                        ),
                      )
                    : Center(
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
                              'Select bags from one or more assays\nto view blend details',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
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
}
