import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:device_frame/device_frame.dart';
import 'package:fmi_core/fmi_core.dart';

import 'chart_app.dart';
import 'rec_selector.dart';
import 'feed_blend_calculator.dart';
import 'welcome_page.dart';
import 'feed_blend_calculator/components/right_panel.dart';
import 'feed_blend_calculator/components/feed_app_bar.dart';
import 'feed_blend_calculator/components/feed_parameters_section.dart';
import 'feed_blend_calculator/components/feed_material_assays.dart';
import 'feed_blend_calculator/models/lot.dart';

class WidgetbookViewer extends StatelessWidget {
  const WidgetbookViewer({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for the widgets
    final mockVoidCallback = () {};
    final mockDoubleCallback = (double value) {};
    final mockDateCallback = (DateTime? date) {};
    final mockSetStringCallback = (Set<String> value) {};
    final mockStringCallback = (String? value) {};
    final mockBagCallback = (String id, int value) {};
    final mockExpandCallback = (String id, bool value) {};
    final mockAssayCallback = (String id, Map<String, double> value) {};
    final mockBoolCallback = (bool value) {};

    return Widgetbook(
      initialRoute: 'welcome/welcome-page',
      directories: [
        WidgetbookComponent(
          name: 'Welcome',
          isInitiallyExpanded: true,
          useCases: [
            WidgetbookUseCase(
              name: 'Welcome Page',
              builder: (context) => const WelcomePage(),
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'Feed Blend Calculator',
          isInitiallyExpanded: false,
          children: [
            WidgetbookFolder(
              name: 'Screens',
              children: [
                WidgetbookComponent(
                  name: 'Feed Blend Calculator',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => const FeedBlendCalculator(),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'Widgets',
              children: [
                WidgetbookComponent(
                  name: 'Right Panel',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => RightPanel(
                        lots: const [],
                        width: 300,
                        onWidthChanged: mockDoubleCallback,
                        feedRate: 100,
                        sieProduction: 200,
                      ),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Feed App Bar',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => FeedAppBar(
                        selectedLotCount: 0,
                        totalLotCount: 10,
                        onViewSaved: mockVoidCallback,
                        onSaveStrategy: mockVoidCallback,
                        onExport: mockVoidCallback,
                        isPanelVisible: true,
                        onPanelToggle: mockVoidCallback,
                      ),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Feed Parameters',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => FeedParametersSection(
                        feedRate: 100,
                        sieProduction: 200,
                        onFeedRateChanged: mockDoubleCallback,
                        onSieProductionChanged: mockDoubleCallback,
                        onStartDateChanged: mockDateCallback,
                        onTargetEndDateChanged: mockDateCallback,
                      ),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Material Assays',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => FeedMaterialAssays(
                        lots: const [],
                        showSelected: true,
                        selectedLocations: <String>{},
                        selectedSort: null,
                        onShowSelectedChanged: mockBoolCallback,
                        onLocationsChanged: mockSetStringCallback,
                        onSortChanged: mockStringCallback,
                        onBagsChanged: mockBagCallback,
                        onExpandChanged: mockExpandCallback,
                        onAssayValuesChanged: mockAssayCallback,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'Components',
          isInitiallyExpanded: false,
          children: [
            WidgetbookComponent(
              name: 'Chart App',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => const ChartApp(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Rec Selector',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => const RecSelector(),
                ),
              ],
            ),
          ],
        ),
      ],
      addons: [
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13,
            Devices.ios.iPhone13ProMax,
            Devices.android.samsungGalaxyS20,
          ],
        ),
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: FmiThemeLight.fmiThemeDataLight,
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: FmiThemeDark.fmiThemeDataDark,
            ),
          ],
        ),
        TextScaleAddon(
          scales: [1.0, 1.5, 2.0],
        ),
      ],
      appBuilder: (context, child) {
        return MaterialApp(
          theme: FmiThemeLight.fmiThemeDataLight,
          darkTheme: FmiThemeDark.fmiThemeDataDark,
          home: child,
        );
      },
    );
  }
}
