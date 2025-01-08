import 'package:flutter/material.dart';
import 'models/lot_data.dart';
import 'widgets/lot_card.dart';

class FeedBlendCalculator extends StatefulWidget {
  const FeedBlendCalculator({super.key});

  @override
  State<FeedBlendCalculator> createState() => _FeedBlendCalculatorState();
}

class _FeedBlendCalculatorState extends State<FeedBlendCalculator> {
  double feedRate = 7.0;
  double sieProduction = 50.0;
  bool showSelected = false;
  double _panelWidth = 800;
  bool _isPanelVisible = true;
  String? selectedLocation;
  String? selectedSort;
  late List<LotData> lots;

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
  void initState() {
    super.initState();
    lots = List.from(sampleLots);
  }

  void _updateLotBags(String lotId, int bags) {
    setState(() {
      final lotIndex = lots.indexWhere((lot) => lot.id == lotId);
      if (lotIndex != -1) {
        lots[lotIndex].selectedBags = bags;
      }
    });
  }

  void _toggleLotExpanded(String lotId, bool isExpanded) {
    setState(() {
      final lotIndex = lots.indexWhere((lot) => lot.id == lotId);
      if (lotIndex != -1) {
        lots[lotIndex].isExpanded = isExpanded;
      }
    });
  }

  void _showSpecificationSheet(String lotId) {
    // ... existing _showSpecificationSheet implementation
  }

  void _showQualityCertificate(String lotId) {
    // ... existing _showQualityCertificate implementation
  }

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
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                  ...lots.map((lot) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: LotCard(
                          lot: lot,
                          onBagsChanged: (bags) => _updateLotBags(lot.id, bags),
                          onExpandChanged: (isExpanded) =>
                              _toggleLotExpanded(lot.id, isExpanded),
                          onSpecificationView: () =>
                              _showSpecificationSheet(lot.id),
                          onQualityCertificateView: () =>
                              _showQualityCertificate(lot.id),
                        ),
                      )),
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
                              Expanded(
                                child: Card(
                                  color: const Color(0xFFFCFCFF),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        Icon(Icons.inventory_2, size: 28),
                                        const SizedBox(height: 8),
                                        const Text(
                                          '36',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Bags Selected',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  color: const Color(0xFFFCFCFF),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        Icon(Icons.science, size: 28),
                                        const SizedBox(height: 8),
                                        const Text(
                                          '133,600',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'External Mo lbs/day',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  color: const Color(0xFFFCFCFF),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        Icon(Icons.balance, size: 28),
                                        const SizedBox(height: 8),
                                        const Text(
                                          '61',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Total Tons (SIE Mo + External)',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),

                          // Out of Specification Warning
                          Card(
                            color: Colors.red[50],
                            margin: EdgeInsets.zero,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.warning_amber_rounded,
                                      color: Colors.red[700], size: 24),
                                  const SizedBox(width: 12),
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
                                            fontSize: 16,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          'One or more elements outside target range',
                                          style: TextStyle(
                                            color: Colors.red[700],
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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
}
