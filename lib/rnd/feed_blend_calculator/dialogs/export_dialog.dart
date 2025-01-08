import 'package:flutter/material.dart';

class ExportDialog extends StatefulWidget {
  const ExportDialog({super.key});

  @override
  State<ExportDialog> createState() => _ExportDialogState();
}

class _ExportDialogState extends State<ExportDialog> {
  bool pdfSelected = true;
  Map<String, bool> sections = {
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
      backgroundColor: const Color(0xFFFCFCFF),
      child: SizedBox(
        width: 1000,
        height: 600,
        child: Row(
          children: [
            // Left side - Export options
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                    const SizedBox(height: 32),

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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    const Spacer(),

                    // Export Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // TODO: Implement export functionality
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        icon: const Icon(Icons.file_download),
                        label: const Text('Export Report'),
                      ),
                    ),
                  ],
                ),
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
                  // Preview section
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Export Preview',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 24),
                                // Preview placeholder
                                Container(
                                  height: 300,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey[300]!),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                              ],
                            ),
                          ),
                          const Divider(height: 1),
                          // Export Settings
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                    ),
                                    icon: const Icon(Icons.settings),
                                    label: const Text('Configure Settings'),
                                  ),
                                ),
                              ],
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
