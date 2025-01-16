import 'package:flutter/material.dart';
import '../../models/lot_data.dart';

class FeedCompositionSection extends StatelessWidget {
  final List<LotData> selectedLots;

  const FeedCompositionSection({
    super.key,
    required this.selectedLots,
  });

  Widget _buildEmptyAccordion(
      BuildContext context, String title, String message) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          listTileTheme: const ListTileThemeData(
            dense: true,
            horizontalTitleGap: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ),
        child: ExpansionTile(
          initiallyExpanded: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          collapsedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          collapsedBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          title: Row(
            children: [
              Icon(
                title == 'Specification Status'
                    ? Icons.check_circle
                    : title == 'Leach Chemistry'
                        ? Icons.science
                        : Icons.inventory_2,
                size: 20,
                color: Colors.grey[700],
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[200]!),
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline, size: 32, color: Colors.grey[400]),
                  const SizedBox(height: 12),
                  Text(
                    message,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAccordion(BuildContext context, String title, Widget content,
      {bool? hasOutOfSpec}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          listTileTheme: const ListTileThemeData(
            dense: true,
            horizontalTitleGap: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ),
        child: ExpansionTile(
          initiallyExpanded: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          collapsedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          collapsedBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          title: Row(
            children: [
              Icon(
                title == 'Primary Elements' || title == 'Leach Chemistry'
                    ? Icons.science
                    : Icons.inventory_2,
                size: 20,
                color: Colors.grey[700],
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              if ((title == 'Primary Elements' || title == 'Leach Chemistry') &&
                  hasOutOfSpec == true) ...[
                const Spacer(),
                Icon(
                  Icons.warning_amber_rounded,
                  size: 20,
                  color: Colors.red[700],
                ),
              ],
            ],
          ),
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[200]!),
                ),
              ),
              child: content,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (selectedLots.isEmpty) {
      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _buildEmptyAccordion(
                  context,
                  'Primary Elements',
                  'Select bags from assays to view element composition',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildEmptyAccordion(
                  context,
                  'Leach Chemistry',
                  'Select bags from assays to view leach chemistry details',
                ),
              ),
            ],
          ),
          _buildEmptyAccordion(
            context,
            'Bag Information',
            'Select bags from assays to view bag details and locations',
          ),
        ],
      );
    }

    final weightedAverages = _calculateWeightedAverages();
    final hasOutOfSpec = _hasOutOfSpecElements(weightedAverages);
    final hasOutOfSpecLeach = _hasOutOfSpecLeachChemistry(weightedAverages);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _buildAccordion(
                context,
                'Primary Elements',
                _buildSpecificationStatus(weightedAverages),
                hasOutOfSpec: hasOutOfSpec,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildAccordion(
                context,
                'Leach Chemistry',
                _buildLeachChemistry(weightedAverages),
                hasOutOfSpec: hasOutOfSpecLeach,
              ),
            ),
          ],
        ),
        _buildAccordion(
          context,
          'Bag Information',
          _buildBagInformation(),
        ),
      ],
    );
  }

  Map<String, double> _calculateWeightedAverages() {
    final Map<String, double> weightedSums = {};
    int totalBags = 0;

    for (final lot in selectedLots) {
      final bags = lot.selectedBags;
      if (bags > 0) {
        totalBags += bags;
        for (final entry in lot.elements.entries) {
          weightedSums[entry.key] =
              (weightedSums[entry.key] ?? 0) + entry.value * bags;
        }
      }
    }

    if (totalBags > 0) {
      for (final key in weightedSums.keys) {
        weightedSums[key] = weightedSums[key]! / totalBags;
      }
    }

    return weightedSums;
  }

  bool _hasOutOfSpecElements(Map<String, double> weightedAverages) {
    final elementRanges = {
      'Mo': [48.0, double.infinity],
      'Fe': [0.0, 4.0],
      'Cu': [0.0, 3.0],
      'Pb': [0.0, 0.1],
      'As': [0.0, 0.05],
      'Insol': [0.0, 5.0],
      'Oil': [0.0, 5.0],
      'H2O': [0.0, 8.0],
    };

    for (final entry in weightedAverages.entries) {
      final range = elementRanges[entry.key];
      if (range != null && (entry.value < range[0] || entry.value > range[1])) {
        return true;
      }
    }

    return false;
  }

  bool _hasOutOfSpecLeachChemistry(Map<String, double> weightedAverages) {
    final moValue = weightedAverages['Mo'] ?? 0.0;
    final cuValue = weightedAverages['Cu'] ?? 0.0;
    final feValue = weightedAverages['Fe'] ?? 0.0;
    final combinedValue = moValue + cuValue;

    return combinedValue < 51.0 ||
        combinedValue > 100.0 ||
        cuValue < 0.0 ||
        cuValue > 3.0 ||
        feValue < 0.0 ||
        feValue > 4.0;
  }

  Widget _buildSpecificationStatus(Map<String, double> weightedAverages) {
    final elementRanges = {
      'Mo': [50.0, 95.0],
      'Fe': [0.0, 3.5],
      'Cu': [0.0, 3.0],
      'Pb': [0.0, 0.1],
      'As': [0.0, 0.05],
      'Insol': [0.0, 5.0],
      'Oil': [0.0, 5.0],
      'H2O': [0.0, 8.0],
    };

    final elementNames = {
      'Mo': 'Molybdenum',
      'Fe': 'Iron',
      'Cu': 'Copper',
      'Pb': 'Lead',
      'As': 'Arsenic',
      'Insol': 'Insolubles',
      'Oil': 'Oil Content',
      'H2O': 'Water Content',
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: weightedAverages.entries.map((entry) {
        final range = elementRanges[entry.key]!;
        final value = entry.value;
        final isOutOfSpec = value < range[0] || value > range[1];
        final progress = (value - range[0]) / (range[1] - range[0]);

        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                elementNames[entry.key] ?? entry.key,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    '${value.toStringAsFixed(1)}%',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: isOutOfSpec ? Colors.red : Colors.black87,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    range[1] % 1 == 0
                        ? '(${range[0].toStringAsFixed(1)} - ${range[1].toStringAsFixed(0)}%)'
                        : '(${range[0].toStringAsFixed(1)} - ${range[1].toStringAsFixed(2)}%)',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                  if (isOutOfSpec) ...[
                    const Spacer(),
                    Text(
                      'Out of Spec',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 4,
                child: LinearProgressIndicator(
                  value: progress.clamp(0.0, 1.0),
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation<Color>(
                    isOutOfSpec ? Colors.red : Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildLeachChemistry(Map<String, double> weightedAverages) {
    final moValue = weightedAverages['Mo'] ?? 0.0;
    final cuValue = weightedAverages['Cu'] ?? 0.0;
    final combinedValue = moValue + cuValue;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildElementRow(
          'Combined Mo + Cu',
          combinedValue,
          '51.0 - 100.0',
          note: 'Critical for maintaining optimal pHe and leach efficiency',
        ),
        _buildElementRow(
          'Copper Content',
          cuValue,
          '0.0 - 3.0',
          note: 'Sufficient copper needed for optimal pHe (potential and pH)',
        ),
        _buildElementRow(
          'Iron Content',
          weightedAverages['Fe'] ?? 0.0,
          '0.0 - 4.0',
          note: 'Ferric ratio indicates leach chemistry health',
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.info_outline, color: Colors.blue[700], size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'Process Considerations',
                    style: TextStyle(
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                '• Low pHe operation can lead to scaling/plugging of ferric lines\n'
                '• High impurity levels (Cu/Pb/As) can impact leach efficiency\n'
                '• Ferric ratio (Fe³⁺/Fe²⁺) indicates oxidation effectiveness',
                style: TextStyle(
                  color: Colors.blue[700],
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildElementRow(String name, double value, String range,
      {String? note}) {
    final limits = range.split(' - ').map((e) => double.parse(e)).toList();
    final isOutOfSpec = value < limits[0] || value > limits[1];
    final progress = (value - limits[0]) / (limits[1] - limits[0]);

    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          if (note != null) ...[
            const SizedBox(height: 4),
            Text(
              note,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                '${value.toStringAsFixed(1)}%',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: isOutOfSpec ? Colors.red : Colors.black,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '($range%)',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              if (isOutOfSpec) ...[
                const Spacer(),
                Text(
                  'Out of spec',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.red[700],
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 8),
          Stack(
            children: [
              Container(
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              FractionallySizedBox(
                widthFactor: progress.clamp(0.0, 1.0),
                child: Container(
                  height: 8,
                  decoration: BoxDecoration(
                    color: isOutOfSpec ? Colors.red : Colors.blue,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBagInformation() {
    final lotGroups = <String, List<LotData>>{};
    int totalBags = 0;

    for (final lot in selectedLots) {
      if (lot.selectedBags > 0) {
        lotGroups.putIfAbsent(lot.location, () => []).add(lot);
        totalBags += lot.selectedBags;
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total Selected: $totalBags bags',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        ...lotGroups.entries.map((entry) {
          final locationBags =
              entry.value.fold<int>(0, (sum, lot) => sum + lot.selectedBags);
          final percentage =
              (locationBags / totalBags * 100).toStringAsFixed(1);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    entry.key,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '$locationBags bags ($percentage%)',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: locationBags / totalBags,
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
              const SizedBox(height: 12),
              ...entry.value.map((lot) {
                final isLastInLocation = entry.value.last == lot;
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: isLastInLocation ? 0 : 12,
                    left: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.qr_code,
                              size: 16, color: Colors.grey[700]),
                          const SizedBox(width: 8),
                          Text(
                            lot.id,
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            '${lot.selectedBags} bags',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          'Barcodes: ${lot.getBarcodeRange()}',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
              if (entry.key != lotGroups.keys.last) ...[
                const SizedBox(height: 12),
                const Divider(),
                const SizedBox(height: 12),
              ],
            ],
          );
        }).toList(),
      ],
    );
  }
}
