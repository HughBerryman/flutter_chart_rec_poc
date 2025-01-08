import 'package:flutter/material.dart';

class ElementsSection extends StatelessWidget {
  final String title;
  final Map<String, Map<String, dynamic>> elements;

  const ElementsSection({
    super.key,
    required this.title,
    required this.elements,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFCFCFF),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.expand_more),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    // TODO: Implement expand/collapse
                  },
                ),
              ],
            ),
            const Divider(),
            ...elements.entries.map((element) => _buildElementRow(
                  element.key,
                  element.value['value'] as double,
                  element.value['range'] as String,
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildElementRow(String name, double value, String range) {
    // Calculate if value is out of spec based on range
    final rangeParts = range.replaceAll('%', '').split(' - ');
    final minValue = double.parse(rangeParts[0]);
    final maxValue = double.parse(rangeParts[1]);
    final isOutOfSpec = value < minValue || value > maxValue;

    // Calculate progress value (0-1)
    final progressValue = (value - minValue) / (maxValue - minValue);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                '${value.toStringAsFixed(2)}%',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isOutOfSpec ? Colors.red[700] : null,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                range,
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
              if (isOutOfSpec)
                Text(
                  'Out of Spec',
                  style: TextStyle(color: Colors.red[700], fontSize: 12),
                ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 6,
            child: LinearProgressIndicator(
              value: progressValue.clamp(0.0, 1.0),
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(
                isOutOfSpec ? Colors.red : Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
