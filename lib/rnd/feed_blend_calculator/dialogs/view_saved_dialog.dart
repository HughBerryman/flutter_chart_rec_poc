import 'package:flutter/material.dart';

class ViewSavedDialog extends StatelessWidget {
  const ViewSavedDialog({super.key});

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
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.grey[200]!),
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
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () {},
                        tooltip: 'Delete',
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
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
                      const Icon(Icons.inventory_2, size: 16),
                      const SizedBox(width: 8),
                      Text('$bags bags'),
                    ],
                  ),
                  const SizedBox(width: 24),
                  Row(
                    children: [
                      const Icon(Icons.balance, size: 16),
                      const SizedBox(width: 8),
                      Text('$tons tons'),
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
      backgroundColor: const Color(0xFFFCFCFF),
      child: Container(
        width: 600,
        constraints: const BoxConstraints(maxHeight: 800),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with close button
            Padding(
              padding: const EdgeInsets.all(24),
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
            const Divider(height: 1),

            // Scrollable content
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // March 13, 2024
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

                    // March 12, 2024
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

                    // March 11, 2024
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
