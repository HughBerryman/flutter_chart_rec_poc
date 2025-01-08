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
          color: Colors.white,
          child: lots.any((lot) => lot.selectedBags > 0)
              ? SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElementsSection(
                          title: 'Blend Composition',
                          elements: {
                            'Mo': {'value': 0.0, 'range': '50% - 95%'},
                            'Fe': {'value': 0.0, 'range': '0% - 3.5%'},
                            'Cu': {'value': 0.0, 'range': '1.2% - 2.8%'},
                            'Pb': {'value': 0.0, 'range': '0% - 0.08%'},
                            'Sn': {'value': 0.0, 'range': '0% - 0.002%'},
                            'Al': {'value': 0.0, 'range': '0% - 0.4%'},
                            'Cl': {'value': 0.0, 'range': '0% - 0.08%'},
                            'K': {'value': 0.0, 'range': '0% - 0.08%'},
                          },
                        ),
                      ],
                    ),
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.science_outlined,
                          size: 64, color: Colors.grey[400]),
                      const SizedBox(height: 16),
                      Text(
                        'Select bags from one or more assays\nto view blend details',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[600],
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
