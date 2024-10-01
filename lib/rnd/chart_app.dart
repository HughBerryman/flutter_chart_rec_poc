import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

void main() => runApp(ChartApp());

class ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Copper Analysis'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: LineChart(),
    );
  }
}

class LineChart extends StatelessWidget {
  // Initialize TrackballBehavior
  final TrackballBehavior _trackballBehavior = TrackballBehavior(
    enable: true,
    tooltipSettings: const InteractiveTooltip(enable: true),
    activationMode: ActivationMode.singleTap, // Use tap to activate trackball
  );

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      // Adding Trackball to Chart
      trackballBehavior: _trackballBehavior,
      // Chart Title
      title: const ChartTitle(text: 'Copper (Cu)'),
      legend: const Legend(isVisible: true),
      tooltipBehavior: TooltipBehavior(enable: true),
      primaryXAxis: DateTimeAxis(
        intervalType: DateTimeIntervalType.days,
        dateFormat: DateFormat.Md(),
        majorGridLines: const MajorGridLines(width: 0),
        labelFormat: '{value}',
        axisLabelFormatter: (AxisLabelRenderDetails details) {
          final date =
              DateTime.fromMillisecondsSinceEpoch(details.value.toInt());
          if (date.day == DateTime.now().day &&
              date.month == DateTime.now().month &&
              date.year == DateTime.now().year) {
            return ChartAxisLabel(
                'Today', const TextStyle(color: Colors.black));
          } else {
            return ChartAxisLabel(DateFormat.Md().format(date),
                const TextStyle(color: Colors.black));
          }
        },
      ),
      primaryYAxis: const NumericAxis(
        minimum: 0,
        maximum: 10,
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
          markerSettings: const MarkerSettings(isVisible: true),
          dashArray: const [5, 3],
          dataLabelSettings: const DataLabelSettings(isVisible: false),
        ),
        LineSeries<ChartData, DateTime>(
          name: 'Cu - Current',
          color: Colors.orange,
          dataSource: getChartData(),
          xValueMapper: (ChartData data, _) => data.date,
          yValueMapper: (ChartData data, _) => data.current,
          markerSettings: const MarkerSettings(isVisible: true),
          dashArray: const [5, 3],
          dataLabelSettings: const DataLabelSettings(isVisible: false),
        ),
      ],
      annotations: <CartesianChartAnnotation>[
        // Spec Line Annotation
        CartesianChartAnnotation(
          widget: Container(
            height: 2,
            color: Colors.red,
          ),
          coordinateUnit: CoordinateUnit.logicalPixel,
          region: AnnotationRegion.plotArea,
          x: 0,
          y: 5,
        ),
        // Today Line Annotation
        CartesianChartAnnotation(
          widget: Container(
            width: 2,
            color: Colors.black,
          ),
          coordinateUnit: CoordinateUnit.logicalPixel,
          region: AnnotationRegion.plotArea,
          x: 0,
          y: 0,
        ),
        CartesianChartAnnotation(
          widget: const Text(
            'Today',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          coordinateUnit: CoordinateUnit.point,
          x: DateTime(2024, 8, 25),
          y: 9,
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
      ChartData(DateTime(2024, 8, 25), 6, 5.5),
      ChartData(DateTime(2024, 8, 26), 7, 6.5),
      ChartData(DateTime(2024, 8, 27), 8, 7.5),
      ChartData(DateTime(2024, 8, 28), 9, 8.5),
    ];
  }
}

class ChartData {
  ChartData(this.date, this.recommend, this.current);
  final DateTime date;
  final double recommend;
  final double current;
}
