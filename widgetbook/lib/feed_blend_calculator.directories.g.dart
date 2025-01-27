// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ideation_widgetbook/chart_app.dart' as _i2;
import 'package:ideation_widgetbook/feed_blend_calculator.dart' as _i4;
import 'package:ideation_widgetbook/rec_selector.dart' as _i3;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'rnd',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'ChartApp',
        useCase: _i1.WidgetbookUseCase(
          name: 'Default',
          builder: _i2.buildChartAppUseCase,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'RecSelector',
        useCase: _i1.WidgetbookUseCase(
          name: 'Default',
          builder: _i3.buildRecSelectorUseCase,
        ),
      ),
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'Widget',
        useCase: _i1.WidgetbookUseCase(
          name: 'Feed Blend Calculator',
          builder: _i4.feedBlendCalculatorUseCase,
        ),
      )
    ],
  ),
];
