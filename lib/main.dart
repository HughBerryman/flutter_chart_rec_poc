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
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300),
          child: Column(
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
    );
  }
}
