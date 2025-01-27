import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
// Import the widget from your app
import 'package:ideation/rnd/chart_app.dart';

@widgetbook.UseCase(name: 'Default', type: ChartApp)
Widget buildChartAppUseCase(BuildContext context) {
  return const ChartApp();
}
