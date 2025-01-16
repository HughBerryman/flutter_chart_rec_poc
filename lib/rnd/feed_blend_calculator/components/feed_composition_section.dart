import 'package:flutter/material.dart';
import '../../models/lot_data.dart';

class FeedCompositionSection extends StatefulWidget {
  final List<LotData> selectedLots;

  const FeedCompositionSection({
    super.key,
    required this.selectedLots,
  });

  @override
  State<FeedCompositionSection> createState() => _FeedCompositionSectionState();
}

class _FeedCompositionSectionState extends State<FeedCompositionSection> {
  final Map<String, bool> _expandedSections = {
    'Specification Status': true,
    'Leach Chemistry': true,
    'Bag Information': true,
  };

  Map<String, double> _calculateWeightedAverages() {
    final Map<String, double> weightedSums = {};
    int totalBags = 0;

    // Calculate weighted sums and total bags
    for (final lot in widget.selectedLots) {
      final bags = lot.selectedBags;
      if (bags > 0) {
        totalBags += bags;
        for (final entry in lot.elements.entries) {
          weightedSums[entry.key] =
              (weightedSums[entry.key] ?? 0) + entry.value * bags;
        }
      }
    }

    // Calculate weighted averages
    if (totalBags > 0) {
      for (final key in weightedSums.keys) {
        weightedSums[key] = weightedSums[key]! / totalBags;
      }
    }

    return weightedSums;
  }

  Widget _buildElementRow(String name, double value, String range,
      {String? note}) {
    final limits = range
        .split(' - ')
        .map((e) => double.parse(e.replaceAll('%', '')))
        .toList();
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
                '${value.toStringAsFixed(2)}%',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: isOutOfSpec ? Colors.red : Colors.black,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '($range)',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              if (isOutOfSpec) ...[
                const Spacer(),
                Text(
                  'Out of Spec',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.red[600],
                    fontWeight: FontWeight.w500,
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

  Widget _buildAccordion(String title, Widget content, {bool? hasOutOfSpec}) {
    final isExpanded = _expandedSections[title] ?? false;

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Column(
        children: [
          InkWell(
            onTap: () => setState(() => _expandedSections[title] = !isExpanded),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(
                  bottom: isExpanded
                      ? BorderSide(color: Colors.grey[200]!)
                      : BorderSide.none,
                ),
              ),
              child: Row(
                children: [
                  if (title == 'Specification Status')
                    Icon(
                      hasOutOfSpec == true
                          ? Icons.warning_amber_rounded
                          : Icons.check_circle,
                      size: 24,
                      color: hasOutOfSpec == true
                          ? Colors.red[700]
                          : Colors.green[700],
                    )
                  else
                    Icon(
                      title == 'Leach Chemistry'
                          ? Icons.science
                          : Icons.inventory_2,
                      size: 24,
                      color: Colors.grey[700],
                    ),
                  const SizedBox(width: 12),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: title == 'Specification Status'
                          ? (hasOutOfSpec == true
                              ? Colors.red[700]
                              : Colors.green[700])
                          : Colors.black,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: Colors.grey[700],
                  ),
                ],
              ),
            ),
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.all(16),
              child: content,
            ),
        ],
      ),
    );
  }

  Widget _buildSpecificationStatus(Map<String, double> weightedAverages) {
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

    final outOfSpecElements = <String>[];
    final inSpecElements = <String>[];

    for (final entry in weightedAverages.entries) {
      final range = elementRanges[entry.key];
      if (range != null) {
        if (entry.value < range[0] || entry.value > range[1]) {
          outOfSpecElements.add(entry.key);
        } else {
          inSpecElements.add(entry.key);
        }
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (outOfSpecElements.isNotEmpty) ...[
          Row(
            children: [
              Icon(
                Icons.warning_amber_rounded,
                size: 16,
                color: Colors.red[700],
              ),
              const SizedBox(width: 8),
              Text(
                'Out of Specification',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.red[700],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 8,
            runSpacing: 8,
            children: outOfSpecElements.map((element) {
              final value = weightedAverages[element]!;
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  '$element: ${value.toStringAsFixed(2)}%',
                  style: TextStyle(
                    color: Colors.red[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 16),
        ],
        if (inSpecElements.isNotEmpty) ...[
          Row(
            children: [
              Icon(
                Icons.check_circle,
                size: 16,
                color: Colors.green[700],
              ),
              const SizedBox(width: 8),
              Text(
                'Within Specification',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.green[700],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 8,
            runSpacing: 8,
            children: inSpecElements.map((element) {
              final value = weightedAverages[element]!;
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  '$element: ${value.toStringAsFixed(2)}%',
                  style: TextStyle(
                    color: Colors.green[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ],
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
          '51.0% - 100.0%',
          note: 'Critical for maintaining optimal pHe and leach efficiency',
        ),
        _buildElementRow(
          'Copper Content',
          cuValue,
          '0.0% - 3.0%',
          note: 'Sufficient copper needed for optimal pHe (potential and pH)',
        ),
        _buildElementRow(
          'Iron Content',
          weightedAverages['Fe'] ?? 0.0,
          '0.0% - 4.0%',
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

  Widget _buildBagInformation() {
    final lotGroups = <String, List<LotData>>{};
    int totalBags = 0;

    // Group lots by location and count total bags
    for (final lot in widget.selectedLots) {
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

  @override
  Widget build(BuildContext context) {
    final weightedAverages = _calculateWeightedAverages();
    final hasOutOfSpec = weightedAverages.entries.any((entry) {
      final range = {
        'Mo': [48.0, double.infinity],
        'Fe': [0.0, 4.0],
        'Cu': [0.0, 3.0],
        'Pb': [0.0, 0.1],
        'As': [0.0, 0.05],
        'Insol': [0.0, 5.0],
        'Oil': [0.0, 5.0],
        'H2O': [0.0, 8.0],
      }[entry.key];
      return range != null &&
          (entry.value < range[0] || entry.value > range[1]);
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildAccordion(
          'Specification Status',
          _buildSpecificationStatus(weightedAverages),
          hasOutOfSpec: hasOutOfSpec,
        ),
        _buildAccordion(
          'Leach Chemistry',
          _buildLeachChemistry(weightedAverages),
        ),
        _buildAccordion(
          'Bag Information',
          _buildBagInformation(),
        ),
      ],
    );
  }
}
