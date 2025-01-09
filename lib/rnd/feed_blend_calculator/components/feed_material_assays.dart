import 'package:flutter/material.dart';
import '../../models/lot_data.dart';
import '../widgets/lot_card.dart';

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
    return Column(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
              onSelected: onLocationChanged,
            ),
            const SizedBox(width: 16),
            PopupMenuButton<String>(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
              onSelected: onSortChanged,
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

        // Lot Cards
        ...lots.map((lot) => Padding(
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
    );
  }
}
