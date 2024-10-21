import 'package:flutter/material.dart';
import 'rnd/rec_selector.dart';
import 'rnd/chart_app.dart';

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
        primarySwatch: Colors.blue,
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
        title: const Text('UI Test Selector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  MaterialPageRoute(
                      builder: (context) =>
                          const CustomWidget()), // Use the widget from rec_selector.dart
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
