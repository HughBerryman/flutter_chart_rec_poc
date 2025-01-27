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
import 'models/lot_data.dart';

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

    // Mock lots data
    final mockLots = [
      LotData(
        id: '1',
        location: 'Morenci',
        elements: {
          'Cu': 25.5,
          'Fe': 30.2,
          'Au': 2.1,
        },
        selectedBags: 50,
        isExpanded: false,
        barcodePrefix: 'MOR',
        lbsPerBag: 2000,
      ),
      LotData(
        id: '2',
        location: 'Bagdad',
        elements: {
          'Cu': 22.1,
          'Fe': 28.5,
          'Au': 1.8,
        },
        selectedBags: 0,
        isExpanded: false,
        barcodePrefix: 'BAG',
        lbsPerBag: 2000,
      ),
    ];

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
          isInitiallyExpanded: true,
          children: [
            WidgetbookFolder(
              name: 'Screens',
              children: [
                WidgetbookComponent(
                  name: 'Feed Blend Calculator',
                  isInitiallyExpanded: false,
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
                  name: 'Feed Parameters',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => FeedParametersSection(
                        feedRate: 5,
                        sieProduction: 6,
                        onFeedRateChanged: mockDoubleCallback,
                        onSieProductionChanged: mockDoubleCallback,
                        onStartDateChanged: mockDateCallback,
                        onTargetEndDateChanged: mockDateCallback,
                      ),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Feed Material Assays',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Empty State',
                      builder: (context) => FeedMaterialAssays(
                        lots: const [],
                        showSelected: context.knobs.boolean(
                          label: 'Show Selected',
                          initialValue: false,
                        ),
                        selectedLocations: {'All Locations'},
                        selectedSort: null,
                        onShowSelectedChanged: mockBoolCallback,
                        onLocationsChanged: mockSetStringCallback,
                        onSortChanged: mockStringCallback,
                        onBagsChanged: mockBagCallback,
                        onExpandChanged: mockExpandCallback,
                        onAssayValuesChanged: mockAssayCallback,
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'With Data',
                      builder: (context) => FeedMaterialAssays(
                        lots: mockLots,
                        showSelected: context.knobs.boolean(
                          label: 'Show Selected',
                          initialValue: false,
                        ),
                        selectedLocations: {'All Locations'},
                        selectedSort: context.knobs.boolean(
                          label: 'Enable Sorting',
                          initialValue: false,
                        )
                            ? 'Sort by In Spec'
                            : null,
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
                WidgetbookComponent(
                  name: 'Right Panel',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) {
                        final hasData = context.knobs.boolean(
                          label: 'Has Data',
                          description:
                              'Toggle between empty and with-data states',
                          initialValue: false,
                        );

                        return RightPanel(
                          lots: hasData
                              ? [
                                  // Add mock data when hasData is true
                                ]
                              : const [],
                          width: 300,
                          onWidthChanged: mockDoubleCallback,
                          feedRate: 5,
                          sieProduction: 6,
                        );
                      },
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
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'Other Components',
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
            // Large Screens
            Devices.macOS.macBookPro,
            Devices.linux.laptop,
            // Tablets
            Devices.ios.iPadPro11Inches,
            Devices.ios.iPadAir4,
            // Mobile Devices
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
