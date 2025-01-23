import 'package:flutter/material.dart';

class LotCardTopRowLotDetailsSection extends StatefulWidget {
  final String lotNumber;
  final String location;
  final int totalBags;
  final int processedBags;
  final Map<String, double> assays;
  final DateTime receivedDate;
  final String carrier;
  final List<String> documents;
  
  const LotCardTopRowLotDetailsSection({
    Key? key,
    this.lotNumber = 'Lot-001',
    this.location = 'Morenci',
    this.totalBags = 150,
    this.processedBags = 0,
    this.assays = const {
      'Mo': 45.00,
      'Fe': 4.50,
      'Cu': 3.50,
      'As': 0.08,
      'Insol': 5.50,
      'Oil': 5.20,
      'H2O': 8.50,
    },
    this.receivedDate = const Duration(days: 0),
    this.carrier = 'Knight-Swift',
    this.documents = const ['Placeholder.pdf'],
  }) : super(key: key);

  @override
  State<LotCardTopRowLotDetailsSection> createState() => _LotCardTopRowLotDetailsSectionState();
}

class _LotCardTopRowLotDetailsSectionState extends State<LotCardTopRowLotDetailsSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: const Color(0xFCFCFCFF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFB6C9D8), width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTopRow(),
          const Divider(height: 1, color: Color(0xFFB6C9D8)),
          _buildLotDetails(),
        ],
      ),
    );
  }

  Widget _buildTopRow() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPrimaryInfo(),
          Container(
            width: 1,
            height: 144,
            color: const Color(0xFFB6C9D8),
          ),
          _buildAssays(),
        ],
      ),
    );
  }

  Widget _buildPrimaryInfo() {
    return SizedBox(
      width: 226,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.lotNumber,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                  height: 1.5,
                ),
              ),
              const Icon(Icons.edit, size: 20),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFCFCFCFF),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: const Color(0xFFB6C9D8)),
            ),
            child: Text(
              widget.location,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '${widget.totalBags} bags in lot',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1,
            ),
          ),
          const SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Number of Bags',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: 5,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE2E2E5),
                            borderRadius: BorderRadius.circular(2.5),
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: widget.processedBags / widget.totalBags,
                          child: Container(
                            height: 5,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(2.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${widget.processedBags} / ${widget.totalBags}',
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAssays() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: widget.assays.entries.map((entry) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFCFCFCFF),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: const Color(0xFFB6C9D8)),
          ),
          child: Text(
            '${entry.key} ${entry.value}%',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildLotDetails() {
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
                    Text(
                      widget.carrier,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ],
                ),
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
                ...widget.documents.map((doc) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      const Icon(Icons.picture_as_pdf, size: 16),
                      const SizedBox(width: 8),
                      Text(
                        doc,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.download, size: 16),
                      const SizedBox(width: 8),
                      const Icon(Icons.delete, size: 16),
                    ],
                  ),
                )).toList(),
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

