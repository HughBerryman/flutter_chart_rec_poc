import 'package:flutter/material.dart';
import '../../models/lot_data.dart';

class LotCard extends StatelessWidget {
  final LotData lot;
  final ValueChanged<int> onBagsChanged;
  final ValueChanged<bool> onExpandChanged;
  final VoidCallback onSpecificationView;
  final VoidCallback onQualityCertificateView;
  final Function(Map<String, double>) onAssayValuesChanged;

  const LotCard({
    super.key,
    required this.lot,
    required this.onBagsChanged,
    required this.onExpandChanged,
    required this.onSpecificationView,
    required this.onQualityCertificateView,
    required this.onAssayValuesChanged,
  });

  void _showSpecificationSheet(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Container(
          width: 800,
          height: 600,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Specification Sheet - ${lot.id}',
                    style: const TextStyle(
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
              const Divider(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Document Info
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Document ID',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'SPEC-LOT-001',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Issue Date',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  '2024-03-15',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),

                      // Parameters Table
                      Table(
                        columnWidths: const {
                          0: FlexColumnWidth(2),
                          1: FlexColumnWidth(2),
                          2: FlexColumnWidth(1.5),
                          3: FlexColumnWidth(2),
                        },
                        children: [
                          TableRow(
                            children: [
                              'Parameter',
                              'Method',
                              'Result',
                              'Specification',
                            ].map((text) => _buildTableHeader(text)).toList(),
                          ),
                          ...[
                            [
                              'Molybdenum Content',
                              'XRF-001',
                              '58.2%',
                              '50.0 - 95.0%'
                            ],
                            [
                              'Moisture Content',
                              'ASTM D6304',
                              '4.2%',
                              'Max 7.0%'
                            ],
                            [
                              'Particle Size',
                              'ASTM B214',
                              '98.5%',
                              '>95% -325 mesh'
                            ],
                            [
                              'Bulk Density',
                              'ASTM B212',
                              '1.8 g/cm³',
                              '1.5 - 2.2 g/cm³'
                            ],
                            ['Oil Content', 'SOL-442', '2.1%', 'Max 3.5%'],
                          ]
                              .map((row) => TableRow(
                                    children: [
                                      _buildTableCell(row[0], isHeader: true),
                                      _buildTableCell(row[1]),
                                      _buildTableCell(row[2], isBold: true),
                                      _buildTableCell(row[3]),
                                    ],
                                  ))
                              .toList(),
                        ],
                      ),
                      const SizedBox(height: 32),

                      // Footer Notes
                      Text(
                        'Analysis performed according to standard procedures.',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Document generated on 2024-03-15 14:30 MST',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
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

  Widget _buildTableHeader(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildTableCell(String text,
      {bool isHeader = false, bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: isHeader || isBold ? FontWeight.w500 : FontWeight.normal,
        ),
      ),
    );
  }

  void _showQualityCertificate(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Container(
          width: 800,
          height: 600,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quality Certificate - ${lot.id}',
                    style: const TextStyle(
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
              const Divider(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Document Info
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Document ID',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'QC-LOT-001',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Issue Date',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  '2024-03-15',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),

                      // Parameters Table
                      Table(
                        columnWidths: const {
                          0: FlexColumnWidth(2),
                          1: FlexColumnWidth(2),
                          2: FlexColumnWidth(1.5),
                          3: FlexColumnWidth(2),
                        },
                        children: [
                          TableRow(
                            children: [
                              'Parameter',
                              'Method',
                              'Result',
                              'Specification',
                            ].map((text) => _buildTableHeader(text)).toList(),
                          ),
                          ...[
                            [
                              'Molybdenum Content',
                              'XRF-001',
                              '58.2%',
                              '50.0 - 95.0%'
                            ],
                            [
                              'Moisture Content',
                              'ASTM D6304',
                              '4.2%',
                              'Max 7.0%'
                            ],
                            [
                              'Particle Size',
                              'ASTM B214',
                              '98.5%',
                              '>95% -325 mesh'
                            ],
                            [
                              'Bulk Density',
                              'ASTM B212',
                              '1.8 g/cm³',
                              '1.5 - 2.2 g/cm³'
                            ],
                            ['Oil Content', 'SOL-442', '2.1%', 'Max 3.5%'],
                          ]
                              .map((row) => TableRow(
                                    children: [
                                      _buildTableCell(row[0], isHeader: true),
                                      _buildTableCell(row[1]),
                                      _buildTableCell(row[2], isBold: true),
                                      _buildTableCell(row[3]),
                                    ],
                                  ))
                              .toList(),
                        ],
                      ),
                      const SizedBox(height: 32),

                      // Footer Notes
                      Text(
                        'Analysis performed according to standard procedures.',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Document generated on 2024-03-15 14:30 MST',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
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

  void _showEditAssayModal(BuildContext context) {
    final Map<String, double> editedValues = Map.from(lot.elements);
    final Map<String, String> elementLabels = {
      'Mo': 'Molybdenum',
      'Fe': 'Iron',
      'Cu': 'Copper',
      'Pb': 'Lead',
      'Sn': 'Tin',
      'Al': 'Aluminum',
      'Cl': 'Chlorine',
      'K': 'Potassium',
    };

    final Map<String, String> elementRanges = {
      'Mo': '50.0% - 95.0%',
      'Fe': '0.0% - 3.5%',
      'Cu': '1.2% - 2.8%',
      'Pb': '0.0% - 0.08%',
      'Sn': '0.0% - 0.002%',
      'Al': '0.0% - 0.4%',
      'Cl': '0.0% - 0.08%',
      'K': '0.0% - 0.08%',
    };

    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.white,
        child: Container(
          width: 600,
          constraints: const BoxConstraints(maxHeight: 800),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey[200]!),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Edit Assay Values - ${lot.id}',
                      style: const TextStyle(
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
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...lot.elements.entries.map((entry) {
                        final controller = TextEditingController(
                          text: entry.value.toString(),
                        );
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    elementLabels[entry.key] ?? entry.key,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Target: ${elementRanges[entry.key]}',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: controller,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        decimal: true),
                                decoration: InputDecoration(
                                  hintText: 'Enter value',
                                  suffixText: '%',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide:
                                        BorderSide(color: Colors.grey[300]!),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide:
                                        BorderSide(color: Colors.grey[300]!),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide:
                                        BorderSide(color: Colors.blue[700]!),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                ),
                                onChanged: (value) {
                                  final parsedValue = double.tryParse(value);
                                  if (parsedValue != null) {
                                    editedValues[entry.key] = parsedValue;
                                  }
                                },
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey[200]!),
                  ),
                ),
                child: Row(
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
                    FilledButton(
                      onPressed: () {
                        onAssayValuesChanged(editedValues);
                        Navigator.pop(context);
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                      ),
                      child: const Text('Save Changes'),
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

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: const Color(0xFFFCFCFF),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Left Section - Lot Info & Slider
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  lot.id,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[50],
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    lot.location,
                                    style: TextStyle(
                                      color: Colors.blue[700],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () => _showEditAssayModal(context),
                              tooltip: 'Edit Assay Values',
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '150 bags in lot (4,000 lbs/bag)',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        const SizedBox(height: 16),
                        const Text('Number of Bags'),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Colors.blue,
                                  inactiveTrackColor: Colors.grey[200],
                                  thumbColor: Colors.white,
                                  overlayColor: Colors.blue.withOpacity(0.1),
                                  valueIndicatorColor: Colors.blue,
                                  showValueIndicator: ShowValueIndicator.always,
                                ),
                                child: Slider(
                                  value: lot.selectedBags.toDouble(),
                                  min: 0,
                                  max: 150,
                                  divisions: 150,
                                  label: '${lot.selectedBags} bags',
                                  onChanged: (value) =>
                                      onBagsChanged(value.toInt()),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              child: Text(
                                '${lot.selectedBags} / 150',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Vertical Divider
                Container(
                  width: 1,
                  color: Colors.grey[300],
                ),
                // Right Section - Elements
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: lot.elements.entries
                            .map((e) => _buildElementChip(e.key, e.value))
                            .toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Lot Details Button
          InkWell(
            onTap: () => onExpandChanged(!lot.isExpanded),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[300]!),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Lot Details',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Icon(
                      lot.isExpanded ? Icons.expand_less : Icons.expand_more,
                      size: 20,
                      color: Colors.grey[600],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Expanded Content
          if (lot.isExpanded)
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[300]!),
                ),
              ),
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Received Date & Carrier
                  Row(
                    children: [
                      // Received Date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_today,
                                    size: 16, color: Colors.grey[600]),
                                const SizedBox(width: 8),
                                Text(
                                  'Received Date',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              '12/10/2024',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Carrier
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.local_shipping,
                                    size: 16, color: Colors.grey[600]),
                                const SizedBox(width: 8),
                                Text(
                                  'Carrier',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Knight-Swift',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Related Documents
                  Row(
                    children: [
                      Icon(Icons.description,
                          size: 16, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      Text(
                        'Related Documents',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => _showSpecificationSheet(context),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.link,
                                  size: 16, color: Colors.grey[700]),
                              const SizedBox(width: 8),
                              Text(
                                'Specification Sheet',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      InkWell(
                        onTap: () => _showQualityCertificate(context),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.link,
                                  size: 16, color: Colors.grey[700]),
                              const SizedBox(width: 8),
                              Text(
                                'Quality Certificate',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Lot Notes
                  Row(
                    children: [
                      Icon(Icons.notes, size: 16, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      Text(
                        'Lot Notes:',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'No additional notes for this lot.',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildElementChip(String element, double value) {
    final Map<String, List<double>> elementRanges = {
      'Mo': [50.0, 95.0],
      'Fe': [0.0, 3.5],
      'Cu': [1.2, 2.8],
      'Pb': [0.0, 0.08],
      'Sn': [0.0, 0.002],
      'Al': [0.0, 0.4],
      'Cl': [0.0, 0.08],
      'K': [0.0, 0.08],
    };

    final range = elementRanges[element];
    final isOutOfSpec = range != null && (value < range[0] || value > range[1]);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: isOutOfSpec ? Colors.red[50] : Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            element,
            style: TextStyle(
              color: isOutOfSpec ? Colors.red[700] : Colors.grey[700],
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '${value.toStringAsFixed(2)}%',
            style: TextStyle(
              color: isOutOfSpec ? Colors.red[700] : Colors.grey[700],
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
