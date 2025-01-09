import 'package:flutter/material.dart';

class ExportModal extends StatefulWidget {
  final Function(bool isPdf, Map<String, bool> sections) onExport;

  const ExportModal({
    super.key,
    required this.onExport,
  });

  @override
  State<ExportModal> createState() => _ExportModalState();
}

class _ExportModalState extends State<ExportModal> {
  bool pdfSelected = true;
  final Map<String, bool> sections = {
    'Blend Summary': true,
    'Assay Details': true,
    'Product Composition': true,
    'Charts & Graphs': false,
  };

  Widget _buildExportSetting(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        width: 1000,
        height: 600,
        child: Row(
          children: [
            // Left side - Export options
            Expanded(
              flex: 3,
              child: Column(
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
                        const Text(
                          'Export Blend Strategy',
                          style: TextStyle(
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
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Export Format
                          const Text(
                            'Export Format',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: true,
                                    groupValue: pdfSelected,
                                    onChanged: (bool? value) {
                                      if (value != null) {
                                        setState(() => pdfSelected = value);
                                      }
                                    },
                                    activeColor: Colors.blue[700],
                                  ),
                                  const Text('PDF Report'),
                                ],
                              ),
                              const SizedBox(width: 32),
                              Row(
                                children: [
                                  Radio(
                                    value: false,
                                    groupValue: pdfSelected,
                                    onChanged: (bool? value) {
                                      if (value != null) {
                                        setState(() => pdfSelected = !value);
                                      }
                                    },
                                    activeColor: Colors.blue[700],
                                  ),
                                  const Text('Excel Workbook'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 32),

                          // Content Sections
                          const Text(
                            'Content Sections',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          ...sections.entries.map((section) => Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      section.key,
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    Switch(
                                      value: section.value,
                                      onChanged: (value) {
                                        setState(() {
                                          sections[section.key] = value;
                                        });
                                      },
                                      activeColor: Colors.blue[700],
                                      activeTrackColor: Colors.blue[100],
                                      inactiveThumbColor: Colors.grey[400],
                                      inactiveTrackColor: Colors.grey[300],
                                    ),
                                  ],
                                ),
                              )),
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
                    child: SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: () {
                          widget.onExport(pdfSelected, Map.from(sections));
                          Navigator.pop(context);
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.blue[700],
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        icon: const Icon(Icons.file_download),
                        label: const Text('Export Report'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Right side - Preview
            Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                border: Border(
                  left: BorderSide(color: Colors.grey[200]!),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey[200]!),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          'Export Preview',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Preview placeholder
                          Container(
                            height: 300,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]!),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.description_outlined,
                                      size: 48, color: Colors.grey[400]),
                                  const SizedBox(height: 16),
                                  Text(
                                    'Preview will appear here',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          // Export Settings
                          const Text(
                            'Export Settings',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          _buildExportSetting('Page Size', 'A4'),
                          _buildExportSetting('Orientation', 'Portrait'),
                          _buildExportSetting('Quality', 'High'),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton.icon(
                              onPressed: () {
                                // TODO: Implement settings configuration
                              },
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                              ),
                              icon: const Icon(Icons.settings),
                              label: const Text('Configure Settings'),
                            ),
                          ),
                        ],
                      ),
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
