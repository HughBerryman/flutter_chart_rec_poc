import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoTitleWithOverline extends StatelessWidget {
  const DemoTitleWithOverline({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: FMIThemeBase.basePaddingSmall,
          bottom: FMIThemeBase.basePaddingSmall),
      child: Card(
        child: ListTile(
            title: TitleWithOverlineWidget(
              title: 'Title',
              overline: 'Overline',
              titleColor: Theme.of(context).colorScheme.primary,
            ),
            subtitle: const Text("Subtitle")),
      ),
    );
  }
}
