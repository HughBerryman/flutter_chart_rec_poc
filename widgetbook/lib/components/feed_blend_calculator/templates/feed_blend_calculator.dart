import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:ideation/rnd/feed_blend_calculator.dart';

@widgetbook.UseCase(name: 'Default', type: FeedBlendCalculator)
Widget feedBlendCalculatorUseCase(BuildContext context) =>
    const FeedBlendCalculator();
