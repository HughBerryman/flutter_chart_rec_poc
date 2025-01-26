import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:poc/ui/demo/demo.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoBottomNavigationBarSvgs extends StatelessWidget {
  const DemoBottomNavigationBarSvgs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentSubheader(title: 'With Svgs'),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePaddingLarge,
                  bottom: FMIThemeBase.basePaddingLarge),
              child: FilledButton(
                child: const Text("Show Bottom Navigation Bar"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const _CustomPage()));
                },
              ),
            )
          ],
        )
      ],
    );
  }
}

class _CustomPage extends StatefulWidget {
  const _CustomPage({Key? key}) : super(key: key);

  @override
  State<_CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<_CustomPage> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar Demo'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: FilledButton.icon(
                      icon: const FaIcon(FontAwesomeIcons.xmark),
                      label: const Text('Close Demo'),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FmiBottomNavigationBar(
        onTap: (int index) => setState(() {
          _currentIndex = index;
        }),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        destinations: destinations,
      ),
    );
  }

  List<FmiNavigationDestination> destinations = <FmiNavigationDestination>[
    FmiNavigationDestination(
        svgAsset: SvgAsset(
            assetName: 'assets/images/misc-svgs/department.svg',
            package: 'fmi_core'),
        label: 'Department'),
    FmiNavigationDestination(
        svgAsset: SvgAsset(
            assetName: 'assets/images/misc-svgs/news.svg', package: 'fmi_core'),
        selectedSvgAsset: SvgAsset(
            assetName: 'assets/images/misc-svgs/department.svg',
            package: 'fmi_core'),
        label: 'News'),
  ];
}
