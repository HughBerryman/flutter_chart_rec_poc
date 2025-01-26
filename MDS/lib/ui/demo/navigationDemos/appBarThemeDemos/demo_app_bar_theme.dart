import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoAppBarTheme extends StatelessWidget {
  const DemoAppBarTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'App Bar Themes'),
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding6)),
        const ComponentSubheader(title: 'App Bar Themes'),
        Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AppBarDefault()));
                },
                child: const Text('Show App Bar'))),
      ],
    );
  }
}
