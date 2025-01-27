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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: FMIThemeBase.basePalettePrimaryPrimary50,
            surfaceTint: FMIThemeBase.basePaletteCoolGrayCoolGray100,
          ),
          scaffoldBackgroundColor: FMIThemeBase.basePaletteCoolGrayCoolGray95,
          textTheme: TextTheme(
            displayLarge: TextStyle(
              fontSize: FMIThemeBase.baseDisplayLargeFontSize,
              fontFamily: FMIThemeBase.baseDisplayLargeFontFamily,
              fontWeight: FMIThemeBase.baseDisplayLargeFontWeight,
            ),
            displayMedium: TextStyle(
              fontSize: FMIThemeBase.baseDisplayMediumFontSize,
              fontFamily: FMIThemeBase.baseDisplayMediumFontFamily,
              fontWeight: FMIThemeBase.baseDisplayMediumFontWeight,
            ),
            displaySmall: TextStyle(
              fontSize: FMIThemeBase.baseDisplaySmallFontSize,
              fontFamily: FMIThemeBase.baseDisplaySmallFontFamily,
              fontWeight: FMIThemeBase.baseDisplaySmallFontWeight,
            ),
            headlineLarge: TextStyle(
              fontSize: FMIThemeBase.baseHeadlineLargeFontSize,
              fontFamily: FMIThemeBase.baseHeadlineLargeFontFamily,
              fontWeight: FMIThemeBase.baseHeadlineLargeFontWeight,
            ),
            headlineMedium: TextStyle(
              fontSize: FMIThemeBase.baseHeadlineMediumFontSize,
              fontFamily: FMIThemeBase.baseHeadlineMediumFontFamily,
              fontWeight: FMIThemeBase.baseHeadlineMediumFontWeight,
            ),
            headlineSmall: TextStyle(
              fontSize: FMIThemeBase.baseHeadlineSmallFontSize,
              fontFamily: FMIThemeBase.baseHeadlineSmallFontFamily,
              fontWeight: FMIThemeBase.baseHeadlineSmallFontWeight,
            ),
            titleLarge: TextStyle(
              fontSize: FMIThemeBase.baseTitleLargeFontSize,
              fontFamily: FMIThemeBase.baseTitleLargeFontFamily,
              fontWeight: FMIThemeBase.baseTitleLargeFontWeight,
            ),
            titleMedium: TextStyle(
              fontSize: FMIThemeBase.baseTitleMediumFontSize,
              fontFamily: FMIThemeBase.baseTitleMediumFontFamily,
              fontWeight: FMIThemeBase.baseTitleMediumFontWeight,
            ),
            titleSmall: TextStyle(
              fontSize: FMIThemeBase.baseTitleSmallFontSize,
              fontFamily: FMIThemeBase.baseTitleSmallFontFamily,
              fontWeight: FMIThemeBase.baseTitleSmallFontWeight,
            ),
            bodyLarge: TextStyle(
              fontSize: FMIThemeBase.baseBodyLargeFontSize,
              fontFamily: FMIThemeBase.baseBodyLargeFontFamily,
              fontWeight: FMIThemeBase.baseBodyLargeFontWeight,
            ),
            bodyMedium: TextStyle(
              fontSize: FMIThemeBase.baseBodyMediumFontSize,
              fontFamily: FMIThemeBase.baseBodyMediumFontFamily,
              fontWeight: FMIThemeBase.baseBodyMediumFontWeight,
            ),
            bodySmall: TextStyle(
              fontSize: FMIThemeBase.baseBodySmallFontSize,
              fontFamily: FMIThemeBase.baseBodySmallFontFamily,
              fontWeight: FMIThemeBase.baseBodySmallFontWeight,
            ),
          ),
        ),
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
      appBar: FmiAppBar(
        title: 'Concept Ideation',
        themeStyle: ThemeStyle.primary,
        showInternet: false,
        showSync: false,
      ),
      body: Center(
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
                      MaterialPageRoute(builder: (context) => const ChartApp()),
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
    );
  }
}
