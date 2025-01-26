import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoTabsNoAppBar extends StatefulWidget {
  const DemoTabsNoAppBar({Key? key}) : super(key: key);

  @override
  State<DemoTabsNoAppBar> createState() => _DemoTabsNoAppBarState();
}

class _DemoTabsNoAppBarState extends State<DemoTabsNoAppBar>
    with TickerProviderStateMixin {
  String radioValue = 'Label only';
  late TabController _tabController1;
  late TabController _tabController2;
  late TabController _tabController3;

  @override
  void initState() {
    _tabController1 = TabController(length: 3, vsync: this);
    _tabController2 = TabController(length: 3, vsync: this);
    _tabController3 = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController1.dispose();
    _tabController2.dispose();
    _tabController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ComponentHeader(title: 'Tabs Default Outside of App Bar'),
        const Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePaddingMedium,
              bottom: FMIThemeBase.basePaddingMedium),
          child: ComponentSubheaderLink(
              linkText: 'Tab Bar Flutter Documentation',
              url:
                  'https://api.flutter.dev/flutter/material/TabBar-class.html'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RadioButtonGroupWidget(
              initialValue: radioValue,
              radioOptions: const ['Label only', 'Icon only', 'Both'],
              onSelectionChanged: (value) {
                setState(() {
                  radioValue = value.toString();
                });
              },
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePaddingLarge,
                  bottom: FMIThemeBase.basePaddingLarge),
              child: Text(
                'Chosen option: $radioValue',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          child: Row(
            children: [
              FilledButton(
                child: const Text("Show Tab Bar"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              BasicTabBar(tabDisplay: radioValue.toString())));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BasicTabBar extends StatefulWidget {
  const BasicTabBar({Key? key, required this.tabDisplay}) : super(key: key);

  final String tabDisplay;

  @override
  _BasicTabBarState createState() => _BasicTabBarState();
}

class _BasicTabBarState extends State<BasicTabBar> {
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
              const Expanded(child: Text('Separate App Bar')),
            ],
          ),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(tabs: DemoTabHelper.getTabs(widget.tabDisplay)),
              const Expanded(child: DemoTabBarView())
            ],
          ),
        ));
  }
}
