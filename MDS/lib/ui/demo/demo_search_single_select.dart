import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

import 'demo.dart';

class DemoSearchSingleSelect extends StatefulWidget {
  const DemoSearchSingleSelect({Key? key}) : super(key: key);

  @override
  State<DemoSearchSingleSelect> createState() => _DemoSearchSingleSelectState();
}

class _DemoSearchSingleSelectState extends State<DemoSearchSingleSelect> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentHeader(title: 'Search Single Select'),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(title: 'Keywords: Option and Api'),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePaddingLarge,
                  bottom: FMIThemeBase.basePaddingLarge),
              child: FilledButton(
                child: const Text("Show Demo"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DemoSearchSingleSelectEx()));
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
