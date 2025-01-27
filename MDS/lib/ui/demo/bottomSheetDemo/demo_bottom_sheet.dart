import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoBottomSheet extends StatelessWidget {
  const DemoBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(FMIThemeBase.basePaddingLarge),
            child: ElevatedButton(
              child: const Text('Open Bottom Sheet'),
              onPressed: (() {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => Center(
                        child: ElevatedButton(
                            child: const Text('Close'),
                            onPressed: (() => Navigator.pop(context)))));
              }),
            ),
          ),
        ],
      ),
    );
  }
}
