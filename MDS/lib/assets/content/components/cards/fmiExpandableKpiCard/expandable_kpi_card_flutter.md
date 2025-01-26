**Examples**

Variables & Functions Used
```dart
late List<DataChart> dataChart;
late List<FmiExpandableKpiScorecard> kpiScorecards;
late int dividerCounter;
late int rows;
late int cols;
@override
void initState() {
  dataChart = [
    DataChart(2010, 15),
    DataChart(2011, 25),
    DataChart(2012, 20),
    DataChart(2013, 30),
    DataChart(2014, 20),
  ];
  kpiScorecards = [
    FmiExpandableKpiScorecard(
      kpiScorecard: const FmiKpiScorecard(
          metric: '1.02',
          lineTwo: 'of 12',
          lineThree: '# of Dumps',
          metricColor: FmiKpiScorecardColor.success),
      graph: dataChart,
    ),
    FmiExpandableKpiScorecard(
      kpiScorecard: const FmiKpiScorecard(
          metric: '2.18',
          lineTwo: '5 min',
          lineThree: 'Idle Delta C',
          metricColor: FmiKpiScorecardColor.success),
      graph: dataChart,
    ),
    FmiExpandableKpiScorecard(
      kpiScorecard: const FmiKpiScorecard(
          metric: '3.59',
          lineTwo: '5 min',
          lineThree: 'Delta C',
          metricColor: FmiKpiScorecardColor.success),
      graph: dataChart,
    ),
    FmiExpandableKpiScorecard(
      kpiScorecard: const FmiKpiScorecard(
          metric: '4.12',
          lineTwo: 'of 6',
          lineThree: '# of Dumps',
          metricColor: FmiKpiScorecardColor.success),
      graph: dataChart,
    ),
    FmiExpandableKpiScorecard(
      kpiScorecard: const FmiKpiScorecard(
          metric: '5.62',
          lineTwo: '5 min',
          lineThree: 'Idle Delta C',
          metricColor: FmiKpiScorecardColor.success),
      graph: dataChart,
    ),
    FmiExpandableKpiScorecard(
      kpiScorecard: const FmiKpiScorecard(
          metric: '6.04',
          lineTwo: '5 min',
          lineThree: 'Delta C',
          metricColor: FmiKpiScorecardColor.success),
      graph: dataChart,
    ),
    FmiExpandableKpiScorecard(
      kpiScorecard: const FmiKpiScorecard(
          metric: '7.37',
          lineTwo: 'of 6',
          lineThree: '# of Dumps',
          metricColor: FmiKpiScorecardColor.success),
      graph: dataChart,
    ),
    FmiExpandableKpiScorecard(
      kpiScorecard: const FmiKpiScorecard(
          metric: '8.44',
          lineTwo: '5 min',
          lineThree: 'Idle Delta C',
          metricColor: FmiKpiScorecardColor.success),
      graph: dataChart,
    ),
    FmiExpandableKpiScorecard(
      kpiScorecard: const FmiKpiScorecard(
          metric: '9.99',
          lineTwo: '5 min',
          lineThree: 'Delta C',
          metricColor: FmiKpiScorecardColor.success),
      graph: dataChart,
    ),
  ];

  // Modify cols to change column length (either 2 or 3)
  cols = 3;
  rows = kpiScorecards.length ~/ cols;
  if (cols < 3) {
    dividerCounter = 1;
  } else {
    dividerCounter = 2;
  }
  super.initState();
}

int getDividerCounter() {
  if (dividerCounter == 0) {
    if (cols < 3) {
      dividerCounter = 1;
    } else {
      dividerCounter = 2;
    }
    return 0;
  } else {
    dividerCounter--;
    return 1;
  }
}
```


Inside Build Function
```dart
List<List<FmiExpandableKpiScorecard>> kpiArr = [];
for (int i = 0; i < rows; i++) {
  kpiArr.add(List<FmiExpandableKpiScorecard>.empty(growable: true));
}
int kpiArrIndex = 0;
for (int i = 0; i < rows; i++) {
  for (int j = 0; j < cols; j++) {
    kpiArr[i].add(kpiScorecards[kpiArrIndex++]);
  }
}
return Container(
  color: Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceAltSurface,
  constraints: BoxConstraints.loose(const Size.fromWidth(700)),
  padding: const EdgeInsets.all(FMIThemeBase.basePaddingXLarge),
  child: SingleChildScrollView(
    child: Column(
      children: [
        Container(
          FMIThemeBase.baseContainerDimension300,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: kpiScorecards.length ~/ cols,
              itemBuilder: ((context, rowIndex) {
                return Column(
                  children: [
                    GridView.builder(
                        clipBehavior: Clip.none,
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: cols,
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: FMIThemeBase.basePadding0,
                                mainAxisSpacing: FMIThemeBase.basePadding0,
                                crossAxisCount: kpiArr[rowIndex].length),
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Visibility(
                                    visible: (dividerCounter > 0),
                                    child: const SizedBox(
                                      width: FMIThemeBase.basePadding5,
                                    ),
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (kpiArr[rowIndex][index]
                                                      .isShown ==
                                                  true) {
                                                kpiArr[rowIndex][index]
                                                    .isShown = false;
                                              } else {
                                                for (int i = 0;
                                                    i < rows;
                                                    i++) {
                                                  for (int j = 0;
                                                      j < cols;
                                                      j++) {
                                                    kpiArr[i][j].isShown =
                                                        false;
                                                  }
                                                }
                                                kpiArr[rowIndex][index]
                                                        .isShown =
                                                    !(kpiArr[rowIndex]
                                                            [index]
                                                        .isShown!);
                                              }
                                            });
                                          },
                                          child: kpiArr[rowIndex][index]
                                              .kpiScorecard),
                                    ],
                                  ),
                                  (getDividerCounter() == 1)
                                      ? Padding(
                                          padding:
                                              const EdgeInsets.symmetric(
                                                  vertical: FMIThemeBase
                                                      .basePadding12),
                                          child: VerticalDivider(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondaryContainer,
                                          ),
                                        )
                                      : Container()
                                ],
                              ),
                              Positioned(
                                  bottom: -8,
                                  left: 0,
                                  right: 0,
                                  child: Divider(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondaryContainer,
                                  )),
                              Visibility(
                                visible:
                                    kpiArr[rowIndex][index].isShown == true,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: FaIcon(
                                    FontAwesomeIcons.solidTriangle,
                                    size: FMIThemeBase.baseIconXSmall,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondaryContainer,
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
                    ListView.builder(
                      itemBuilder: ((context, index) {
                        return Visibility(
                            visible:
                                kpiArr[rowIndex][index].isShown ?? false,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: FMIThemeBase.basePadding4),
                                  child: SfCartesianChart(
                                    plotAreaBorderColor: Colors.transparent,
                                    borderColor: Colors.transparent,
                                    primaryXAxis: NumericAxis(
                                      rangePadding: ChartRangePadding.auto,
                                    ),
                                    primaryYAxis: NumericAxis(
                                      rangePadding:
                                          ChartRangePadding.additional,
                                    ),
                                    series: <CartesianSeries>[
                                      LineSeries<DataChart, int>(
                                        dataSource: dataChart,
                                        xValueMapper: (DataChart data, _) =>
                                            data.x,
                                        yValueMapper: (DataChart data, _) =>
                                            data.y,
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondaryContainer)
                              ],
                            ));
                      }),
                      shrinkWrap: true,
                      itemCount: cols,
                    ),
                  ],
                );
              })),
        ),
      ],
    ),
  ),
);
```