import 'package:flutter/material.dart';
import '../../models/lot_data.dart';

class LotCard extends StatelessWidget {
  final LotData lot;
  final Function(int) onBagsChanged;
  final Function(bool) onExpandChanged;
  final VoidCallback? onSpecificationView;
  final VoidCallback? onQualityCertificateView;

  const LotCard({
    super.key,
    required this.lot,
    required this.onBagsChanged,
    required this.onExpandChanged,
    this.onSpecificationView,
    this.onQualityCertificateView,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: const Color(0xFFFCFCFF),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Left Section - Slider
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
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
                            Text(
                              lot.location,
                              style: TextStyle(color: Colors.grey[600]),
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
                                  Text(
                                    'Number of Bags',
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: SliderTheme(
                                          data:
                                              SliderTheme.of(context).copyWith(
                                            activeTrackColor: Colors.blue,
                                            inactiveTrackColor:
                                                Colors.grey[200],
                                            thumbColor: Colors.white,
                                            overlayColor:
                                                Colors.blue.withOpacity(0.1),
                                            valueIndicatorColor: Colors.blue,
                                            showValueIndicator:
                                                ShowValueIndicator.always,
                                          ),
                                          child: Slider(
                                            value: lot.selectedBags.toDouble(),
                                            min: 0,
                                            max: lot.totalBags.toDouble(),
                                            divisions: lot.totalBags,
                                            label: '${lot.selectedBags} bags',
                                            onChanged: (value) =>
                                                onBagsChanged(value.toInt()),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 80,
                                        child: Text(
                                          '${lot.selectedBags} / ${lot.totalBags}',
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
                // Vertical Divider
                Container(
                  width: 1,
                  color: Colors.grey[300],
                ),
                // Right Section - Elements
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Elements',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: lot.elements.entries
                              .map((e) => _buildElementChip(e.key, e.value))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Bottom Section - Lot Details
          if (lot.isExpanded) ...[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[300]!),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Received Date
                  Row(
                    children: [
                      Icon(Icons.calendar_today,
                          size: 16, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      Text(
                        'Received Date',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        lot.receivedDate,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Carrier
                  Row(
                    children: [
                      Icon(Icons.local_shipping,
                          size: 16, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      Text(
                        'Carrier',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        lot.carrier,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Related Documents
                  Row(
                    children: [
                      Icon(Icons.description,
                          size: 16, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      Text(
                        'Related Documents',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: onSpecificationView,
                        icon: const Icon(Icons.article_outlined, size: 16),
                        label: const Text('Specification Sheet'),
                      ),
                      const SizedBox(width: 16),
                      TextButton.icon(
                        onPressed: onQualityCertificateView,
                        icon: const Icon(Icons.verified_outlined, size: 16),
                        label: const Text('Quality Certificate'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Lot Notes
                  Row(
                    children: [
                      Icon(Icons.notes, size: 16, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      Text(
                        'Lot Notes',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'No notes available for this lot.',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ],
          // Expand Button
          InkWell(
            onTap: () => onExpandChanged(!lot.isExpanded),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[300]!),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lot Details',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    lot.isExpanded ? Icons.expand_less : Icons.expand_more,
                    size: 20,
                    color: Colors.grey[600],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildElementChip(String element, double value) {
    final isOutOfSpec = value > 0.5; // Example threshold
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: isOutOfSpec ? Colors.red[50] : Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            element,
            style: TextStyle(
              color: isOutOfSpec ? Colors.red[700] : Colors.grey[700],
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '${value.toStringAsFixed(2)}%',
            style: TextStyle(
              color: isOutOfSpec ? Colors.red[700] : Colors.grey[700],
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
