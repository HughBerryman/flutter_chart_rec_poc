import 'package:flutter/material.dart';

class FeedBlendCalculator extends StatefulWidget {
  const FeedBlendCalculator({super.key});

  @override
  State<FeedBlendCalculator> createState() => _FeedBlendCalculatorState();
}

class _FeedBlendCalculatorState extends State<FeedBlendCalculator> {
  double feedRate = 7.0;
  double sieProduction = 50.0;
  int selectedBags = 26;
  bool showSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Row(
          children: [
            Icon(Icons.science),
            SizedBox(width: 8),
            Text('Feed Calculator'),
            Text(' • 1 of 60 assays selected',
                style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.visibility),
            label: const Text('View Saved'),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.save),
            label: const Text('Save Strategy'),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.file_download),
            label: const Text('Export'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Feed Rate and SIE Mo Production Sliders
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text('Overall Feed Rate'),
                        Expanded(
                          child: Slider(
                            value: feedRate,
                            min: 0,
                            max: 15,
                            onChanged: (value) =>
                                setState(() => feedRate = value),
                          ),
                        ),
                        Text('${feedRate.toStringAsFixed(1)} TPH'),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('SIE Mo Production'),
                        Expanded(
                          child: Slider(
                            value: sieProduction,
                            min: 0,
                            max: 100,
                            onChanged: (value) =>
                                setState(() => sieProduction = value),
                          ),
                        ),
                        Text('${sieProduction.toStringAsFixed(1)}k lbs/day'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Feed Material Assays Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Feed Material Assays',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '1 of 60 assays selected',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Filter Row
            Row(
              children: [
                DropdownButton<String>(
                  hint: const Text('All Locations'),
                  items: const [],
                  onChanged: (value) {},
                ),
                const SizedBox(width: 16),
                DropdownButton<String>(
                  hint: const Text('No sort applied'),
                  items: const [],
                  onChanged: (value) {},
                ),
                const SizedBox(width: 16),
                Switch(
                  value: showSelected,
                  onChanged: (value) => setState(() => showSelected = value),
                ),
                const Text('Show Selected (1)'),
              ],
            ),
            const SizedBox(height: 16),

            // Lot Cards
            _buildLotCard(
              'LOT-001',
              'Morenci',
              '150 bags in lot (4,000 lbs/bag)',
              selectedBags,
              {
                'Mo': 45.00,
                'Fe': 4.20,
                'Cu': 3.50,
                'Pb': 0.15,
                'Sn': 0.01,
                'Al': 0.60,
                'Cl': 0.12,
                'K': 0.15,
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLotCard(String lotId, String location, String bagInfo, int bags,
      Map<String, double> elements) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  lotId,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.link),
              ],
            ),
            Text(location),
            Text(bagInfo, style: TextStyle(color: Colors.grey[600])),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text('Number of Bags'),
                Expanded(
                  child: Slider(
                    value: bags.toDouble(),
                    min: 0,
                    max: 150,
                    divisions: 150,
                    onChanged: (value) =>
                        setState(() => selectedBags = value.toInt()),
                  ),
                ),
                Text(bags.toString()),
              ],
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 16,
              children: elements.entries.map((entry) {
                return Column(
                  children: [
                    Text(entry.key),
                    Text(
                      '${entry.value.toStringAsFixed(2)}%',
                      style: TextStyle(
                        color: entry.value > 5 ? Colors.orange : null,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
