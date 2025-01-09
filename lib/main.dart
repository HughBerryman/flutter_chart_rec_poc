import 'package:flutter/material.dart';
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
          seedColor: Colors.blue,
          surfaceTint: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[700],
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 12,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey[700],
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.grey[700],
            side: BorderSide(color: Colors.grey[300]!),
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFFEBF2F8),
      ),
      home: const HomeScreen(), // HomeScreen will help select between UIs
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEBF2F8),
        elevation: 0,
        title: const Text('UI Test Selector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the UI from chart_app.dart
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ChartApp()), // Use the widget from chart_app.dart
                );
              },
              child: const Text('Show Chart App UI'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the UI from rec_selector.dart
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RecSelector()),
                );
              },
              child: const Text('Show Rec Selector UI'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
