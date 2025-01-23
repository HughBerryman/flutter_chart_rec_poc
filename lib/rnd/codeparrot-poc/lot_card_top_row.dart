import 'package:flutter/material.dart';

class LotCardTopRow extends StatelessWidget {
  const LotCardTopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text('Lot-001',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    const SizedBox(width: 8),
                    const Icon(Icons.edit, size: 20),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFCFCFCFF),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: const Color(0xFFB6C9D8)),
                  ),
                  child: const Text('Morenci',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 8),
                const Text('150 bags in lot',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Number of Bags',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: 200,
                      child: Row(
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
                                  widthFactor: 0.0,
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
                          const Text('0 / 150',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 3,
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                AssayChip(label: 'Mo 45.00%'),
                AssayChip(label: 'Fe 4.50%'),
                AssayChip(label: 'Cu 3.50%'),
                AssayChip(label: 'As 0.08%'),
                AssayChip(label: 'Insol 5.50%'),
                AssayChip(label: 'Oil 5.20%'),
                AssayChip(label: 'H2O 8.50%'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AssayChip extends StatelessWidget {
  final String label;

  const AssayChip({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFCFCFCFF),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xFFB6C9D8)),
      ),
      child: Text(label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}
