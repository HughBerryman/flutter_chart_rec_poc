import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataRowComponent extends StatelessWidget {
  final String title;
  final String value1;
  final String unit1;
  final String value2;
  final String unit2;
  final String status;
  final String reason;
  final IconData statusIcon;
  final Color statusIconColor;
  final bool showInfoIcon;

  const DataRowComponent({
    Key? key,
    this.title = 'Decant Bleed',
    this.value1 = '2000',
    this.unit1 = 'Gal / Shift',
    this.value2 = '2000',
    this.unit2 = 'Gal / Shift',
    this.status = 'Accepted',
    this.reason = '',
    this.statusIcon = FontAwesomeIcons.check,
    this.statusIconColor = Colors.green,
    this.showInfoIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      constraints: BoxConstraints(minWidth: 948),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Title cell
          Container(
            width: 165,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(statusIcon, size: 16, color: statusIconColor),
                SizedBox(width: 12),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          
          // First value cell
          Container(
            width: 165,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Text(
                  value1,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(width: 4),
                Text(
                  unit1,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),

          // Second value cell
          Container(
            width: 165,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Text(
                  value2,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(width: 4),
                Text(
                  unit2,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),

          // Status and reason cell
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text(
                    status,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  if (reason.isNotEmpty) ...[
                    SizedBox(width: 4),
                    Text(
                      reason,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                  if (showInfoIcon) ...[
                    SizedBox(width: 4),
                    Icon(
                      FontAwesomeIcons.circleInfo,
                      size: 16,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

