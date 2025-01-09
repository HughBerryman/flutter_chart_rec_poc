import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'feed_blend_calculator/components/feed_parameters.dart';
import 'feed_blend_calculator/components/right_panel.dart';
import 'feed_blend_calculator/widgets/lot_card.dart';
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
      final lotIndex = lots.indexWhere((lot) => lot.id == lotId);
      if (lotIndex != -1) {
        lots[lotIndex].selectedBags = bags;
      }
    });
  }

  void _toggleLotExpanded(String lotId, bool isExpanded) {
    setState(() {
      final index = lots.indexWhere((lot) => lot.id == lotId);
      if (index != -1) {
        lots[index].isExpanded = isExpanded;
      }
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

  void _showSaveStrategy() {
    String? strategyName;
    String? description;

    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: const Color(0xFFFCFCFF),
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              const SizedBox(height: 24),

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
                  ElevatedButton(
                    onPressed: () {
                      if (strategyName?.isNotEmpty == true) {
                        // TODO: Implement save strategy logic
                        Navigator.pop(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[700],
                      foregroundColor: Colors.white,
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
        backgroundColor: const Color(0xFFFCFCFF),
        child: Container(
          width: 1000,
          height: 600,
          child: Row(
            children: [
              // Left side - Export options
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                      const SizedBox(height: 32),

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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      const Spacer(),

                      // Export Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // TODO: Implement export functionality
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          icon: const Icon(Icons.file_download),
                          label: const Text('Export Report'),
                        ),
                      ),
                    ],
                  ),
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
                    // Preview section
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Export Preview',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  // Preview placeholder
                                  Container(
                                    height: 300,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]!),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.description_outlined,
                                              size: 48,
                                              color: Colors.grey[400]),
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
                                ],
                              ),
                            ),
                            const Divider(height: 1),
                            // Export Settings
                            Padding(
                              padding: const EdgeInsets.all(24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Export Settings',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  _buildExportSetting('Page Size', 'A4'),
                                  _buildExportSetting(
                                      'Orientation', 'Portrait'),
                                  _buildExportSetting('Quality', 'High'),
                                  const SizedBox(height: 16),
                                  SizedBox(
                                    width: double.infinity,
                                    child: OutlinedButton.icon(
                                      onPressed: () {
                                        // TODO: Implement settings configuration
                                      },
                                      style: OutlinedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16),
                                      ),
                                      icon: const Icon(Icons.settings),
                                      label: const Text('Configure Settings'),
                                    ),
                                  ),
                                ],
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
            onPressed: _showSavedStrategies,
            icon: const Icon(Icons.visibility),
            label: const Text('View Saved'),
          ),
          TextButton.icon(
            onPressed: _showSaveStrategy,
            icon: const Icon(Icons.save),
            label: const Text('Save Strategy'),
          ),
          TextButton.icon(
            onPressed: _showExportDialog,
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
          // Left navigation
          Container(
            width: 72,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                right: BorderSide(color: Colors.grey[200]!),
              ),
            ),
            child: Column(
              children: [
                _buildNavItem(Icons.inventory_2, 'Assays', true),
                _buildNavItem(Icons.science, 'Elements', false),
                _buildNavItem(Icons.analytics, 'Analysis', false),
              ],
            ),
          ),

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
                      Container(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Feed Parameters',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 24),
                            FeedParameters(
                              feedRate: feedRate,
                              sieProduction: sieProduction,
                              onFeedRateChanged: (value) =>
                                  setState(() => feedRate = value),
                              onSieProductionChanged: (value) =>
                                  setState(() => sieProduction = value),
                            ),
                          ],
                        ),
                      ),
                      const Divider(height: 1),

                      // Lots section
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Header with filters
                              Row(
                                children: [
                                  const Text(
                                    'Available Assays',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  // Location filter
                                  Container(
                                    height: 40,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      border:
                                          Border.all(color: Colors.grey[300]!),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: selectedLocation,
                                        hint: const Text('All Locations'),
                                        items: [
                                          const DropdownMenuItem(
                                            value: null,
                                            child: Text('All Locations'),
                                          ),
                                          ...locations.map((location) {
                                            return DropdownMenuItem(
                                              value: location,
                                              child: Text(location),
                                            );
                                          }).toList(),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            selectedLocation = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  // Sort filter
                                  Container(
                                    height: 40,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      border:
                                          Border.all(color: Colors.grey[300]!),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: selectedSort,
                                        hint: const Text('Sort by'),
                                        items: [
                                          const DropdownMenuItem(
                                            value: null,
                                            child: Text('Sort by'),
                                          ),
                                          ...sortOptions.map((option) {
                                            return DropdownMenuItem(
                                              value: option,
                                              child: Text(option),
                                            );
                                          }).toList(),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            selectedSort = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  // Show selected toggle
                                  Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: showSelected
                                          ? Colors.blue[50]
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: showSelected
                                            ? Colors.blue[700]!
                                            : Colors.grey[300]!,
                                      ),
                                    ),
                                    child: TextButton.icon(
                                      onPressed: () {
                                        setState(() {
                                          showSelected = !showSelected;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.check_circle_outline,
                                        color: showSelected
                                            ? Colors.blue[700]
                                            : Colors.grey[700],
                                        size: 20,
                                      ),
                                      label: Text(
                                        'Show Selected',
                                        style: TextStyle(
                                          color: showSelected
                                              ? Colors.blue[700]
                                              : Colors.grey[700],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 24),

                              // Lots list
                              Expanded(
                                child: ListView.builder(
                                  itemCount: lots.length,
                                  itemBuilder: (context, index) {
                                    final lot = lots[index];
                                    if (showSelected && lot.selectedBags == 0) {
                                      return const SizedBox.shrink();
                                    }
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 16),
                                      child: LotCard(
                                        lot: lot,
                                        onBagsChanged: (bags) =>
                                            _updateLotBags(lot.id, bags),
                                        onExpandChanged: (isExpanded) =>
                                            _toggleLotExpanded(
                                                lot.id, isExpanded),
                                        onSpecificationView: () =>
                                            _showSpecificationSheet(lot.id),
                                        onQualityCertificateView: () =>
                                            _showQualityCertificate(lot.id),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
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
