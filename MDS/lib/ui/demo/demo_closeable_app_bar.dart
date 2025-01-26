import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

import 'demo.dart';

class DemoCloseableAppBar extends StatefulWidget {
  const DemoCloseableAppBar({Key? key}) : super(key: key);

  @override
  State<DemoCloseableAppBar> createState() => _DemoCloseableAppBarState();
}

class _DemoCloseableAppBarState extends State<DemoCloseableAppBar> {
  bool closeAppBar = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.basePaddingLarge),
          child: ComponentHeader(title: 'Closeable App Bar'),
        ),
        Visibility(
            visible: closeAppBar,
            child: Padding(
              padding:
                  const EdgeInsets.only(right: FMIThemeBase.basePaddingXLarge),
              child: ClosableAppBar(
                  title: '<- Click to close App Bar',
                  onClose: () {
                    setState(() {
                      closeAppBar = !closeAppBar;
                    });
                  },
                  onSave: () {
                    setState(() {
                      closeAppBar = !closeAppBar;
                    });
                  }),
            )),
        Visibility(
            visible: !closeAppBar,
            child: Padding(
              padding:
                  const EdgeInsets.only(right: FMIThemeBase.basePaddingXLarge),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    closeAppBar = !closeAppBar;
                  });
                },
                child: const Text('Show Closeable App Bar'),
              ),
            )),
      ],
    );
  }
}
