import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:ideation/rnd/rec_selector.dart';

@widgetbook.UseCase(name: 'Default', type: RecSelector)
Widget buildRecSelectorUseCase(BuildContext context) {
  // Use knobs to create interactive controls
  final bool isEnabled =
      context.knobs.boolean(label: "Is Enabled", initialValue: true);
  final String title = context.knobs.string(
    label: "Title",
    initialValue: "Sample Title",
  );
  final Color color = context.knobs.color(
    label: "Color",
    initialValue: Colors.blue,
  );

  return RecSelector(
    isEnabled: isEnabled,
    title: title,
    color: color,
  );
}
