import 'package:flutter/material.dart';
import '../widgets/lot_card.dart';
import '../../models/lot_data.dart';

class FeedMaterialAssays extends StatelessWidget {
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

  const FeedMaterialAssays({
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

  final List<String> locations = const [
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

  final List<String> sortOptions = const [
    'No sort applied',
    'Sort by In Spec',
    'Sort by Out of Spec',
  ];

  @override
  Widget build(BuildContext context) {
    final filteredLots =
        selectedLocation == 'All Locations' || selectedLocation == null
            ? lots
            : lots.where((lot) => lot.location == selectedLocation).toList();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Feed Material Assays',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                Theme(
                  data: Theme.of(context).copyWith(
                    popupMenuTheme: PopupMenuThemeData(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                    ),
                  ),
                  child: PopupMenuButton<String>(
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
                          Icon(Icons.arrow_drop_down, color: Colors.grey[600]),
                        ],
                      ),
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        enabled: false,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey[200]!),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.search,
                                  size: 20, color: Colors.grey[600]),
                              const SizedBox(width: 8),
                              Text(
                                'Search locations...',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ...locations.map(
                        (location) => PopupMenuItem(
                          value: location,
                          height: 40,
                          child: Text(
                            location,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                    onSelected: onLocationChanged,
                  ),
                ),
                const SizedBox(width: 16),
                Theme(
                  data: Theme.of(context).copyWith(
                    popupMenuTheme: PopupMenuThemeData(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                    ),
                  ),
                  child: PopupMenuButton<String>(
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
                          Icon(Icons.arrow_drop_down, color: Colors.grey[600]),
                        ],
                      ),
                    ),
                    itemBuilder: (context) => sortOptions
                        .map(
                          (sort) => PopupMenuItem(
                            value: sort,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  sort,
                                  style: const TextStyle(fontSize: 14),
                                ),
                                if (sort == selectedSort)
                                  Icon(Icons.check,
                                      size: 18, color: Colors.blue[700]),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    onSelected: onSortChanged,
                  ),
                ),
                const SizedBox(width: 16),
                Switch(
                  value: showSelected,
                  onChanged: onShowSelectedChanged,
                ),
                const Text('Show Selected (1)'),
              ],
            ),
            const SizedBox(height: 16),

            // Empty State or Lot Cards
            if (filteredLots.isEmpty)
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 48),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.filter_list_off,
                        size: 48,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No lots found in ${selectedLocation}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Try adjusting your filters or viewing all locations',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 24),
                      FilledButton.tonalIcon(
                        onPressed: () => onLocationChanged('All Locations'),
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.secondaryContainer,
                          foregroundColor: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                        ),
                        icon: const Icon(Icons.filter_list),
                        label: const Text('Reset Filters'),
                      ),
                    ],
                  ),
                ),
              )
            else
              ...filteredLots.map((lot) => Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: LotCard(
                      lot: lot,
                      onBagsChanged: (bags) => onBagsChanged(lot.id, bags),
                      onExpandChanged: (isExpanded) =>
                          onExpandChanged(lot.id, isExpanded),
                      onSpecificationView: () {},
                      onQualityCertificateView: () {},
                      onAssayValuesChanged: (values) =>
                          onAssayValuesChanged(lot.id, values),
                    ),
                  )),
          ],
        ),
      ),
    );
  }
}
