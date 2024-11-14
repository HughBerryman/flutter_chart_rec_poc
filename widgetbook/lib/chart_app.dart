import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook/widgetbook.dart'; // Import widgetbook for knobs
import 'package:flutter_chart_app/rnd/chart_app.dart';

@widgetbook.UseCase(name: 'Default', type: ChartApp)
Widget buildCustomWidgetUseCase(BuildContext context) {
  // Create a knob for the chart title
  final String chartTitle = context.knobs.string(
    label: 'Chart Title',
  );

  return ChartApp(chartTitle: chartTitle);
}
