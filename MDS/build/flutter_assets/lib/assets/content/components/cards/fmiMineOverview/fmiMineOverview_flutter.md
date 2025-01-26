**Examples**

Chart Data Example
```dart
late List<OPSData> _chartData;

@override
void initState() {
  _chartData = getChartData();
  super.initState();
}

List<OPSData> getChartData() {
    final List<OPSData> chartData = [OPSData('', 60)];
    return chartData;
}

class OPSData {
  OPSData(this.metric, this.value);
  final String metric;
  final int value;
}
```

` `

Fmi Mine Overview Example
```dart                                   
FmiMineOverview(
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
        chartTitle: "Crusher 1",
        chartMaxValue: maxValue,
        metric: 'kt',
        chartValue: _chartData[0].value,
        chartTarget: _chartData[0].target,
      ),
      barRange: FmiKpiProgressRange(0, maxValue),
    ),
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
  ],
  overviewIcon: FontAwesomeIcons.chartBar,
  overviewTitle: "Morenci - 7/22",
  trailing: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
          child: FmiMineScorecard(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                content: Text('Scorecard 1 Pressed'),
              );
            },
          );
        },
        title: "211.35",
        metric: "Material Mined (kt)",
        target: 56,
        value: 60,
      )),
      Expanded(
          child: Padding(
        padding: const EdgeInsets.only(
            left: FMIThemeBase.basePadding2,
            right: FMIThemeBase.basePadding1),
        child: FmiMineScorecard(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  content: Text('Scorecard 2 Pressed'),
                );
              },
            );
          },
          title: "68.74%",
          metric: "Mine Productivity",
          target: 56,
          value: 60,
        ),
      )),
      Expanded(
          child: Padding(
        padding: const EdgeInsets.only(
            left: FMIThemeBase.basePadding1,
            right: FMIThemeBase.basePadding2),
        child: FmiMineScorecard(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  content: Text('Scorecard 3 Pressed'),
                );
              },
            );
          },
          title: "6.25",
          metric: "Delta C (min)",
          target: 60,
          value: 56,
        ),
      )),
      Expanded(
          child: FmiMineScorecard(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                content: Text('Scorecard 4 Pressed'),
              );
            },
          );
        },
        title: "402.67",
        metric: "Equiv Flat Haul (ft)",
        target: 0,
        value: 0,
      )),
    ],
  ),
),
```

` `
  
