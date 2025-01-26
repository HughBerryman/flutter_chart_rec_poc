import 'package:flutter/material.dart';

class ColumnLabelsComponent extends StatelessWidget {
  final double columnWidth;

  const ColumnLabelsComponent({
    Key? key,
    this.columnWidth = 150.0, // Default width for each column
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Type column
          Container(
            width: columnWidth,
            child: Text(
              'Type',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
                color: const Color(0xFF2A3136),
              ),
            ),
          ),
          
          // MIRA Recommends column
          Container(
            width: columnWidth,
            child: Text(
              'MIRA Recommends',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
                color: const Color(0xFF2A3136),
              ),
            ),
          ),
          
          // Selected Setting column
          Container(
            width: columnWidth,
            child: Text(
              'Selected Setting',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
                color: const Color(0xFF2A3136),
              ),
            ),
          ),
          
          // Reason column
          Expanded(
            child: Container(
              child: Text(
                'Reason',
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                  color: const Color(0xFF2A3136),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
