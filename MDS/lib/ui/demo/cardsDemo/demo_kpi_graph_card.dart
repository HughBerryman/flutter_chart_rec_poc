import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/component_header.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}

class DemoKpiGraphCard extends StatelessWidget {
  const DemoKpiGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(2010, 15),
      ChartData(2011, 25),
      ChartData(2012, 20),
      ChartData(2013, 30),
      ChartData(2014, 20),
    ];
    final List<Color> color = <Color>[];
    color.add(const Color.fromARGB(255, 240, 250, 237));
    color.add(const Color.fromARGB(255, 137, 189, 113));
    color.add(const Color(0xFF56AB2F));
    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);
    final LinearGradient gradientColors = LinearGradient(
        colors: color,
        stops: stops,
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter);
    return SingleChildScrollView(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ComponentHeader(title: 'Fmi Kpi Graph Card'),
          const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
          Container(
            padding: const EdgeInsets.all(FMIThemeBase.basePadding3),
            decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .fmiBaseThemeAltSurfaceInverseAltSurface,
                borderRadius:
                    BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge)),
            child: Column(
              children: [
                SizedBox(
                  height: FMIThemeBase.baseContainerDimension90,
                  width: FMIThemeBase.baseContainerDimension400,
                  child: FmiKpiGraphCard(
                    startSlot: Icon(
                      FontAwesomeIcons.chartColumn,
                      color: Theme.of(context).colorScheme.secondary,
                      size: FMIThemeBase.baseIconMedium,
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                  title: const Text('Fmi Graph Card Dialog'),
                                  content: const Text(
                                      'Click the OK button to close'),
                                  actions: [
                                    TextButton(
                                      child: const Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pop('dialog');
                                      },
                                    )
                                  ]));
                    },
                    title: 'Crusher 1',
                    subtitle: 'Total Shift Tones',
                    kpi: '200',
                    kpiUnit: 'lbs',
                    kpiTrend: const FmiKpiTrend(
                        trend: KpiTrendEnum.up,
                        target: 53,
                        value: 60,
                        decimalPlaces: 2),
                    middleGraph: SfCartesianChart(
                      plotAreaBorderColor: Colors.transparent,
                      borderColor: Colors.transparent,
                      primaryXAxis: const NumericAxis(
                          rangePadding: ChartRangePadding.none,
                          isVisible: false),
                      primaryYAxis: const NumericAxis(
                          rangePadding: ChartRangePadding.none,
                          isVisible: false),
                      series: <CartesianSeries>[
                        SplineAreaSeries<ChartData, int>(
                          gradient: gradientColors,
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          emptyPointSettings:
                              const EmptyPointSettings(mode: EmptyPointMode.zero),
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: false),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
                SizedBox(
                  height: FMIThemeBase.baseContainerDimension90,
                  width: FMIThemeBase.baseContainerDimension400,
                  child: FmiKpiGraphCard(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                  title: const Text('Fmi Graph Card Dialog'),
                                  content: const Text(
                                      'Click the OK button to close'),
                                  actions: [
                                    TextButton(
                                      child: const Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pop('dialog');
                                      },
                                    )
                                  ]));
                    },
                    title: 'Crusher 1',
                    subtitle: 'Total Shift Tones',
                    kpi: '200',
                    kpiUnit: 'lbs',
                    kpiTrend: const FmiKpiTrend(
                        trend: KpiTrendEnum.up, target: 53, value: 60),
                    middleGraph: SfCartesianChart(
                      plotAreaBorderColor: Colors.transparent,
                      borderColor: Colors.transparent,
                      primaryXAxis: const NumericAxis(
                          rangePadding: ChartRangePadding.none,
                          isVisible: false),
                      primaryYAxis: const NumericAxis(
                          rangePadding: ChartRangePadding.none,
                          isVisible: false),
                      series: <CartesianSeries>[
                        SplineAreaSeries<ChartData, int>(
                          gradient: gradientColors,
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          emptyPointSettings:
                              const EmptyPointSettings(mode: EmptyPointMode.zero),
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: false),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
                SizedBox(
                  height: FMIThemeBase.baseContainerDimension90,
                  width: FMIThemeBase.baseContainerDimension400,
                  child: FmiKpiGraphCard(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                  title: const Text('Fmi Graph Card Dialog'),
                                  content: const Text(
                                      'Click the OK button to close'),
                                  actions: [
                                    TextButton(
                                      child: const Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pop('dialog');
                                      },
                                    )
                                  ]));
                    },
                    title: 'Crusher 1',
                    subtitle: 'Total Shift Tones',
                    kpi: '200',
                    kpiUnit: 'lbs',
                    kpiTrend: const FmiKpiTrend(
                        trend: KpiTrendEnum.up, target: 5, value: 20),
                    middleGraph: SfCartesianChart(
                      plotAreaBorderColor: Colors.transparent,
                      borderColor: Colors.transparent,
                      primaryXAxis: const NumericAxis(
                          rangePadding: ChartRangePadding.none,
                          isVisible: false),
                      primaryYAxis: const NumericAxis(
                          rangePadding: ChartRangePadding.none,
                          isVisible: false),
                      series: <CartesianSeries>[
                        SplineAreaSeries<ChartData, int>(
                          gradient: gradientColors,
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          emptyPointSettings:
                              const EmptyPointSettings(mode: EmptyPointMode.zero),
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: false),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
                SizedBox(
                  height: FMIThemeBase.baseContainerDimension90,
                  width: FMIThemeBase.baseContainerDimension400,
                  child: FmiKpiGraphCard(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                  title: const Text('Fmi Graph Card Dialog'),
                                  content: const Text(
                                      'Click the OK button to close'),
                                  actions: [
                                    TextButton(
                                      child: const Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pop('dialog');
                                      },
                                    )
                                  ]));
                    },
                    title: 'Crusher 1',
                    subtitle: 'Total Shift Tones',
                    kpi: '200',
                    kpiUnit: 'lbs',
                    kpiTrend: const FmiKpiTrend(
                        trend: KpiTrendEnum.up, target: 0, value: 0),
                    middleGraph: SfCartesianChart(
                      plotAreaBorderColor: Colors.transparent,
                      borderColor: Colors.transparent,
                      primaryXAxis: const NumericAxis(
                          rangePadding: ChartRangePadding.none,
                          isVisible: false),
                      primaryYAxis: const NumericAxis(
                          rangePadding: ChartRangePadding.none,
                          isVisible: false),
                      series: <CartesianSeries>[
                        SplineAreaSeries<ChartData, int>(
                          gradient: gradientColors,
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          emptyPointSettings:
                              const EmptyPointSettings(mode: EmptyPointMode.zero),
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: false),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
