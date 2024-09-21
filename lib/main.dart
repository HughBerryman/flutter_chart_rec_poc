import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

void main() => runApp(ChartApp());

class ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Copper and Arsenic Analysis')),
        body: StackedLineChart(),
      ),
    );
  }
}

class StackedLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      // Chart Title
      title: ChartTitle(text: 'Copper (Cu)'),
      legend: Legend(isVisible: true),
      tooltipBehavior:
          TooltipBehavior(enable: true), // Enable tooltip for interaction
      // X Axis Settings
      primaryXAxis: DateTimeAxis(
        intervalType: DateTimeIntervalType.days,
        dateFormat: DateFormat.Md(),
        majorGridLines: MajorGridLines(width: 0),
      ),
      // Y Axis Settings
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 7,
        interval: 1,
        majorGridLines: MajorGridLines(dashArray: [5, 5]),
      ),
      // Data Series
      series: <CartesianSeries>[
        // Stacked Line Series for Copper (Recommend)
        StackedLineSeries<ChartData, DateTime>(
          name: 'Cu - Recommend',
          color: Colors.blue,
          dataSource: getChartData(),
          xValueMapper: (ChartData data, _) => data.date,
          yValueMapper: (ChartData data, _) => data.recommend,
          markerSettings: MarkerSettings(isVisible: true),
          dashArray: [5, 3], // Dashed Line Style
          dataLabelSettings: DataLabelSettings(isVisible: false),
        ),
        // Stacked Line Series for Copper (Current)
        StackedLineSeries<ChartData, DateTime>(
          name: 'Cu - Current',
          color: Colors.orange,
          dataSource: getChartData(),
          xValueMapper: (ChartData data, _) => data.date,
          yValueMapper: (ChartData data, _) => data.current,
          markerSettings: MarkerSettings(isVisible: true),
          dashArray: [5, 3], // Dashed Line Style
          dataLabelSettings: DataLabelSettings(isVisible: false),
        ),
        // Stacked Line Series for Arsenic (Recommend)
        StackedLineSeries<ChartData, DateTime>(
          name: 'As - Recommend',
          color: Colors.green,
          dataSource: getArsenicData(),
          xValueMapper: (ChartData data, _) => data.date,
          yValueMapper: (ChartData data, _) => data.recommend,
          markerSettings: MarkerSettings(isVisible: true),
          dashArray: [5, 3], // Dashed Line Style
          dataLabelSettings: DataLabelSettings(isVisible: false),
        ),
        // Stacked Line Series for Arsenic (Current)
        StackedLineSeries<ChartData, DateTime>(
          name: 'As - Current',
          color: Colors.red,
          dataSource: getArsenicData(),
          xValueMapper: (ChartData data, _) => data.date,
          yValueMapper: (ChartData data, _) => data.current,
          markerSettings: MarkerSettings(isVisible: true),
          dashArray: [5, 3], // Dashed Line Style
          dataLabelSettings: DataLabelSettings(isVisible: false),
        ),
      ],
      // Annotations for Spec Line and Today Marker
      annotations: <CartesianChartAnnotation>[
        // Spec Line Annotation
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
          coordinateUnit: CoordinateUnit.logicalPixel,
          region: AnnotationRegion.chart,
          x: 0,
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
        // Today Line Annotation
        CartesianChartAnnotation(
          widget: Container(
            height: double.infinity,
            width: 2,
            color: Colors.black,
          ),
          coordinateUnit: CoordinateUnit.logicalPixel,
          region: AnnotationRegion.chart,
          x: 200,
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
          coordinateUnit: CoordinateUnit.logicalPixel,
          region: AnnotationRegion.chart,
          x: 195,
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

  List<ChartData> getArsenicData() {
    return <ChartData>[
      ChartData(DateTime(2024, 8, 20), 0.5, 0.7),
      ChartData(DateTime(2024, 8, 21), 1.2, 1.0),
      ChartData(DateTime(2024, 8, 22), 1.8, 1.5),
      ChartData(DateTime(2024, 8, 23), 2.4, 1.9),
      ChartData(DateTime(2024, 8, 24), 3.0, 2.3),
    ];
  }
}

class ChartData {
  ChartData(this.date, this.recommend, this.current);
  final DateTime date;
  final double recommend;
  final double current;
}
