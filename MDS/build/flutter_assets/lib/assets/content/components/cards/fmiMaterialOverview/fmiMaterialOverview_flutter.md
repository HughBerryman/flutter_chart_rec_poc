**Examples**

Chart Data Example
```dart
late List<OPSData> _chartData;

@override
late List<MaterialData> _chartData;

@override
void initState() {
  _chartData = getChartData();
  super.initState();
}


List<MaterialData> getChartData() {
  final List<MaterialData> chartData = [
    MaterialData(60, 53),
    MaterialData(41, 53)
  ];
  return chartData;
}

class MaterialData {
  MaterialData(this.value, this.target);
  double value;
  double target;
}
```

` `

Fmi Material Overview Example
```dart
FmiMaterialOverview(
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
        chartMaxValue: 201,
        metric: 'kt',
        chartSubtitle: 'John Prine',
        chartSubtext: '#3939',
        avatarImg: 'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
        avatarDisplayName: 'John Prine',
      ),
      barRange: FmiKpiProgressRange(0, maxValue),
    ),
    FmiOverviewBar(
      model: FmiOverviewBarModel(
        chartTitle: "Total Material Moved",
        chartTarget: _chartData[1].target,
        chartValue: _chartData[1].value,
        chartMaxValue: 201,
        metric: 'kt',
        chartSubtitle: 'John Prine',
        chartSubtext: '#3939',
      ),
      barRange: FmiKpiProgressRange(0, maxValue),
    ),
    FmiOverviewBar(
      model: FmiOverviewBarModel(
        chartTitle: "Crush Leach Mined",
        chartTarget: _chartData[0].target,
        chartValue: _chartData[0].value,
        chartMaxValue: 201,
        metric: 'kt',
        chartSubtitle: 'John Prine',
      ),
      barRange: FmiKpiProgressRange(0, maxValue),
    ),
    FmiOverviewBar(
      model: FmiOverviewBarModel(
        chartTitle: "ROM Leach Mined",
        chartValue: _chartData[0].value,
        chartMaxValue: 201,
        metric: 'kt',
      ),
      barColor: NonTargetedBarColor.primary,
      barRange: FmiKpiProgressRange(0, maxValue),
    ),
    FmiOverviewBar(
      model: FmiOverviewBarModel(
        chartTitle: "Mill Ore Mined",
        chartValue: _chartData[0].value,
        chartMaxValue: 201,
        metric: 'kt',
      ),
      barColor: NonTargetedBarColor.onSurface,
      barRange: FmiKpiProgressRange(0, maxValue),
    ),
  ],
  overviewIcon: FontAwesomeIcons.mound,
  overviewTitle: "Load/Haul - Day Shift",
),
```

` `

Material Overview with Chips and Utilization Pie Chart
```dart
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
          chartMaxValue: 201,
          metric: 'ft',
        ),
      ),
      FmiOverviewBar(
        model: FmiOverviewBarModel(
          chartTitle: "Holes Drilled vs Plan",
          chartTarget: _chartData[0].target,
          chartValue: _chartData[0].value,
          chartMaxValue: 201,
          metric: '',
        ),
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
```

` `
  
