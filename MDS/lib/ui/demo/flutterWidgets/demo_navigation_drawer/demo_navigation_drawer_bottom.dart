import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoNavigationDrawerBottom extends StatefulWidget {
  const DemoNavigationDrawerBottom({Key? key}) : super(key: key);

  @override
  State<DemoNavigationDrawerBottom> createState() =>
      _DemoNavigationDrawerBottomState();
}

class _DemoNavigationDrawerBottomState
    extends State<DemoNavigationDrawerBottom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ComponentHeader(
            title: 'Navigation Drawer Bottom Default with List Tiles'),
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

class _CustomPage extends StatefulWidget {
  const _CustomPage({Key? key}) : super(key: key);

  @override
  State<_CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<_CustomPage> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Navigation Drawer Bottom Demo'),
        automaticallyImplyLeading: false,
      ),
      drawer: const BasicDrawer(),
      body: Center(
        child: FilledButton(
            child: const Text('Click to Escape Demo'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bars), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: 'Home')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0 && _scaffoldKey.currentState != null) {
        _scaffoldKey.currentState!.openDrawer();
      }
    });
  }
}
