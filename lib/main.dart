import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

void main() => runApp(ChartApp());

class ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Copper Analysis')),
        body: LineChart(),
      ),
    );
  }
}

class LineChart extends StatelessWidget {
  // Initialize TrackballBehavior
  final TrackballBehavior _trackballBehavior = TrackballBehavior(
    enable: true,
    tooltipSettings: InteractiveTooltip(enable: true),
    activationMode: ActivationMode.singleTap, // Use tap to activate trackball
  );

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      // Adding Trackball to Chart
      trackballBehavior: _trackballBehavior,
      // Chart Title
      title: ChartTitle(text: 'Copper (Cu)'),
      legend: Legend(isVisible: true),
      tooltipBehavior: TooltipBehavior(enable: true),
      primaryXAxis: DateTimeAxis(
        intervalType: DateTimeIntervalType.days,
        dateFormat: DateFormat.Md(),
        majorGridLines: MajorGridLines(width: 0),
        labelFormat: '{value}',
        axisLabelFormatter: (AxisLabelRenderDetails details) {
          final date =
              DateTime.fromMillisecondsSinceEpoch(details.value.toInt());
          if (date.day == DateTime.now().day &&
              date.month == DateTime.now().month &&
              date.year == DateTime.now().year) {
            return ChartAxisLabel('Today', TextStyle(color: Colors.black));
          } else {
            return ChartAxisLabel(
                DateFormat.Md().format(date), TextStyle(color: Colors.black));
          }
        },
      ),
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 7,
        interval: 1,
        majorGridLines: MajorGridLines(dashArray: [5, 5]),
      ),
      series: <CartesianSeries>[
        LineSeries<ChartData, DateTime>(
          name: 'Cu - Recommend',
          color: Colors.blue,
          dataSource: getChartData(),
          xValueMapper: (ChartData data, _) => data.date,
          yValueMapper: (ChartData data, _) => data.recommend,
          markerSettings: MarkerSettings(isVisible: true),
          dashArray: [5, 3],
          dataLabelSettings: DataLabelSettings(isVisible: false),
        ),
        LineSeries<ChartData, DateTime>(
          name: 'Cu - Current',
          color: Colors.orange,
          dataSource: getChartData(),
          xValueMapper: (ChartData data, _) => data.date,
          yValueMapper: (ChartData data, _) => data.current,
          markerSettings: MarkerSettings(isVisible: true),
          dashArray: [5, 3],
          dataLabelSettings: DataLabelSettings(isVisible: false),
        ),
      ],
      annotations: <CartesianChartAnnotation>[
        CartesianChartAnnotation(
          widget: Container(
            child: Text(
              'Spec',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
          coordinateUnit: CoordinateUnit.point,
          region: AnnotationRegion.chart,
          x: DateTime(2024, 8, 21),
          y: 5,
        ),
        CartesianChartAnnotation(
          widget: Container(
            width: double.infinity,
            height: 2,
            color: Colors.red,
          ),
          coordinateUnit: CoordinateUnit.logicalPixel,
          region: AnnotationRegion.chart,
          x: 0,
          y: 5,
        ),
        CartesianChartAnnotation(
          widget: Container(
            height: double.infinity,
            width: 2,
            color: Colors.black,
          ),
          coordinateUnit: CoordinateUnit.point,
          x: DateTime(2024, 8, 21),
          y: 0,
        ),
        CartesianChartAnnotation(
          widget: Container(
            child: Text(
              'Today',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
          coordinateUnit: CoordinateUnit.point,
          x: DateTime(2024, 8, 21),
          y: 6.5,
        ),
      ],
    );
  }

  List<ChartData> getChartData() {
    return <ChartData>[
      ChartData(DateTime(2024, 8, 20), 1, 1),
      ChartData(DateTime(2024, 8, 21), 2, 1.5),
      ChartData(DateTime(2024, 8, 22), 3, 2.5),
      ChartData(DateTime(2024, 8, 23), 4, 3.5),
      ChartData(DateTime(2024, 8, 24), 5, 4.5),
    ];
  }
}

class ChartData {
  ChartData(this.date, this.recommend, this.current);
  final DateTime date;
  final double recommend;
  final double current;
}
