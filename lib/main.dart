import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: FmiGenericCard(
              title: 'Navigation',
              titleTextThemeMobile: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
              titleTextThemeNotMobile: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: FMIThemeBase.basePaddingLarge),
                  FmiToggleButton(
                    text: 'Feed Blend Calculator',
                    type: FmiToggleButtonType.elevated,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FeedBlendCalculator()),
                      );
                    },
                  ),
                  SizedBox(height: FMIThemeBase.basePaddingLarge),
                  FmiToggleButton(
                    text: 'Show Chart App UI',
                    type: FmiToggleButtonType.outline,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChartApp()),
                      );
                    },
                  ),
                  SizedBox(height: FMIThemeBase.basePaddingLarge),
                  FmiToggleButton(
                    text: 'Show Rec Selector UI',
                    type: FmiToggleButtonType.outline,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RecSelector()),
                      );
                    },
                  ),
                  SizedBox(height: FMIThemeBase.basePaddingLarge),
                  FmiToggleButton(
                    text: 'Open Widgetbook POC',
                    type: FmiToggleButtonType.outline,
                    onPressed: _launchWidgetbook,
                  ),
                  SizedBox(height: FMIThemeBase.basePaddingLarge),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
