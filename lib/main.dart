import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

void main() => runApp(ChartApp());

class ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Syncfusion Flutter Chart')),
        body: LineChart(),
      ),
    );
  }
}

class LineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      // Adjusting chart title and styling
      title: ChartTitle(text: 'Copper (Cu)'),
      legend: Legend(isVisible: true),
      primaryXAxis: DateTimeAxis(
        intervalType: DateTimeIntervalType.days,
        dateFormat: DateFormat.Md(), // Corrected DateFormat usage
        majorGridLines: MajorGridLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 7,
        interval: 1,
        majorGridLines: MajorGridLines(dashArray: [5, 5]),
      ),
      series: <CartesianSeries>[
        // Recommend Line Series
        LineSeries<ChartData, DateTime>(
          name: 'Recommend',
          color: Colors.blue,
          dataSource: getChartData(),
          xValueMapper: (ChartData data, _) => data.date,
          yValueMapper: (ChartData data, _) => data.recommend,
          markerSettings: MarkerSettings(isVisible: true),
          dashArray: [5, 5],
        ),
        // Current Line Series
        LineSeries<ChartData, DateTime>(
          name: 'Current',
          color: Colors.orange,
          dataSource: getChartData(),
          xValueMapper: (ChartData data, _) => data.date,
          yValueMapper: (ChartData data, _) => data.current,
          markerSettings: MarkerSettings(isVisible: true),
          dashArray: [5, 5],
        ),
      ],
      // Spec Line Annotation
      annotations: <CartesianChartAnnotation>[
        CartesianChartAnnotation(
          widget: Container(
            width: double.infinity, // Ensure the line spans the entire width
            height: 2,
            color: Colors.red,
            child: Text(
              'Spec',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          coordinateUnit: CoordinateUnit.logicalPixel,
          region: AnnotationRegion.chart,
          x: 0, // Span entire chart region
          y: 5, // Adjust according to spec value
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
