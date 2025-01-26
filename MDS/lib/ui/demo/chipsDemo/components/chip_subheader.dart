import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

import '../../component_subheader.dart';

class ChipSubheader extends StatelessWidget {
  final String title;
  const ChipSubheader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding3),
      child: ComponentSubheader(title: title),
    );
  }
}
