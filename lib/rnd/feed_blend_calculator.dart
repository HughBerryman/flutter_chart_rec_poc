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
  double _panelWidth = 400;
  bool _isPanelVisible = true;

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
          IconButton(
            icon: Icon(
                _isPanelVisible ? Icons.chevron_right : Icons.chevron_left),
            onPressed: () => setState(() => _isPanelVisible = !_isPanelVisible),
          ),
        ],
      ),
      body: Row(
        children: [
          // Main Content
          Expanded(
            child: SingleChildScrollView(
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
                              Text(
                                  '${sieProduction.toStringAsFixed(1)}k lbs/day'),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                        onChanged: (value) =>
                            setState(() => showSelected = value),
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
          ),
          // Resizable Divider
          if (_isPanelVisible)
            MouseRegion(
              cursor: SystemMouseCursors.resizeColumn,
              child: GestureDetector(
                onHorizontalDragUpdate: (details) {
                  setState(() {
                    _panelWidth = (_panelWidth - details.delta.dx)
                        .clamp(300.0, MediaQuery.of(context).size.width * 0.4);
                  });
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
          // Right Panel - Assay Details
          if (_isPanelVisible)
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: _panelWidth,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
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
                          '1 assay in blend',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Stats Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildStatCard(
                                Icons.inventory_2,
                                '26',
                                'Bags Selected',
                              ),
                              _buildStatCard(
                                Icons.speed,
                                '101,200',
                                'External Mo lbs/day',
                              ),
                              _buildStatCard(
                                Icons.scale,
                                '51',
                                'Total Tons (SIE Mo + External)',
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),

                          // Out of Specification Warning
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.red[50],
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.red[200]!),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.warning, color: Colors.red[700]),
                                const SizedBox(width: 8),
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
                                        ),
                                      ),
                                      Text(
                                        'One or more elements outside target range',
                                        style:
                                            TextStyle(color: Colors.red[700]),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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

                          // Primary Elements
                          _buildElementsSection(
                            'Primary Elements',
                            {
                              'Molybdenum': {
                                'value': 45.00,
                                'range': '50% - 95%'
                              },
                              'Iron': {'value': 4.20, 'range': '0% - 3.5%'},
                              'Copper': {'value': 3.50, 'range': '1.2% - 2.8%'},
                              'Lead': {'value': 0.15, 'range': '0% - 0.08%'},
                            },
                          ),
                          const SizedBox(height: 16),

                          // Secondary Elements
                          _buildElementsSection(
                            'Secondary Elements',
                            {
                              'Tin': {'value': 0.01, 'range': '0% - 0.002%'},
                              'Aluminum': {'value': 0.60, 'range': '0% - 0.4%'},
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
                          const SizedBox(height: 24),

                          // Properties Section
                          _buildElementsSection(
                            'Properties',
                            {
                              'Moisture': {'value': 0.00, 'range': '0% - 7%'},
                              'Oil': {'value': 0.00, 'range': '0% - 7%'},
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildStatCard(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, size: 24),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildElementsSection(
      String title, Map<String, Map<String, dynamic>> elements) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Icon(Icons.expand_more),
          ],
        ),
        const SizedBox(height: 8),
        ...elements.entries.map((element) => _buildElementRow(
              element.key,
              element.value['value'] as double,
              element.value['range'] as String,
            )),
      ],
    );
  }

  Widget _buildElementRow(String name, double value, String range) {
    final isOutOfSpec = true; // You can implement the actual logic here
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),
              Text('${value.toStringAsFixed(2)}%'),
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
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: 0.7,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(
              isOutOfSpec ? Colors.red : Colors.blue,
            ),
          ),
        ],
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
