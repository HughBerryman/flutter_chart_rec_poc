import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoSubtitleTwoLine extends StatelessWidget {
  const DemoSubtitleTwoLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
          top: FMIThemeBase.basePaddingSmall,
          bottom: FMIThemeBase.basePaddingSmall),
      child: Card(
        child: ListTile(
          title: Text("Title"),
          subtitle: SubtitleTwoLineWidget(
              line1: 'Subtitle - Line 1', line2: 'Subtitle - Line 2'),
        ),
      ),
    );
  }
}
