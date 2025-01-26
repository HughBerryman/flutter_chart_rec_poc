import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoMaterialOverview extends StatefulWidget {
  const DemoMaterialOverview({super.key});

  @override
  State<DemoMaterialOverview> createState() => _DemoMaterialOverviewState();
}

class _DemoMaterialOverviewState extends State<DemoMaterialOverview> {
  late List<OverviewData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  static const double maxValue = 201;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Material Overview'),
        Container(
          padding: const EdgeInsets.all(FMIThemeBase.basePadding4),
          decoration: BoxDecoration(
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeAltSurfaceInverseAltSurface,
              borderRadius:
                  BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge)),
          child: Wrap(
            runSpacing: FMIThemeBase.basePadding2,
            spacing: FMIThemeBase.basePadding2,
            children: [
              SizedBox(
                width: FMIThemeBase.baseContainerDimension370,
                child: FmiMaterialOverview(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          content: Text('Pressed'),
                        );
                      },
                    );
                  },
                  menuItems: const [
                    PopupMenuItem(
                      child: Text('Menu Item 1'),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Text('Menu Item 2'),
                      value: 2,
                    ),
                  ],
                  overviewBars: [
                    FmiOverviewBar(
                      model: FmiOverviewBarModel(
                        chartTitle: "Total Material Mined",
                        chartTarget: _chartData[0].target,
                        chartValue: _chartData[0].value,
                        chartMaxValue: maxValue,
                        metric: 'kt',
                        chartSubtitle: 'John Prine',
                        chartSubtext: '#3939',
                        avatarImg:
                            'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
                        avatarDisplayName: 'John Prine',
                        chartTargetLabel: 'M. Mined',
                      ),
                      barRange: FmiKpiProgressRange(0, maxValue),
                    ),
                    FmiOverviewBar(
                      model: FmiOverviewBarModel(
                        chartTitle: "Total Material Moved",
                        chartTarget: _chartData[1].target,
                        chartValue: _chartData[1].value,
                        chartMaxValue: maxValue,
                        metric: 'kt',
                        chartSubtitle: 'John Prine',
                        chartSubtext: '#3939',
                        chartTargetLabel: 'M. Moved',
                      ),
                      barRange: FmiKpiProgressRange(0, maxValue),
                    ),
                    FmiOverviewBar(
                      model: FmiOverviewBarModel(
                        chartTitle: "Crush Leach Mined",
                        chartTarget: _chartData[0].target,
                        chartValue: _chartData[0].value,
                        chartMaxValue: maxValue,
                        metric: 'kt',
                        chartSubtitle: 'John Prine',
                      ),
                      barRange: FmiKpiProgressRange(0, maxValue),
                    ),
                    FmiOverviewBar(
                      model: FmiOverviewBarModel(
                        chartTitle: "ROM Leach Mined",
                        chartValue: _chartData[0].value,
                        chartMaxValue: maxValue,
                        metric: 'kt',
                      ),
                      barColor: NonTargetedBarColor.primary,
                      barRange: FmiKpiProgressRange(0, maxValue),
                    ),
                    FmiOverviewBar(
                      model: FmiOverviewBarModel(
                        chartTitle: "Mill Ore Mined",
                        chartValue: _chartData[0].value,
                        chartMaxValue: maxValue,
                        metric: 'kt',
                      ),
                      barColor: NonTargetedBarColor.onSurface,
                      barRange: FmiKpiProgressRange(0, maxValue),
                    ),
                  ],
                  overviewIcon: FontAwesomeIcons.mound,
                  overviewTitle: "Load/Haul - Day Shift",
                ),
              ),
              SizedBox(
                width: FMIThemeBase.baseContainerDimension370,
                child: FmiMaterialOverview(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          content: Text('Pressed'),
                        );
                      },
                    );
                  },
                  menuItems: const [
                    PopupMenuItem(
                      child: Text('Menu Item 1'),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Text('Menu Item 2'),
                      value: 2,
                    ),
                  ],
                  overviewBars: [
                    FmiOverviewBar(
                      model: FmiOverviewBarModel(
                        chartTitle: "Feet Drilled vs Plan",
                        chartTarget: _chartData[0].target,
                        chartValue: _chartData[0].value,
                        chartMaxValue: maxValue,
                        metric: 'ft',
                      ),
                      barRange: FmiKpiProgressRange(0, maxValue),
                    ),
                    FmiOverviewBar(
                      model: FmiOverviewBarModel(
                        chartTitle: "Holes Drilled vs Plan",
                        chartTarget: _chartData[0].target,
                        chartValue: _chartData[0].value,
                        chartMaxValue: maxValue,
                        metric: '',
                      ),
                      barRange: FmiKpiProgressRange(0, maxValue),
                    ),
                  ],
                  overviewIcon: FontAwesomeIcons.mound,
                  overviewTitle: "Drill/Blast - Day Shift",
                  chipSectionTitle: 'Drill Scores',
                  utilSectionTitle: 'Drill Utilization',
                  overviewChips: const [
                    FmiOverviewChip(
                      chipLabel: "Overall Score",
                      chipValue: 91.96,
                    ),
                    FmiOverviewChip(
                      chipLabel: "On Target",
                      chipValue: 3,
                    ),
                    FmiOverviewChip(
                      chipLabel: "XY Score",
                      chipValue: 98.96,
                    ),
                    FmiOverviewChip(
                      chipLabel: "Off Target",
                      chipValue: 3,
                    ),
                    FmiOverviewChip(
                      chipLabel: "Avg P-Rate",
                      chipValue: 144.85,
                    ),
                    FmiOverviewChip(
                      chipLabel: "GPS Quality",
                      chipValue: 100,
                    ),
                  ],
                  overviewUtilCharts: [
                    FmiOverviewUtilChart(
                        utilChart: FmiOverviewUtilChartModel(84, 100),
                        utilChartLabel: 'Asset Efficiency'),
                    FmiOverviewUtilChart(
                        utilChart: FmiOverviewUtilChartModel(87, 100),
                        utilChartLabel: 'Current Availability'),
                    FmiOverviewUtilChart(
                        utilChart: FmiOverviewUtilChartModel(75, 100),
                        utilChartLabel: 'Use of Availability'),
                  ],
                ),
              ),
              SizedBox(
                width: FMIThemeBase.baseContainerDimension370,
                child: FmiMaterialOverview(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          content: Text('Pressed'),
                        );
                      },
                    );
                  },
                  overviewBars: [
                    FmiOverviewBar(
                      model: FmiOverviewBarModel(
                        chartTitle: "Feet Drilled vs Plan",
                        chartTarget: _chartData[0].target,
                        chartValue: _chartData[0].value,
                        chartMaxValue: maxValue,
                        metric: 'ft',
                      ),
                      barRange: FmiKpiProgressRange(0, maxValue),
                    ),
                    FmiOverviewBar(
                      model: FmiOverviewBarModel(
                        chartTitle: "Holes Drilled vs Plan",
                        chartTarget: _chartData[0].target,
                        chartValue: _chartData[0].value,
                        chartMaxValue: maxValue,
                        metric: '',
                      ),
                      barRange: FmiKpiProgressRange(0, maxValue),
                    ),
                  ],
                  chipSectionTitle: 'Drill Scores',
                  overviewChips: const [
                    FmiOverviewChip(
                      chipLabel: "Overall Score",
                      chipValue: 91.96,
                    ),
                    FmiOverviewChip(
                      chipLabel: "On Target",
                      chipValue: 3,
                    ),
                    FmiOverviewChip(
                      chipLabel: "XY Score",
                      chipValue: 98.96,
                    ),
                    FmiOverviewChip(
                      chipLabel: "Off Target",
                      chipValue: 3,
                    ),
                    FmiOverviewChip(
                      chipLabel: "Avg P-Rate",
                      chipValue: 144.85,
                    ),
                    FmiOverviewChip(
                      chipLabel: "GPS Quality",
                      chipValue: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: FMIThemeBase.basePadding4,
              bottom: FMIThemeBase.basePadding12),
          child: ElevatedButton(
              onPressed: () {
                changeChartData();
              },
              child: const Text('Update ChartValue to Random')),
        ),
      ],
    );
  }

  List<OverviewData> getChartData() {
    List<OverviewData> chartData = [OverviewData(60, 53), OverviewData(41, 53)];
    return chartData;
  }

  changeChartData() {
    var random = Random();
    setState(() {
      _chartData[0].target = (random.nextDouble() * maxValue).floorToDouble();
      _chartData[0].value = (random.nextDouble() * maxValue).floorToDouble();
      _chartData[1].target = (random.nextDouble() * maxValue).floorToDouble();
      _chartData[1].value = (random.nextDouble() * maxValue).floorToDouble();
    });
  }
}
