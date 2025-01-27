import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoTreeView extends StatelessWidget {
  const DemoTreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
              child: const Text('Show Tree View'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SampleTreeView()));
              },
            ),
          ),
        ],
      )
    ]);
  }
}
