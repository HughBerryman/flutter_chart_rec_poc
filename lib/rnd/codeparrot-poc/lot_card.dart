import 'package:flutter/material.dart';
import 'lot_card_top_row.dart';
import 'lot_details_section.dart';

class LotCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 684,
      decoration: BoxDecoration(
        color: Color(0xFCFCFCFF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFB6C9D8), width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LotCardTopRow(),
          Divider(height: 1, color: Color(0xFFB6C9D8)),
          LotDetailsSection(),
        ],
      ),
    );
  }
}

