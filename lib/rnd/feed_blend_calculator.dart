import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'feed_blend_calculator/components/feed_parameters_section.dart';
import 'feed_blend_calculator/components/right_panel.dart';
import 'feed_blend_calculator/components/left_navigation.dart';
import 'feed_blend_calculator/components/feed_app_bar.dart';
import 'feed_blend_calculator/components/lots_section.dart';
import 'feed_blend_calculator/components/saved_strategies_modal.dart';
import 'feed_blend_calculator/components/save_strategy_modal.dart';
import 'feed_blend_calculator/components/export_modal.dart';
import 'models/lot_data.dart';

class FeedBlendCalculator extends StatefulWidget {
  const FeedBlendCalculator({super.key});

  @override
  State<FeedBlendCalculator> createState() => _FeedBlendCalculatorState();
}

class _FeedBlendCalculatorState extends State<FeedBlendCalculator> {
  double feedRate = 5.0;
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
      builder: (context) => const SavedStrategiesModal(),
    );
  }

  void _showSaveStrategy() {
    showDialog(
      context: context,
      builder: (context) => SaveStrategyModal(
        onSave: (name, description) {
          // TODO: Implement save strategy logic
        },
      ),
    );
  }

  void _showExportDialog() {
    showDialog(
      context: context,
      builder: (context) => ExportModal(
        onExport: (isPdf, sections) {
          // TODO: Implement export functionality
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedLotCount = lots.where((lot) => lot.selectedBags > 0).length;

    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          surfaceTint: Colors.white,
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: Colors.blue[700],
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey[700],
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.grey[700],
            side: BorderSide(color: Colors.grey[300]!),
          ),
        ),
        popupMenuTheme: PopupMenuThemeData(
          color: Colors.white,
          surfaceTintColor: Colors.white,
        ),
      ),
      child: Scaffold(
        backgroundColor: const Color(0xFFEBF2F8),
        appBar: FeedAppBar(
          selectedLotCount: selectedLotCount,
          totalLotCount: lots.length,
          onViewSaved: _showSavedStrategies,
          onSaveStrategy: _showSaveStrategy,
          onExport: _showExportDialog,
          isPanelVisible: _isPanelVisible,
          onPanelToggle: () =>
              setState(() => _isPanelVisible = !_isPanelVisible),
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
                      feedRate: feedRate,
                      sieProduction: sieProduction,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
