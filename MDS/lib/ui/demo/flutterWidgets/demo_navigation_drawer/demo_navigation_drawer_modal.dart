import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoNavigationDrawerModal extends StatefulWidget {
  const DemoNavigationDrawerModal({Key? key}) : super(key: key);

  @override
  State<DemoNavigationDrawerModal> createState() =>
      _DemoNavigationDrawerModalState();
}

class _DemoNavigationDrawerModalState extends State<DemoNavigationDrawerModal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ComponentHeader(
            title: 'Navigation Drawer Modal Default with List Tiles'),
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
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const FaIcon(FontAwesomeIcons.bars)),
              const Expanded(child: Text('Navigation Drawer Modal Demo')),
            ],
          ),
        ),
        drawer: const BasicDrawer(),
        body: Center(
          child: FilledButton(
              child: const Text('Click to Escape Demo'),
              onPressed: () {
                Navigator.pop(context);
              }),
        ));
  }
}
