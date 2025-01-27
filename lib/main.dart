import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'rnd/rec_selector.dart';
import 'rnd/chart_app.dart';
import 'rnd/feed_blend_calculator.dart';

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

  final List<FmiNavigationDestination> _destinations = [
    FmiNavigationDestination(
      icon: FontAwesomeIcons.calculator,
      label: 'Feed Blend Calculator',
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
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FeedBlendCalculator()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ChartApp()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RecSelector()),
        );
        break;
      case 3:
        _launchWidgetbook();
        break;
    }
  }

  Future<void> _launchWidgetbook() async {
    final Uri url = Uri.parse(
        'https://cdn.widgetbook.io/52cd824d-bf7d-486d-9afb-ccbdfaf82437/00c181cf-dada-4a5a-9cd7-84921d6d3dd5/builds/cedb9e22-4506-46ec-ab49-e9a332a9b690/index.html');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          if (context.isLarge || context.isMedium)
            FmiNavigationRail(
              selectedIndex: _selectedIndex,
              destinations: _destinations,
              onDestinationSelected: _onDestinationSelected,
              showElevation: true,
            ),
          const Expanded(
            child: Center(
              child: Text('Select an option from the navigation'),
            ),
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
