import 'package:flutter/material.dart';

class LotCardTopRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Lot-001', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  Icon(Icons.edit, size: 20),
                ],
              ),
              SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFCFCFCFF),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: const Color(0xFFB6C9D8)),
                ),
                child: Text('Morenci', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 8),
              Text('150 bags in lot', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Number of Bags', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  SizedBox(height: 8),
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
                      SizedBox(width: 8),
                      Text('0 / 150', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              'Mo 45.00%', 'Fe 4.50%', 'Cu 3.50%', 'As 0.08%', 'Insol 5.50%', 'Oil 5.20%', 'H2O 8.50%'
            ].map((assay) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFCFCFCFF),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: const Color(0xFFB6C9D8)),
              ),
              child: Text(assay, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            )).toList(),
          ),
        ],
      ),
    );
  }
}

