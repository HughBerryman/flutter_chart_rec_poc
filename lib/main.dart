import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'rnd/rec_selector.dart';
import 'rnd/chart_app.dart';
import 'rnd/feed_blend_calculator.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:device_frame/device_frame.dart';

void main() {
  // Initialize GetIt
  final getIt = GetIt.instance;

  // Register InternetConnectivityProvider
  final provider = InternetConnectivityProviderImpl();
  provider.initialize();
  getIt.registerSingleton<InternetConnectivityProvider>(provider);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: CoreInit.getProviders(context),
      child: MaterialApp(
        title: 'UI Tester',
        theme: FmiThemeLight.fmiThemeDataLight,
        home: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  Widget _getSelectedContent() {
    switch (_selectedIndex) {
      case 0:
        return const FeedBlendCalculator();
      case 1:
        return const ChartApp();
      case 2:
        return const RecSelector();
      case 3:
        return Widgetbook(
          directories: [
            WidgetbookCategory(
              name: 'Components',
              children: [
                WidgetbookComponent(
                  name: 'Feed Blend Calculator',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => const FeedBlendCalculator(),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Chart App',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => const ChartApp(),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Rec Selector',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => const RecSelector(),
                    ),
                  ],
                ),
              ],
            ),
          ],
          addons: [
            DeviceFrameAddon(
              devices: [
                Devices.ios.iPhone13,
                Devices.ios.iPhone13ProMax,
                Devices.android.samsungGalaxyS20,
              ],
            ),
            MaterialThemeAddon(
              themes: [
                WidgetbookTheme(
                  name: 'Light',
                  data: FmiThemeLight.fmiThemeDataLight,
                ),
                WidgetbookTheme(
                  name: 'Dark',
                  data: FmiThemeDark.fmiThemeDataDark,
                ),
              ],
            ),
            TextScaleAddon(
              scales: [1.0, 1.5, 2.0],
            ),
          ],
          appBuilder: (context, child) {
            return MaterialApp(
              theme: FmiThemeLight.fmiThemeDataLight,
              darkTheme: FmiThemeDark.fmiThemeDataDark,
              home: child,
            );
          },
        );
      default:
        return const SizedBox();
    }
  }

  final List<FmiNavigationDestination> _destinations = [
    FmiNavigationDestination(
      icon: FontAwesomeIcons.calculator,
      label: 'Simulator',
    ),
    FmiNavigationDestination(
      icon: FontAwesomeIcons.chartLine,
      label: 'Chart App',
    ),
    FmiNavigationDestination(
      icon: FontAwesomeIcons.list,
      label: 'Rec Selector',
    ),
    FmiNavigationDestination(
      icon: FontAwesomeIcons.book,
      label: 'Widgetbook',
    ),
  ];

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          if (context.isLarge || context.isMedium)
            Theme(
              data: FmiThemeDark.fmiThemeDataDark,
              child: FmiNavigationRail(
                selectedIndex: _selectedIndex,
                destinations: _destinations,
                onDestinationSelected: _onDestinationSelected,
                showElevation: true,
              ),
            ),
          Expanded(
            child: _getSelectedContent(),
          ),
        ],
      ),
      bottomNavigationBar: (context.isXSmall || context.isSmall)
          ? FmiBottomNavigationBar(
              destinations: _destinations,
              currentIndex: _selectedIndex,
              onTap: _onDestinationSelected,
              showSelectedLabels: true,
              showUnselectedLabels: true,
            )
          : null,
    );
  }
}
