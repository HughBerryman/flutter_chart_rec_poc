import 'package:flutter/material.dart';
import '../widgets/lot_card.dart';
import '../../models/lot_data.dart';

class LotsSection extends StatelessWidget {
  final List<LotData> lots;
  final bool showSelected;
  final String? selectedLocation;
  final String? selectedSort;
  final List<String> locations;
  final List<String> sortOptions;
  final Function(String, int) onBagsChanged;
  final Function(String, bool) onLotExpanded;
  final Function(String) onSpecificationView;
  final Function(String) onQualityCertificateView;
  final Function(String?) onLocationChanged;
  final Function(String?) onSortChanged;
  final Function() onShowSelectedToggle;

  const LotsSection({
    super.key,
    required this.lots,
    required this.showSelected,
    required this.selectedLocation,
    required this.selectedSort,
    required this.locations,
    required this.sortOptions,
    required this.onBagsChanged,
    required this.onLotExpanded,
    required this.onSpecificationView,
    required this.onQualityCertificateView,
    required this.onLocationChanged,
    required this.onSortChanged,
    required this.onShowSelectedToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.grey[300]!),
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
                    onChanged: onLocationChanged,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              // Sort filter
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.grey[300]!),
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
                    onChanged: onSortChanged,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              // Show selected toggle
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: showSelected ? Colors.blue[50] : Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: showSelected ? Colors.blue[700]! : Colors.grey[300]!,
                  ),
                ),
                child: TextButton.icon(
                  onPressed: onShowSelectedToggle,
                  icon: Icon(
                    Icons.check_circle_outline,
                    color: showSelected ? Colors.blue[700] : Colors.grey[700],
                    size: 20,
                  ),
                  label: Text(
                    'Show Selected',
                    style: TextStyle(
                      color: showSelected ? Colors.blue[700] : Colors.grey[700],
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
                  padding: const EdgeInsets.only(bottom: 16),
                  child: LotCard(
                    lot: lot,
                    onBagsChanged: (bags) => onBagsChanged(lot.id, bags),
                    onExpandChanged: (isExpanded) =>
                        onLotExpanded(lot.id, isExpanded),
                    onSpecificationView: () => onSpecificationView(lot.id),
                    onQualityCertificateView: () =>
                        onQualityCertificateView(lot.id),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
