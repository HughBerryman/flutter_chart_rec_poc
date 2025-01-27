import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:ideation/rnd/chart_app.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: ChartApp)
Widget chartAppUseCase(BuildContext context) => const ChartApp();

class ChartApp extends StatelessWidget {
  const ChartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(); // TODO: Implement chart app
  }
}
