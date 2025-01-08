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
  double _panelWidth = 800;
  bool _isPanelVisible = true;
  Map<String, bool> _expandedLots = {};
  String? selectedLocation;
  String? selectedSort;

  final List<String> locations = [
    'All Locations',
    'Morenci',
    'Sierra Verde',
    'Bagdad',
    'Sierrita',
    'Miami',
    'Tyrone',
    'Chino',
    'Safford',
  ];

  final List<String> sortOptions = [
    'No sort applied',
    'Sort by In Spec',
    'Sort by Out of Spec',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEBF2F8),
        elevation: 0,
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Divider(height: 1, color: Colors.grey[300]),
        ),
      ),
      body: Row(
        children: [
          // Left Navigation Bar
          Container(
            width: 72,
            color: const Color(0xFF1E1E1E),
            child: Column(
              children: [
                const SizedBox(height: 16),
                // MIRA Logo Placeholder
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.analytics_rounded,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(height: 32),
                // Navigation Items
                _buildNavItem(Icons.home, 'Home', false),
                _buildNavItem(Icons.lightbulb_outline, 'Recs', false),
                _buildNavItem(Icons.science_outlined, 'Simulator', true),
                _buildNavItem(Icons.menu_book_outlined, 'Wiki', false),
              ],
            ),
          ),
          // Main Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Feed Parameters Title
                  const Text(
                    'Feed Parameters',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Feed Rate and SIE Mo Production Sliders
                  Card(
                    margin: EdgeInsets.zero,
                    color: const Color(0xFFFCFCFF),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          // Overall Feed Rate
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Overall Feed Rate'),
                                Row(
                                  children: [
                                    Expanded(
                                      child: SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: Colors.blue,
                                          inactiveTrackColor: Colors.grey[200],
                                          thumbColor: Colors.white,
                                          overlayColor:
                                              Colors.blue.withOpacity(0.1),
                                          valueIndicatorColor: Colors.blue,
                                          showValueIndicator:
                                              ShowValueIndicator.always,
                                        ),
                                        child: Slider(
                                          value: feedRate,
                                          min: 0,
                                          max: 15,
                                          divisions: 150,
                                          label:
                                              '${feedRate.toStringAsFixed(1)} TPH',
                                          onChanged: (value) =>
                                              setState(() => feedRate = value),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 80,
                                      child: Text(
                                        '${feedRate.toStringAsFixed(1)} TPH',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 32),
                          // SIE Mo Production
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('SIE Mo Production'),
                                Row(
                                  children: [
                                    Expanded(
                                      child: SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: Colors.blue,
                                          inactiveTrackColor: Colors.grey[200],
                                          thumbColor: Colors.white,
                                          overlayColor:
                                              Colors.blue.withOpacity(0.1),
                                          valueIndicatorColor: Colors.blue,
                                          showValueIndicator:
                                              ShowValueIndicator.always,
                                        ),
                                        child: Slider(
                                          value: sieProduction,
                                          min: 0,
                                          max: 100,
                                          divisions: 100,
                                          label:
                                              '${sieProduction.toStringAsFixed(1)}k lbs/day',
                                          onChanged: (value) => setState(
                                              () => sieProduction = value),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        '${sieProduction.toStringAsFixed(1)}k lbs/day',
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
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(height: 1),
                  const SizedBox(height: 24),

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
                  const SizedBox(height: 16),

                  // Filter Row
                  Row(
                    children: [
                      PopupMenuButton<String>(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.grey[300]!),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                selectedLocation ?? 'All Locations',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Icon(Icons.arrow_drop_down,
                                  color: Colors.grey[600]),
                            ],
                          ),
                        ),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  child: Row(
                                    children: [
                                      Icon(Icons.search,
                                          size: 20, color: Colors.grey[600]),
                                      const SizedBox(width: 8),
                                      const Text(
                                        'Search locations...',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(height: 1),
                              ],
                            ),
                            enabled: false,
                          ),
                          ...locations.map(
                            (location) => PopupMenuItem(
                              value: location,
                              child: Text(location),
                            ),
                          ),
                        ],
                        onSelected: (value) {
                          setState(() {
                            selectedLocation = value;
                          });
                        },
                      ),
                      const SizedBox(width: 16),
                      PopupMenuButton<String>(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.grey[300]!),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                selectedSort ?? 'No sort applied',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Icon(Icons.arrow_drop_down,
                                  color: Colors.grey[600]),
                            ],
                          ),
                        ),
                        itemBuilder: (context) => sortOptions
                            .map(
                              (sort) => PopupMenuItem(
                                value: sort,
                                child: Row(
                                  children: [
                                    Text(sort),
                                    if (sort == selectedSort)
                                      const Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Icon(Icons.check, size: 18),
                                      ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                        onSelected: (value) {
                          setState(() {
                            selectedSort = value;
                          });
                        },
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
                  const SizedBox(height: 16),
                  _buildLotCard(
                    'LOT-002',
                    'Safford',
                    '174 bags in lot (4,000 lbs/bag)',
                    0,
                    {
                      'Mo': 58.00,
                      'Fe': 1.30,
                      'Cu': 2.20,
                      'Pb': 0.00,
                      'Sn': 0.00,
                      'Al': 0.10,
                      'Cl': 0.00,
                      'K': 0.00,
                    },
                  ),
                  const SizedBox(height: 16),
                  _buildLotCard(
                    'LOT-003',
                    'Sierrita',
                    '150 bags in lot (4,000 lbs/bag)',
                    0,
                    {
                      'Mo': 82.20,
                      'Fe': 2.40,
                      'Cu': 2.50,
                      'Pb': 0.10,
                      'Sn': 0.00,
                      'Al': 0.10,
                      'Cl': 0.00,
                      'K': 0.10,
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
                        .clamp(600.0, MediaQuery.of(context).size.width * 0.6);
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
                color: const Color(0xFFEBF2F8),
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
                          crossAxisAlignment: CrossAxisAlignment.center,
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

                          // Elements Row
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Primary Elements
                              Expanded(
                                child: _buildElementsSection(
                                  'Primary Elements',
                                  {
                                    'Molybdenum': {
                                      'value': 45.00,
                                      'range': '50% - 95%'
                                    },
                                    'Iron': {
                                      'value': 4.20,
                                      'range': '0% - 3.5%'
                                    },
                                    'Copper': {
                                      'value': 3.50,
                                      'range': '1.2% - 2.8%'
                                    },
                                    'Lead': {
                                      'value': 0.15,
                                      'range': '0% - 0.08%'
                                    },
                                  },
                                ),
                              ),
                              const SizedBox(width: 16),
                              // Secondary Elements
                              Expanded(
                                child: _buildElementsSection(
                                  'Secondary Elements',
                                  {
                                    'Tin': {
                                      'value': 0.01,
                                      'range': '0% - 0.002%'
                                    },
                                    'Aluminum': {
                                      'value': 0.60,
                                      'range': '0% - 0.4%'
                                    },
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
                              ),
                            ],
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

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            color: isActive ? Colors.blue.withOpacity(0.2) : Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                children: [
                  Icon(
                    icon,
                    color: isActive ? Colors.blue : Colors.grey[400],
                    size: 24,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    label,
                    style: TextStyle(
                      color: isActive ? Colors.blue : Colors.grey[400],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
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
            height: 6, // Thicker progress bar
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

  Widget _buildLotCard(String lotId, String location, String bagInfo, int bags,
      Map<String, double> elements) {
    final isExpanded = _expandedLots[lotId] ?? false;

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
                              lotId,
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
                          location,
                          style: const TextStyle(fontSize: 15),
                        ),
                        Text(
                          bagInfo,
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
                                  value: bags.toDouble(),
                                  min: 0,
                                  max: 150,
                                  divisions: 150,
                                  label: bags.toString(),
                                  onChanged: (value) => setState(
                                      () => selectedBags = value.toInt()),
                                ),
                              ),
                            ),
                            Container(
                              width: 40,
                              alignment: Alignment.center,
                              child: Text(
                                bags.toString(),
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
                      children: elements.entries.map((entry) {
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
                  onTap: () {
                    setState(() {
                      _expandedLots[lotId] = !isExpanded;
                    });
                  },
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
                          isExpanded ? Icons.expand_less : Icons.expand_more,
                          color: Colors.grey[700],
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (isExpanded)
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
                                const Text(
                                  '12/10/2024',
                                  style: TextStyle(
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
                                const Text(
                                  'Knight-Swift',
                                  style: TextStyle(
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
                                    onTap: () => _showSpecificationSheet(lotId),
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
                                    onTap: () => _showQualityCertificate(lotId),
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

  void _showSpecificationSheet(String lotId) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: const Color(0xFFFCFCFF),
        child: Container(
          width: 800,
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with close button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Specification Sheet - $lotId',
                    style: const TextStyle(
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
              const SizedBox(height: 32),

              // Document Info
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Document ID',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'SPEC-$lotId',
                          style: const TextStyle(
                            fontSize: 18,
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
                        const Text(
                          'Issue Date',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '2024-03-15',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Specification Table
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(2),
                  3: FlexColumnWidth(2),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey[300]!),
                      ),
                    ),
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Parameter',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Method',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Result',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Specification',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ..._buildSpecificationRows([
                    {
                      'parameter': 'Molybdenum Content',
                      'method': 'XRF-001',
                      'result': '58.2%',
                      'specification': '50.0 - 95.0%',
                    },
                    {
                      'parameter': 'Moisture Content',
                      'method': 'ASTM D6304',
                      'result': '4.2%',
                      'specification': 'Max 7.0%',
                    },
                    {
                      'parameter': 'Particle Size',
                      'method': 'ASTM B214',
                      'result': '98.5%',
                      'specification': '>95% -325 mesh',
                    },
                    {
                      'parameter': 'Bulk Density',
                      'method': 'ASTM B212',
                      'result': '1.8 g/cm³',
                      'specification': '1.5 - 2.2 g/cm³',
                    },
                    {
                      'parameter': 'Oil Content',
                      'method': 'SOL-442',
                      'result': '2.1%',
                      'specification': 'Max 3.5%',
                    },
                  ]),
                ],
              ),
              const SizedBox(height: 24),

              // Footer text
              Text(
                'Analysis performed according to standard procedures.',
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
              const SizedBox(height: 8),
              Text(
                'Document generated on 2024-03-15 14:30 MST',
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showQualityCertificate(String lotId) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: const Color(0xFFFCFCFF),
        child: Container(
          width: 800,
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with close button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quality Certificate - $lotId',
                    style: const TextStyle(
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
              const SizedBox(height: 32),

              // Document Info
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Document ID',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'QC-$lotId',
                          style: const TextStyle(
                            fontSize: 18,
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
                        const Text(
                          'Issue Date',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '2024-03-15',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Quality Certificate Table
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(2),
                  3: FlexColumnWidth(2),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey[300]!),
                      ),
                    ),
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Parameter',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Method',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Result',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Specification',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ..._buildSpecificationRows([
                    {
                      'parameter': 'Molybdenum Content',
                      'method': 'XRF-001',
                      'result': '58.2%',
                      'specification': '50.0 - 95.0%',
                    },
                    {
                      'parameter': 'Iron Content',
                      'method': 'XRF-001',
                      'result': '1.30%',
                      'specification': 'Max 3.5%',
                    },
                    {
                      'parameter': 'Copper Content',
                      'method': 'XRF-001',
                      'result': '2.20%',
                      'specification': 'Max 2.8%',
                    },
                    {
                      'parameter': 'Lead Content',
                      'method': 'XRF-001',
                      'result': '0.00%',
                      'specification': 'Max 0.08%',
                    },
                    {
                      'parameter': 'Tin Content',
                      'method': 'XRF-001',
                      'result': '0.00%',
                      'specification': 'Max 0.002%',
                    },
                    {
                      'parameter': 'Aluminum Content',
                      'method': 'XRF-001',
                      'result': '0.10%',
                      'specification': 'Max 0.4%',
                    },
                    {
                      'parameter': 'Chlorine Content',
                      'method': 'XRF-001',
                      'result': '0.00%',
                      'specification': 'Max 0.08%',
                    },
                    {
                      'parameter': 'Potassium Content',
                      'method': 'XRF-001',
                      'result': '0.00%',
                      'specification': 'Max 0.08%',
                    },
                  ]),
                ],
              ),
              const SizedBox(height: 24),

              // Footer text
              Text(
                'Analysis performed according to standard procedures.',
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
              const SizedBox(height: 8),
              Text(
                'Document generated on 2024-03-15 14:30 MST',
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<TableRow> _buildSpecificationRows(List<Map<String, String>> specs) {
    return specs.map((spec) {
      return TableRow(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey[200]!),
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              spec['parameter']!,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              spec['method']!,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              spec['result']!,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              spec['specification']!,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      );
    }).toList();
  }
}
