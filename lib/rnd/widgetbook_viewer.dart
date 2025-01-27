import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:device_frame/device_frame.dart';
import 'package:fmi_core/fmi_core.dart';
import 'chart_app.dart';
import 'rec_selector.dart';
import 'feed_blend_calculator.dart';

class WidgetbookViewer extends StatelessWidget {
  const WidgetbookViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      directories: [
        WidgetbookCategory(
          name: 'Components',
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
