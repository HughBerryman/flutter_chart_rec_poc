import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

import '../demo.dart';

class DemoErrorHeaderCard extends StatelessWidget {
  const DemoErrorHeaderCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ComponentHeader(title: 'Error Header Card'),
        Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
        ErrorHeaderCard(title: 'Error Card'),
      ],
    );
  }
}
