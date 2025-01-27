import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fmi_core/fmi_core.dart';
import 'rnd/rec_selector.dart';
import 'rnd/chart_app.dart';
import 'rnd/feed_blend_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Tester',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: FMIThemeBase.basePalettePrimaryPrimary50,
          surfaceTint: FMIThemeBase.basePaletteCoolGrayCoolGray100,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: FMIThemeBase.basePalettePrimaryPrimary50,
            foregroundColor: FMIThemeBase.basePaletteCoolGrayCoolGray100,
            padding: EdgeInsets.symmetric(
              horizontal: FMIThemeBase.basePaddingXLarge,
              vertical: FMIThemeBase.basePaddingMedium,
            ),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: FMIThemeBase.basePaletteCoolGrayCoolGray50,
            padding: EdgeInsets.symmetric(
              horizontal: FMIThemeBase.basePaddingXLarge,
              vertical: FMIThemeBase.basePaddingMedium,
            ),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: FMIThemeBase.basePaletteCoolGrayCoolGray50,
            side: BorderSide(color: FMIThemeBase.basePaletteCoolGrayCoolGray30),
            padding: EdgeInsets.symmetric(
              horizontal: FMIThemeBase.basePaddingXLarge,
              vertical: FMIThemeBase.basePaddingMedium,
            ),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium),
            ),
          ),
        ),
        scaffoldBackgroundColor: FMIThemeBase.basePaletteCoolGrayCoolGray95,
      ),
      home: const HomeScreen(),
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
      appBar: AppBar(
        backgroundColor: FMIThemeBase.basePaletteCoolGrayCoolGray95,
        elevation: 0,
        title: Text(
          'Concept Ideation',
          style: TextStyle(
            color: FMIThemeBase.basePalettePrimaryPrimary50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: FMIThemeBase.basePaddingLarge),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FeedBlendCalculator()),
                );
              },
              child: const Text('Feed Blend Calculator'),
            ),
            SizedBox(height: FMIThemeBase.basePaddingLarge),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChartApp()),
                );
              },
              child: const Text('Show Chart App UI'),
            ),
            SizedBox(height: FMIThemeBase.basePaddingLarge),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RecSelector()),
                );
              },
              child: const Text('Show Rec Selector UI'),
            ),
            SizedBox(height: FMIThemeBase.basePaddingLarge),
            OutlinedButton(
              onPressed: _launchWidgetbook,
              child: const Text('Open Widgetbook POC'),
            ),
            SizedBox(height: FMIThemeBase.basePaddingLarge),
          ],
        ),
      ),
    );
  }
}
