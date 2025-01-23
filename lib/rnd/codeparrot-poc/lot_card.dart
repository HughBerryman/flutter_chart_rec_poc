import 'package:flutter/material.dart';
import 'lot_card_top_row.dart';
import 'lot_details_section.dart';

class LotCard extends StatelessWidget {
  const LotCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF2F8),
      appBar: AppBar(
        title: const Text('CodeParrot POC'),
        backgroundColor: const Color(0xFFEBF2F8),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 684,
            decoration: BoxDecoration(
              color: const Color(0xFCFCFCFF),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFB6C9D8), width: 1),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LotCardTopRow(),
                const Divider(height: 1, color: Color(0xFFB6C9D8)),
                LotDetailsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
