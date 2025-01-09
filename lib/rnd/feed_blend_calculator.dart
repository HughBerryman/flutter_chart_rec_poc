import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'feed_blend_calculator/components/feed_parameters_section.dart';
import 'feed_blend_calculator/components/right_panel.dart';
import 'feed_blend_calculator/components/left_navigation.dart';
import 'feed_blend_calculator/components/feed_app_bar.dart';
import 'feed_blend_calculator/components/lots_section.dart';
import 'models/lot_data.dart';

class FeedBlendCalculator extends StatefulWidget {
  const FeedBlendCalculator({super.key});

  @override
  State<FeedBlendCalculator> createState() => _FeedBlendCalculatorState();
}

class _FeedBlendCalculatorState extends State<FeedBlendCalculator> {
  double feedRate = 0.0;
  double sieProduction = 0.0;
  bool _isPanelVisible = true;
  bool showSelected = false;
  List<LotData> lots = [];

  @override
  void initState() {
    super.initState();
    lots = sampleLots;
  }

  double _panelWidth = 800;
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

  void _updateLotBags(String lotId, int bags) {
    setState(() {
      final lot = lots.firstWhere((lot) => lot.id == lotId);
      lot.selectedBags = bags;
    });
  }

  void _toggleLotExpanded(String lotId, bool isExpanded) {
    setState(() {
      final lot = lots.firstWhere((lot) => lot.id == lotId);
      lot.isExpanded = isExpanded;
    });
  }

  void _updateLotAssayValues(String lotId, Map<String, double> newValues) {
    setState(() {
      final lot = lots.firstWhere((lot) => lot.id == lotId);
      lot.updateAssayValues(newValues);
    });
  }

  void _showSpecificationSheet(String lotId) {
    // TODO: Implement specification sheet
  }

  void _showQualityCertificate(String lotId) {
    // TODO: Implement quality certificate
  }

