import 'package:flutter/material.dart';
import '../../models/lot_data.dart';

class LotCard extends StatelessWidget {
  final LotData lot;
  final ValueChanged<int> onBagsChanged;
  final ValueChanged<bool> onExpandChanged;
  final VoidCallback onSpecificationView;
  final VoidCallback onQualityCertificateView;

  const LotCard({
    super.key,
    required this.lot,
    required this.onBagsChanged,
    required this.onExpandChanged,
    required this.onSpecificationView,
    required this.onQualityCertificateView,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: const Color(0xFFFCFCFF),
      child: Column(
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            lot.id,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              lot.location,
                              style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '150 bags in lot (4,000 lbs/bag)',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.description_outlined),
                      onPressed: onSpecificationView,
                      tooltip: 'View Specifications',
                    ),
                    IconButton(
                      icon: const Icon(Icons.verified_outlined),
                      onPressed: onQualityCertificateView,
                      tooltip: 'View Quality Certificate',
                    ),
                    IconButton(
                      icon: Icon(lot.isExpanded
                          ? Icons.expand_less
                          : Icons.expand_more),
                      onPressed: () => onExpandChanged(!lot.isExpanded),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Bags Selection
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey[200]!),
              ),
            ),
            child: Row(
              children: [
                const Text('Number of Bags'),
                const SizedBox(width: 16),
                SizedBox(
                  width: 200,
                  child: Slider(
                    value: lot.selectedBags.toDouble(),
                    min: 0,
                    max: 150,
                    divisions: 150,
                    label: lot.selectedBags.toString(),
                    onChanged: (value) => onBagsChanged(value.toInt()),
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  lot.selectedBags.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Expanded Content
          if (lot.isExpanded)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[200]!),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Element Composition',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: lot.elements.entries.map((element) {
                      return SizedBox(
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              element.key,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${element.value.toStringAsFixed(2)}%',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
