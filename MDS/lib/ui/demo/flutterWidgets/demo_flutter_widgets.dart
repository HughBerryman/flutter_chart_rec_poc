import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:poc/models/navigation/models.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';
import 'flutterWidgets.dart';

class DemoFlutterWidgets extends StatefulWidget {
  final PageSourceModel page;
  const DemoFlutterWidgets({Key? key, required this.page}) : super(key: key);

  @override
  State<DemoFlutterWidgets> createState() => _DemoFlutterWidgetsState();
}

class _DemoFlutterWidgetsState extends State<DemoFlutterWidgets> {
  final AppStateManager appStateManager = GetIt.instance.get<AppStateManager>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Flutter Widgets Page'),
          automaticallyImplyLeading: false,
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            constraints: BoxConstraints.loose(
                const Size.fromWidth(FMIThemeBase.baseContainerDimension980)),
            padding: const EdgeInsets.all(FMIThemeBase.basePaddingXLarge),
            child: const SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Display Default Expansion Panel
                    DemoExpansionPanels(),
                    // Display Default Tabs
                    DemoTabs(),
                    // Display Default Tabs No App Bar
                    DemoTabsNoAppBar(),
                    // Display Default Search
                    DemoSearch(),
                    // Display Default Navigation Drawer Modal
                    DemoNavigationDrawerModal(),
                    // Display Default Navigation Drawer Standard
                    DemoNavigationDrawerStandard(),
                    // Display Default Navigation Drawer Bottom
                    DemoNavigationDrawerBottom(),
                    // Display Checkboxes
                    DemoCheckbox(),
                    // Display Radio
                    DemoRadioFlutter(),
                    // Display Switch
                    DemoSwitch(),
                    // Display List Tile Themes
                    DemoListTileThemes(),
                    // Display Expansion Panel Themes
                    DemoExpansionPanelThemes(),
                    // Display Floating Action Button Themes
                    DemoFABThemes(),
                    // Display Dropdown Menu
                    DemoDropdownMenu()
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
