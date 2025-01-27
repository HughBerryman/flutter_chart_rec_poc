import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@App()
class FeedBlendCalculatorApp extends StatelessWidget {
  const FeedBlendCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) => const SizedBox();
}

@UseCase(name: 'Feed Blend Calculator', type: Widget)
Widget feedBlendCalculatorUseCase(BuildContext context) {
  return const Text('Feed Blend Calculator');
}
