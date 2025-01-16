import 'package:flutter/material.dart';
import '../widgets/lot_card.dart';
import '../../models/lot_data.dart';
import 'feed_material_assays.dart';

class LotsSection extends StatelessWidget {
  final List<LotData> lots;
  final bool showSelected;
  final Set<String> selectedLocations;
  final String? selectedSort;
  final ValueChanged<bool> onShowSelectedChanged;
  final void Function(Set<String>) onLocationsChanged;
  final ValueChanged<String?> onSortChanged;
  final Function(String, int) onBagsChanged;
  final Function(String, bool) onExpandChanged;
  final Function(String, Map<String, double>) onAssayValuesChanged;

  const LotsSection({
    super.key,
    required this.lots,
    required this.showSelected,
    required this.selectedLocations,
    required this.selectedSort,
    required this.onShowSelectedChanged,
    required this.onLocationsChanged,
    required this.onSortChanged,
    required this.onBagsChanged,
    required this.onExpandChanged,
    required this.onAssayValuesChanged,
  });

  @override
  Widget build(BuildContext context) {
    return FeedMaterialAssays(
      lots: lots,
      showSelected: showSelected,
      selectedLocations: selectedLocations,
      selectedSort: selectedSort,
      onShowSelectedChanged: onShowSelectedChanged,
      onLocationsChanged: onLocationsChanged,
      onSortChanged: onSortChanged,
      onBagsChanged: onBagsChanged,
      onExpandChanged: onExpandChanged,
      onAssayValuesChanged: onAssayValuesChanged,
    );
  }
}
