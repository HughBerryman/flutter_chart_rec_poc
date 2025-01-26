import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoFmiNavigationDrawer extends StatelessWidget {
  const DemoFmiNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Navigation Drawer'),
        Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DemoDrawer()));
                },
                child: const Text('Show Demo'))),
        Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DemoDrawerExpansion()));
                },
                child: const Text('Show Nesting Demo'))),
      ],
    );
  }
}
