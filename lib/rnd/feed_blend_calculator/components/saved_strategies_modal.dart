import 'package:flutter/material.dart';

class SavedStrategiesModal extends StatelessWidget {
  const SavedStrategiesModal({super.key});

  Widget _buildDateSection(String date, List<Widget> strategies) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
          child: Text(
            date,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ...strategies,
      ],
    );
  }

  Widget _buildStrategyCard(
    String title,
    String description,
    int bags,
    int tons,
    String savedTime,
    bool hasWarning,
  ) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (hasWarning) ...[
                          const SizedBox(width: 8),
                          Icon(Icons.warning_amber_rounded,
                              size: 20, color: Colors.orange[700]),
                        ],
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon:
                            Icon(Icons.delete_outline, color: Colors.grey[700]),
                        onPressed: () {},
                        tooltip: 'Delete',
                      ),
                      const SizedBox(width: 8),
                      FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.blue[700],
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                        ),
                        child: const Row(
                          children: [
                            Text('Load'),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward, size: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.inventory_2,
                          size: 16, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      Text(
                        '$bags bags',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  const SizedBox(width: 24),
                  Row(
                    children: [
                      Icon(Icons.balance, size: 16, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      Text(
                        '$tons tons',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Saved $savedTime',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        width: 600,
        constraints: const BoxConstraints(maxHeight: 800),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey[200]!),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Saved Blend Strategies',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDateSection('March 13, 2024', [
                      _buildStrategyCard(
                        'High Molybdenum Blend',
                        'Optimized for maximum molybdenum content',
                        150,
                        150,
                        '10 months ago at 1:30 AM',
                        true,
                      ),
                    ]),
                    _buildDateSection('March 12, 2024', [
                      _buildStrategyCard(
                        'Low Iron Mix',
                        'Minimized iron content for special applications',
                        150,
                        150,
                        '10 months ago at 8:45 AM',
                        true,
                      ),
                    ]),
                    _buildDateSection('March 11, 2024', [
                      _buildStrategyCard(
                        'Standard Production Blend',
                        'Regular production specifications',
                        200,
                        200,
                        '10 months ago at 4:20 AM',
                        true,
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
