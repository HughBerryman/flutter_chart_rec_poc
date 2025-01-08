import 'package:flutter/material.dart';
import 'models/lot_data.dart';
import 'feed_blend_calculator/widgets/lot_card.dart';
import 'feed_blend_calculator/components/right_panel.dart';

class FeedBlendCalculator extends StatefulWidget {
  const FeedBlendCalculator({super.key});

  @override
  State<FeedBlendCalculator> createState() => _FeedBlendCalculatorState();
}

class _FeedBlendCalculatorState extends State<FeedBlendCalculator> {
  double feedRate = 0.0;
  double sieProduction = 0.0;
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
    // TODO: Implement specification sheet
  }

  void _showQualityCertificate(String lotId) {
    // TODO: Implement quality certificate
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
        title: Row(
          children: [
            const Icon(Icons.science),
            const SizedBox(width: 8),
            const Text('Feed Calculator'),
            Text(
              ' • ${lots.where((lot) => lot.selectedBags > 0).length} of ${lots.length} assays selected',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton.icon(
            onPressed: () {}, // TODO: Implement view saved
            icon: const Icon(Icons.visibility),
            label: const Text('View Saved'),
          ),
          TextButton.icon(
            onPressed: () {}, // TODO: Implement save strategy
            icon: const Icon(Icons.save),
            label: const Text('Save Strategy'),
          ),
          TextButton.icon(
            onPressed: () {}, // TODO: Implement export
            icon: const Icon(Icons.file_download),
            label: const Text('Export'),
          ),
          IconButton(
            icon: Icon(
              _isPanelVisible ? Icons.chevron_right : Icons.chevron_left,
            ),
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
              padding: const EdgeInsets.all(24),
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

                  // Feed Parameters Card
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
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${lots.where((lot) => lot.selectedBags > 0).length} of ${lots.length} assays selected',
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
                            horizontal: 12,
                            vertical: 8,
                          ),
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
                        itemBuilder: (context) => locations
                            .map(
                              (location) => PopupMenuItem(
                                value: location,
                                child: Text(location),
                              ),
                            )
                            .toList(),
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
                            horizontal: 12,
                            vertical: 8,
                          ),
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
                                child: Text(sort),
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
                      const Text('Show Selected'),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Lot Cards
                  ...lots
                      .where((lot) => !showSelected || lot.selectedBags > 0)
                      .map(
                        (lot) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: LotCard(
                            lot: lot,
                            onBagsChanged: (bags) =>
                                _updateLotBags(lot.id, bags),
                            onExpandChanged: (isExpanded) =>
                                _toggleLotExpanded(lot.id, isExpanded),
                            onSpecificationView: () =>
                                _showSpecificationSheet(lot.id),
                            onQualityCertificateView: () =>
                                _showQualityCertificate(lot.id),
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ),
          if (_isPanelVisible)
            RightPanel(
              width: _panelWidth,
              onWidthChanged: (width) => setState(() => _panelWidth = width),
              lots: lots,
            ),
        ],
      ),
    );
  }
}
