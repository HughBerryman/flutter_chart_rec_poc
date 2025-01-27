import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fmi_core/fmi_core.dart';
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
  double _feedRate = 5.0;
  double _sieProduction = 40.0;
  DateTime? _projectedStartDate;
  DateTime? _targetEndDate;
  bool _isPanelVisible = true;
  bool showSelected = false;
  List<LotData> lots = [];

  @override
  void initState() {
    super.initState();
    lots = sampleLots;
    // Set optimistic defaults
    final now = DateTime.now();
    _projectedStartDate = now;
    _targetEndDate = now.add(const Duration(days: 4));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _panelWidth =
            MediaQuery.of(context).size.width * (context.isLarge ? 0.35 : 0.4);
      });
    });
  }

  double _panelWidth = 700; // Will be set in initState
  Set<String> selectedLocations = {'All Locations'};
  String? selectedSort;

  final List<String> locations = [
    'All Locations',
    'Morenci',
    'Cerro Verde',
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
      data: FmiThemeLight.fmiThemeDataLight,
      child: Scaffold(
        backgroundColor: FmiThemeLight.fmiThemeDataLight.colorScheme.background,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Theme(
            data: FmiAppBarTheme.inverseAltSurface(context),
            child: FeedAppBar(
              selectedLotCount: selectedLotCount,
              totalLotCount: lots.length,
              onViewSaved: _showSavedStrategies,
              onSaveStrategy: _showSaveStrategy,
              onExport: _showExportDialog,
              isPanelVisible: _isPanelVisible,
              onPanelToggle: () =>
                  setState(() => _isPanelVisible = !_isPanelVisible),
            ),
          ),
        ),
        body: Row(
          children: [
            // Main content
            Expanded(
              child: Row(
                children: [
                  // Left side - Feed parameters and lots
                  Expanded(
                    child: Theme(
                      data: FmiListTileTheme.altSurface(context),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Feed parameters section
                          FeedParametersSection(
                            feedRate: _feedRate,
                            sieProduction: _sieProduction,
                            projectedStartDate: _projectedStartDate,
                            targetEndDate: _targetEndDate,
                            onFeedRateChanged: (value) {
                              setState(() => _feedRate = value);
                            },
                            onSieProductionChanged: (value) {
                              setState(() => _sieProduction = value);
                            },
                            onStartDateChanged: (date) {
                              setState(() => _projectedStartDate = date);
                            },
                            onTargetEndDateChanged: (date) {
                              setState(() => _targetEndDate = date);
                            },
                          ),
                          const Divider(height: 1),

                          // Lots section
                          Expanded(
                            child: LotsSection(
                              lots: lots,
                              showSelected: showSelected,
                              selectedLocations: selectedLocations,
                              selectedSort: selectedSort,
                              onShowSelectedChanged: (value) =>
                                  setState(() => showSelected = value),
                              onLocationsChanged: (locations) {
                                setState(() {
                                  if (locations.contains('All Locations')) {
                                    selectedLocations = {'All Locations'};
                                  } else {
                                    selectedLocations = locations;
                                  }
                                });
                              },
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
                  ),

                  // Right panel
                  if (_isPanelVisible)
                    Theme(
                      data: FmiListTileTheme.altSurface(context),
                      child: RightPanel(
                        width: _panelWidth,
                        onWidthChanged: (value) =>
                            setState(() => _panelWidth = value),
                        lots:
                            lots.where((lot) => lot.selectedBags > 0).toList(),
                        feedRate: _feedRate,
                        sieProduction: _sieProduction,
                        projectedStartDate: _projectedStartDate,
                        targetEndDate: _targetEndDate,
                      ),
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
