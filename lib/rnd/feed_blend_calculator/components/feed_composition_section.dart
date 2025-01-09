import 'package:flutter/material.dart';

class FeedCompositionSection extends StatefulWidget {
  const FeedCompositionSection({super.key});

  @override
  State<FeedCompositionSection> createState() => _FeedCompositionSectionState();
}

class _FeedCompositionSectionState extends State<FeedCompositionSection> {
  final Map<String, bool> _expandedSections = {
    'Primary Elements': true,
    'Secondary Elements': true,
    'Trace Elements': true,
    'Physical Properties': true,
  };

  Widget _buildElementRow(String name, double value, String range) {
    final limits = range
        .split(' - ')
        .map((e) => double.parse(e.replaceAll('%', '')))
        .toList();
    final isOutOfSpec = value < limits[0] || value > limits[1];
    final progress = (value - limits[0]) / (limits[1] - limits[0]);

    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                '${value.toStringAsFixed(2)}%',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: isOutOfSpec ? Colors.red : Colors.black,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '($range)',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              if (isOutOfSpec) ...[
                const Spacer(),
                Text(
                  'Out of Spec',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.red[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 8),
          Stack(
            children: [
              // Background bar
              Container(
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              // Value bar
              FractionallySizedBox(
                widthFactor: progress.clamp(0.0, 1.0),
                child: Container(
                  height: 8,
                  decoration: BoxDecoration(
                    color: isOutOfSpec ? Colors.red : Colors.blue,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAccordion(
      String title, Map<String, Map<String, dynamic>> elements) {
    final isExpanded = _expandedSections[title] ?? false;
    final hasWarning = elements.values.any((element) {
      final value = element['value'] as double;
      final range = element['range'] as String;
      final limits = range
          .split(' - ')
          .map((e) => double.parse(e.replaceAll('%', '')))
          .toList();
      return value < limits[0] || value > limits[1];
    });

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // Header
          InkWell(
            onTap: () => setState(() => _expandedSections[title] = !isExpanded),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    title == 'Primary Elements'
                        ? Icons.science
                        : title == 'Secondary Elements'
                            ? Icons.science_outlined
                            : title == 'Trace Elements'
                                ? Icons.biotech
                                : Icons.straighten,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  if (hasWarning)
                    Icon(Icons.warning_amber_rounded,
                        size: 20, color: Colors.orange[700]),
                  const SizedBox(width: 8),
                  Icon(
                    isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: Colors.grey[700],
                  ),
                ],
              ),
            ),
          ),
          // Content
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                children: elements.entries.map((entry) {
                  return _buildElementRow(
                    entry.key,
                    entry.value['value'] as double,
                    entry.value['range'] as String,
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Feed Composition',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        // First row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _buildAccordion('Primary Elements', {
                'Molybdenum': {'value': 45.00, 'range': '50.0 - 95.0'},
                'Iron': {'value': 4.20, 'range': '0.0 - 3.5'},
                'Copper': {'value': 3.50, 'range': '1.2 - 2.8'},
                'Lead': {'value': 0.15, 'range': '0.0 - 0.08'},
              }),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildAccordion('Secondary Elements', {
                'Zinc': {'value': 0.35, 'range': '0.0 - 0.5'},
                'Arsenic': {'value': 0.12, 'range': '0.0 - 0.15'},
                'Bismuth': {'value': 0.08, 'range': '0.0 - 0.1'},
                'Antimony': {'value': 0.05, 'range': '0.0 - 0.08'},
              }),
            ),
          ],
        ),
        // Second row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _buildAccordion('Trace Elements', {
                'Selenium': {'value': 0.02, 'range': '0.0 - 0.05'},
                'Tellurium': {'value': 0.01, 'range': '0.0 - 0.03'},
                'Mercury': {'value': 0.001, 'range': '0.0 - 0.005'},
                'Cadmium': {'value': 0.003, 'range': '0.0 - 0.01'},
              }),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildAccordion('Physical Properties', {
                'Moisture': {'value': 8.5, 'range': '5.0 - 10.0'},
                'Bulk Density': {'value': 55.2, 'range': '45.0 - 65.0'},
                'Particle Size': {'value': 150.0, 'range': '100.0 - 200.0'},
                'pH': {'value': 6.8, 'range': '6.0 - 8.0'},
              }),
            ),
          ],
        ),
      ],
    );
  }
}
