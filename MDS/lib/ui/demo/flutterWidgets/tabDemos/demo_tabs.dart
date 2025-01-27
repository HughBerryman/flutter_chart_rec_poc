import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoTabs extends StatefulWidget {
  const DemoTabs({Key? key}) : super(key: key);

  @override
  State<DemoTabs> createState() => _DemoTabsState();
}

class _DemoTabsState extends State<DemoTabs> with TickerProviderStateMixin {
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
        const ComponentHeader(title: 'Tabs Default with App Bar'),
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
                              BasicAppBar(tabDisplay: radioValue.toString())));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BasicAppBar extends StatefulWidget {
  const BasicAppBar({Key? key, required this.tabDisplay}) : super(key: key);

  final String tabDisplay;

  @override
  _BasicAppBarState createState() => _BasicAppBarState();
}

class _BasicAppBarState extends State<BasicAppBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const FaIcon(FontAwesomeIcons.arrowLeft)),
                const Expanded(child: Text('App Bar with Tab Bar')),
              ],
            ),
            bottom: TabBar(tabs: DemoTabHelper.getTabs(widget.tabDisplay)),
          ),
          body: const DemoTabBarView()),
    );
  }
}
