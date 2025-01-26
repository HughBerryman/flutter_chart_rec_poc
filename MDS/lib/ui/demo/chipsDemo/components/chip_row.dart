import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class ChipRow extends StatelessWidget {
  final List<Widget> children;
  const ChipRow({required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
      child: Row(
        children: children,
      ),
    );
  }
}
