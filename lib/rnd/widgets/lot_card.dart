import 'package:flutter/material.dart';
import '../models/lot_data.dart';

class LotCard extends StatelessWidget {
  final LotData lot;
  final Function(int) onBagsChanged;
  final Function(bool) onExpandChanged;
  final Function() onSpecificationView;
  final Function() onQualityCertificateView;

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
      color: const Color(0xFFFCFCFF),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main content row with divider
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Left side - Header and Slider
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Header
                        Row(
                          children: [
                            Text(
                              lot.id,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(Icons.edit, size: 16, color: Colors.blue[700]),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          lot.location,
                          style: const TextStyle(fontSize: 15),
                        ),
                        Text(
                          lot.bagInfo,
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 12),
                        ),
                        const SizedBox(height: 24),
                        // Slider section
                        const Text(
                          'Number of Bags',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
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
                                  inactiveTrackColor: Colors.grey[200],
                                  thumbColor: Colors.white,
                                  overlayColor: Colors.blue.withOpacity(0.1),
                                  valueIndicatorColor: Colors.blue[700],
                                  showValueIndicator: ShowValueIndicator.always,
                                  trackHeight: 4,
                                ),
                                child: Slider(
                                  value: lot.selectedBags.toDouble(),
                                  min: 0,
                                  max: lot.totalBags.toDouble(),
                                  divisions: lot.totalBags,
                                  label: lot.selectedBags.toString(),
                                  onChanged: (value) =>
                                      onBagsChanged(value.toInt()),
                                ),
                              ),
                            ),
                            Container(
                              width: 40,
                              alignment: Alignment.center,
                              child: Text(
                                lot.selectedBags.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
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
                // Right side - Element grid
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Wrap(
                      spacing: 32,
                      runSpacing: 16,
                      children: lot.elements.entries.map((entry) {
                        final isHighValue = entry.value > 5;
                        return SizedBox(
                          width: 70,
                          child: Column(
                            children: [
                              Text(
                                entry.key,
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${entry.value.toStringAsFixed(2)}%',
                                style: TextStyle(
                                  color:
                                      isHighValue ? Colors.orange[700] : null,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Bottom expandable section
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey[300]!),
                    bottom: BorderSide(color: Colors.grey[300]!),
                  ),
                ),
                child: InkWell(
                  onTap: () => onExpandChanged(!lot.isExpanded),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lot Details',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          lot.isExpanded
                              ? Icons.expand_less
                              : Icons.expand_more,
                          color: Colors.grey[700],
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (lot.isExpanded)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Received Date and Carrier
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today,
                                        size: 16, color: Colors.grey[600]),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Received Date',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '${lot.receivedDate.month}/${lot.receivedDate.day}/${lot.receivedDate.year}',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.local_shipping,
                                        size: 16, color: Colors.grey[600]),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Carrier',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  lot.carrier,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Related Documents
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.description,
                                  size: 16, color: Colors.grey[600]),
                              const SizedBox(width: 8),
                              Text(
                                'Related Documents',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: Card(
                                  color: const Color(0xFFFCFCFF),
                                  margin: EdgeInsets.zero,
                                  child: InkWell(
                                    onTap: onSpecificationView,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        children: [
                                          Icon(Icons.link,
                                              size: 16,
                                              color: Colors.blue[700]),
                                          const SizedBox(width: 8),
                                          Text(
                                            'Specification Sheet',
                                            style: TextStyle(
                                              color: Colors.blue[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Card(
                                  color: const Color(0xFFFCFCFF),
                                  margin: EdgeInsets.zero,
                                  child: InkWell(
                                    onTap: onQualityCertificateView,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        children: [
                                          Icon(Icons.link,
                                              size: 16,
                                              color: Colors.blue[700]),
                                          const SizedBox(width: 8),
                                          Text(
                                            'Quality Certificate',
                                            style: TextStyle(
                                              color: Colors.blue[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Lot Notes
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lot Notes:',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'No additional notes for this lot.',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 13,
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
    );
  }
}
