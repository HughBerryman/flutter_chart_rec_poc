import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
// Import the widget from your app
import 'package:flutter_chart_app/rnd/rec_selector.dart';

@widgetbook.UseCase(name: 'Default', type: RecSelector)
Widget buildCustomWidgetUseCase(BuildContext context) {
  return const RecSelector();
}
