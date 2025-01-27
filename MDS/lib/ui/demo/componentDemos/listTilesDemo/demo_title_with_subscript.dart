import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoTitleWithSubscript extends StatelessWidget {
  const DemoTitleWithSubscript({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: FMIThemeBase.basePaddingSmall,
          bottom: FMIThemeBase.basePaddingSmall),
      child: Card(
        shadowColor: Theme.of(context).colorScheme.shadow,
        child: const ListTile(
          title: TitleWithSubscriptWidget(title: 'Title', subscript: 'Cnt'),
        ),
      ),
    );
  }
}
