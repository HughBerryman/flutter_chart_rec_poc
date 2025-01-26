import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoOverviewBar extends StatefulWidget {
  const DemoOverviewBar({super.key});

  @override
  State<DemoOverviewBar> createState() => _DemoOverviewBarState();
}

class _DemoOverviewBarState extends State<DemoOverviewBar> {
  late List<OverviewData> _chartData;
  static const double maxValue = 100;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Overview Bar'),
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
        FmiOverviewBar(
          model: FmiOverviewBarModel(
            chartTitle: "Crusher 2",
            chartMaxValue: maxValue,
            metric: 'kt',
            chartValue: _chartData[1].value,
            chartTarget: _chartData[1].target,
          ),
          barRange: FmiKpiProgressRange(0, maxValue),
        ),
        FmiOverviewBar(
          model: FmiOverviewBarModel(
              chartTitle: "Chart Title",
              chartTarget: _chartData[0].target,
              chartValue: _chartData[0].value,
              metric: 'kt',
              chartMaxValue: maxValue,
              chartSubtitle: 'subtitle',
              chartSubtext: 'subtext',
              avatarImg:
                  'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
              avatarDisplayName: 'Bob Jancoski',
              chartTargetLabel: 'Target'),
          barRange: FmiKpiProgressRange(0, maxValue),
        ),
        FmiOverviewBar(
          model: FmiOverviewBarModel(
              chartTitle: "Chart Title",
              chartValue: _chartData[0].value,
              metric: 'kt',
              chartMaxValue: maxValue,
              chartSubtitle: 'subtitle',
              chartSubtext: 'subtext',
              avatarDisplayName: 'Bob Jancoski',
              chartTargetLabel: 'label'),
          barRange: FmiKpiProgressRange(0, maxValue),
        ),
        FmiOverviewBar(
          model: FmiOverviewBarModel(
              chartTitle: "Chart Title",
              chartValue: _chartData[0].value,
              metric: 'kt',
              chartMaxValue: maxValue,
              chartSubtitle: 'subtitle',
              chartSubtext: 'subtext',
              avatarDisplayName: 'Bob Jancoski',
              chartTargetLabel: 'label'),
          barRange: FmiKpiProgressRange(0, maxValue),
          barColor: NonTargetedBarColor.onSurface,
        ),
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
      ],
    );
  }

  List<OverviewData> getChartData() {
    final List<OverviewData> chartData = [
      OverviewData(60, 40),
      OverviewData(30, 50)
    ];
    return chartData;
  }
}
