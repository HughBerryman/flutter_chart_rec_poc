import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HeaderComponent.dart';
import 'DividerComponent.dart';
import 'ColumnLabelsComponent.dart';
import 'data_row_component.dart';

class RowComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1020,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0x9747FFFF), width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HeaderComponent(),
          DividerComponent(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                ColumnLabelsComponent(),
                SizedBox(height: 10),
                DataRowComponent(
                  title: 'Decant Bleed',
                  value1: '2000',
                  unit1: 'Gal / Shift',
                  value2: '2000',
                  unit2: 'Gal / Shift',
                  status: 'Accepted',
                  statusIcon: FontAwesomeIcons.check,
                  statusIconColor: Colors.green,
                ),
                DataRowComponent(
                  title: 'Fresh Ferric',
                  value1: '1000',
                  unit1: 'Gal / Shift',
                  value2: '500',
                  unit2: 'Gal / Shift',
                  status: 'Rejected',
                  reason: 'Rejected due to Economic Viability',
                  statusIcon: FontAwesomeIcons.xmark,
                  statusIconColor: Colors.red,
                  showInfoIcon: true,
                ),
                DataRowComponent(
                  title: 'Digester Run',
                  value1: '1',
                  unit1: 'Runs',
                  value2: '1',
                  unit2: 'Runs',
                  status: 'Adjusted',
                  reason: 'Adjusted due to Safety or Environmental Concerns',
                  statusIcon: FontAwesomeIcons.pen,
                  statusIconColor: Colors.blue,
                  showInfoIcon: true,
                ),
                DataRowComponent(
                  title: 'Throughput',
                  value1: '5.90',
                  unit1: 'TPH',
                  value2: '5.90',
                  unit2: 'TPH',
                  status: 'Accepted',
                  statusIcon: FontAwesomeIcons.check,
                  statusIconColor: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
