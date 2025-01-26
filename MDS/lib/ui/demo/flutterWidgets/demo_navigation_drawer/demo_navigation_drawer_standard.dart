import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoNavigationDrawerStandard extends StatefulWidget {
  const DemoNavigationDrawerStandard({Key? key}) : super(key: key);

  @override
  State<DemoNavigationDrawerStandard> createState() =>
      _DemoNavigationDrawerStandardState();
}

class _DemoNavigationDrawerStandardState
    extends State<DemoNavigationDrawerStandard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ComponentHeader(
            title: 'Navigation Drawer Standard Default with List Tiles'),
        const Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePaddingMedium,
              bottom: FMIThemeBase.basePaddingMedium),
          child: ComponentSubheaderLink(
              linkText: 'Drawer Flutter Documentation',
              url:
                  'https://api.flutter.dev/flutter/material/Drawer-class.html'),
        ),
        SingleChildScrollView(
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
                child: FilledButton(
                  child: const Text("Show Navigation Drawer"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const _CustomPage()));
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class _CustomPage extends StatelessWidget {
  const _CustomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const FaIcon(FontAwesomeIcons.arrowLeft)),
              const Expanded(child: Text('Navigation Drawer Standard Demo')),
            ],
          ),
        ),
        body: Row(
          children: [
            const BasicDrawer(),
            Expanded(
              child: Center(
                child: FilledButton(
                    child: const Text('Click to Escape Demo'),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ),
          ],
        ));
  }
}
