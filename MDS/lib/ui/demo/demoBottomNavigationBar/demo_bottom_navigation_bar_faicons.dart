import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoBottomNavigationBarFaIcons extends StatelessWidget {
  const DemoBottomNavigationBarFaIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentSubheader(title: 'With Fa Icons'),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding12),
                        child: FaIcon(
                          destinations[_currentIndex].icon,
                          size: FMIThemeBase.baseIconLarge,
                        ),
                      ),
                      FilledButton.icon(
                          icon: const FaIcon(FontAwesomeIcons.xmark),
                          label: const Text('Close Demo'),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FmiBottomNavigationBar(
        onTap: (index) {
          onNavigationItemSelected(index);
        },
        currentIndex: _currentIndex,
        destinations: destinations,
      ),
    );
  }

  void onNavigationItemSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<FmiNavigationDestination> destinations = <FmiNavigationDestination>[
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidObjectsColumn, label: 'Dashboard'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.listTree, label: 'Department'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidNewspaper, label: 'News'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidIdBadge, label: 'Services'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidGear, label: 'Settings')
  ];
}
