import 'package:flutter/material.dart';
import '../../models/lot_data.dart';
import '../widgets/lot_card.dart';
import 'feed_material_assays.dart';

class LotsSection extends StatelessWidget {
  final List<LotData> lots;
  final bool showSelected;
  final String? selectedLocation;
  final String? selectedSort;
  final ValueChanged<bool> onShowSelectedChanged;
  final ValueChanged<String?> onLocationChanged;
  final ValueChanged<String?> onSortChanged;
  final Function(String, int) onBagsChanged;
  final Function(String, bool) onExpandChanged;
  final Function(String, Map<String, double>) onAssayValuesChanged;

  const LotsSection({
    super.key,
    required this.lots,
    required this.showSelected,
    required this.selectedLocation,
    required this.selectedSort,
    required this.onShowSelectedChanged,
    required this.onLocationChanged,
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
      selectedLocation: selectedLocation,
      selectedSort: selectedSort,
      onShowSelectedChanged: onShowSelectedChanged,
      onLocationChanged: onLocationChanged,
      onSortChanged: onSortChanged,
      onBagsChanged: onBagsChanged,
      onExpandChanged: onExpandChanged,
      onAssayValuesChanged: onAssayValuesChanged,
    );
  }
}