  void _showSavedStrategies() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.white,
        child: Container(
          width: 600,
          constraints: const BoxConstraints(maxHeight: 800),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with close button
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
      ),
    );
  }

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

  void _showSaveStrategy() {
    String? strategyName;
    String? description;

    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.white,
        child: Container(
          width: 600,
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
                      'Save Blend Strategy',
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
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Strategy Name Field
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Strategy Name',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '*',
                              style: TextStyle(
                                color: Colors.red[700],
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          onChanged: (value) => strategyName = value,
                          decoration: InputDecoration(
                            hintText: 'Enter a name for this strategy',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(color: Colors.grey[300]!),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(color: Colors.grey[300]!),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(color: Colors.blue[700]!),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Description Field
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Description (optional)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          onChanged: (value) => description = value,
                          decoration: InputDecoration(
                            hintText: 'Add a description',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(color: Colors.grey[300]!),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(color: Colors.grey[300]!),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(color: Colors.blue[700]!),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Action Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                          ),
                          child: const Text('Cancel'),
                        ),
                        const SizedBox(width: 12),
                        FilledButton(
                          onPressed: () {
                            if (strategyName?.isNotEmpty == true) {
                              // TODO: Implement save strategy logic
                              Navigator.pop(context);
                            }
                          },
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.blue[700],
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                          ),
                          child: const Text('Save Strategy'),
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
    );
  }

  void _showExportDialog() {
    bool pdfSelected = true;
    Map<String, bool> sections = {
      'Blend Summary': true,
      'Assay Details': true,
      'Product Composition': true,
      'Charts & Graphs': false,
    };

    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.white,
        child: Container(
          width: 1000,
          height: 600,
          child: Row(
            children: [
              // Left side - Export options
              Expanded(
                flex: 3,
                child: Column(
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
                            'Export Blend Strategy',
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
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Export Format
                            const Text(
                              'Export Format',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: true,
                                      groupValue: pdfSelected,
                                      onChanged: (bool? value) {
                                        if (value != null) {
                                          setState(() => pdfSelected = value);
                                        }
                                      },
                                      activeColor: Colors.blue[700],
                                    ),
                                    const Text('PDF Report'),
                                  ],
                                ),
                                const SizedBox(width: 32),
                                Row(
                                  children: [
                                    Radio(
                                      value: false,
                                      groupValue: pdfSelected,
                                      onChanged: (bool? value) {
                                        if (value != null) {
                                          setState(() => pdfSelected = !value);
                                        }
                                      },
                                      activeColor: Colors.blue[700],
                                    ),
                                    const Text('Excel Workbook'),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 32),

                            // Content Sections
                            const Text(
                              'Content Sections',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            ...sections.entries.map((section) => Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        section.key,
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                      Switch(
                                        value: section.value,
                                        onChanged: (value) {
                                          setState(() {
                                            sections[section.key] = value;
                                          });
                                        },
                                        activeColor: Colors.blue[700],
                                        activeTrackColor: Colors.blue[100],
                                        inactiveThumbColor: Colors.grey[400],
                                        inactiveTrackColor: Colors.grey[300],
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey[200]!),
                        ),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: FilledButton.icon(
                          onPressed: () {
                            // TODO: Implement export functionality
                            Navigator.pop(context);
                          },
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.blue[700],
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          icon: const Icon(Icons.file_download),
                          label: const Text('Export Report'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Right side - Preview
              Container(
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  border: Border(
                    left: BorderSide(color: Colors.grey[200]!),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey[200]!),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'Export Preview',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Preview placeholder
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]!),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.description_outlined,
                                        size: 48, color: Colors.grey[400]),
                                    const SizedBox(height: 16),
                                    Text(
                                      'Preview will appear here',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            // Export Settings
                            const Text(
                              'Export Settings',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            _buildExportSetting('Page Size', 'A4'),
                            _buildExportSetting('Orientation', 'Portrait'),
                            _buildExportSetting('Quality', 'High'),
                            const SizedBox(height: 16),
                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton.icon(
                                onPressed: () {
                                  // TODO: Implement settings configuration
                                },
                                style: OutlinedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                ),
                                icon: const Icon(Icons.settings),
                                label: const Text('Configure Settings'),
                              ),
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
        ),
      ),
    );
  }

  Widget _buildExportSetting(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedLotCount = lots.where((lot) => lot.selectedBags > 0).length;

    return Scaffold(
      backgroundColor: const Color(0xFFEBF2F8),
      appBar: FeedAppBar(
        selectedLotCount: selectedLotCount,
        totalLotCount: lots.length,
        onViewSaved: _showSavedStrategies,
        onSaveStrategy: _showSaveStrategy,
        onExport: _showExportDialog,
        isPanelVisible: _isPanelVisible,
        onPanelToggle: () => setState(() => _isPanelVisible = !_isPanelVisible),
      ),
      body: Row(
        children: [
          // Left navigation
          const LeftNavigation(),

          // Main content
          Expanded(
            child: Row(
              children: [
                // Left side - Feed parameters and lots
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Feed parameters section
                      FeedParametersSection(
                        feedRate: feedRate,
                        sieProduction: sieProduction,
                        onFeedRateChanged: (value) =>
                            setState(() => feedRate = value),
                        onSieProductionChanged: (value) =>
                            setState(() => sieProduction = value),
                      ),
                      const Divider(height: 1),

                      // Lots section
                      Expanded(
                        child: LotsSection(
                          lots: lots,
                          showSelected: showSelected,
                          selectedLocation: selectedLocation,
                          selectedSort: selectedSort,
                          onShowSelectedChanged: (value) =>
                              setState(() => showSelected = value),
                          onLocationChanged: (value) =>
                              setState(() => selectedLocation = value),
                          onSortChanged: (value) =>
                              setState(() => selectedSort = value),
                          onBagsChanged: _updateLotBags,
                          onExpandChanged: _toggleLotExpanded,
                          onAssayValuesChanged: _updateLotAssayValues,
                        ),
                      ),
                    ],
                  ),
                ),

                // Right panel
                if (_isPanelVisible)
                  RightPanel(
                    width: _panelWidth,
                    onWidthChanged: (width) =>
                        setState(() => _panelWidth = width),
                    lots: lots.where((lot) => lot.selectedBags > 0).toList(),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
