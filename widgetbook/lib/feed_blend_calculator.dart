import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:fmi_core/fmi_core.dart';
import 'package:ideation/rnd/feed_blend_calculator/components/feed_app_bar.dart';
import 'package:ideation/rnd/feed_blend_calculator/components/feed_parameters_section.dart';
import 'package:ideation/rnd/feed_blend_calculator/components/feed_parameters.dart';
import 'package:ideation/rnd/feed_blend_calculator/components/lots_section.dart';
import 'package:ideation/rnd/feed_blend_calculator/components/right_panel.dart';

@widgetbook.Component(
  name: 'Feed Blend Calculator',
)
class FeedBlendCalculatorComponents extends StatelessWidget {
  const FeedBlendCalculatorComponents({super.key});

  @override
  Widget build(BuildContext context) => const SizedBox();
}

@widgetbook.UseCase(
  name: 'Feed App Bar',
  type: FeedAppBar,
)
Widget feedAppBarUseCase(BuildContext context) {
  return Theme(
    data: FmiThemeLight.fmiThemeDataLight,
    child: Theme(
      data: FmiAppBarTheme.inverseAltSurface(context),
      child: Scaffold(
        appBar: FeedAppBar(
          selectedLotCount: 3,
          totalLotCount: 10,
          onViewSaved: () {},
          onSaveStrategy: () {},
          onExport: () {},
          isPanelVisible: true,
          onPanelToggle: () {},
        ),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Feed Parameters Section',
  type: FeedParametersSection,
)
Widget feedParametersSectionUseCase(BuildContext context) {
  return Theme(
    data: FmiThemeLight.fmiThemeDataLight,
    child: Theme(
      data: FmiListTileTheme.altSurface(context),
      child: Scaffold(
        body: FeedParametersSection(
          feedRate: 5.0,
          sieProduction: 40.0,
          projectedStartDate: DateTime.now(),
          targetEndDate: DateTime.now().add(const Duration(days: 4)),
          onFeedRateChanged: (_) {},
          onSieProductionChanged: (_) {},
          onStartDateChanged: (_) {},
          onTargetEndDateChanged: (_) {},
        ),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Right Panel',
  type: RightPanel,
)
Widget rightPanelUseCase(BuildContext context) {
  return Theme(
    data: FmiThemeLight.fmiThemeDataLight,
    child: Theme(
      data: FmiListTileTheme.altSurface(context),
      child: Scaffold(
        body: RightPanel(
          width: 400,
          onWidthChanged: (_) {},
          lots: const [],
          feedRate: 5.0,
          sieProduction: 40.0,
          projectedStartDate: DateTime.now(),
          targetEndDate: DateTime.now().add(const Duration(days: 4)),
        ),
      ),
    ),
  );
}
