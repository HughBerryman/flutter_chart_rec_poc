import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart'; // Import for date formatting

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
            child: Text('Spec',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          ),
          coordinateUnit:
              CoordinateUnit.logicalPixel, // Corrected CoordinateUnit usage
          x: 80, // Use a logical pixel value or provide a DateTime value if required
          y: 250, // Position the annotation as needed
        ),
        CartesianChartAnnotation(
          widget: Container(
            child: Divider(
              color: Colors.red,
              thickness: 2,
            ),
          ),
          coordinateUnit:
              CoordinateUnit.logicalPixel, // Corrected CoordinateUnit usage
          x: 0, // Position the annotation as needed
          y: 5, // Use a logical pixel value for the y-position
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
