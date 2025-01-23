import 'package:flutter/material.dart';

class LotDetailsSection extends StatefulWidget {
  @override
  _LotDetailsSectionState createState() => _LotDetailsSectionState();
}

class _LotDetailsSectionState extends State<LotDetailsSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Lot Details',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.1,
                  ),
                ),
                Icon(
                  _isExpanded ? Icons.expand_less : Icons.expand_more,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
        if (_isExpanded) ...[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 16),
                    const SizedBox(width: 8),
                    const Text(
                      'Received Date',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.local_shipping, size: 16),
                    const SizedBox(width: 8),
                    const Text(
                      'Carrier',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text('12/10/2024', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                const Text('Knight-Swift', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Icon(Icons.attach_file, size: 16),
                    const SizedBox(width: 8),
                    const Text(
                      'Related Documents',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.picture_as_pdf, size: 16),
                    const SizedBox(width: 8),
                    const Text('Placeholder.pdf', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                    const Spacer(),
                    const Icon(Icons.download, size: 16),
                    const SizedBox(width: 8),
                    const Icon(Icons.delete, size: 16),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Icon(Icons.note, size: 16),
                    const SizedBox(width: 8),
                    const Text(
                      'Lot Notes',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}

