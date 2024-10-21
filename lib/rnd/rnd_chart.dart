import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RndChart extends StatelessWidget {
  const RndChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommendation Chart'),
      ),
      body: SfCartesianChart(
        primaryXAxis: const CategoryAxis(),
        series: <CartesianSeries<ChartData, String>>[
          LineSeries<ChartData, String>(
            dataSource: getChartData(),
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            dataLabelSettings: const DataLabelSettings(isVisible: true),
          )
        ],
        annotations: <CartesianChartAnnotation>[
          CartesianChartAnnotation(
            widget: GestureDetector(
              onTap: () {
                // Handle tap if needed
              },
              child: Tooltip(
                message: "Checkmark for Day 1",
                child: const Icon(Icons.check, color: Colors.green),
              ),
            ),
            coordinateUnit: CoordinateUnit.point,
            x: 'Day 1',
            y: 15, // Move the checkmark up by 15 pixels
          ),
          CartesianChartAnnotation(
            widget: GestureDetector(
              onTap: () {
                // Handle tap if needed
              },
              child: Tooltip(
                message: "Checkmark for Day 2",
                child: const Icon(Icons.check, color: Colors.green),
              ),
            ),
            coordinateUnit: CoordinateUnit.point,
            x: 'Day 2',
            y: 15, // Move the checkmark up by 15 pixels
          ),
        ],
        tooltipBehavior: TooltipBehavior(
          enable: true,
        ),
      ),
    );
  }

  List<ChartData> getChartData() {
    return [
      ChartData('Day 1', 30),
      ChartData('Day 2', 40),
      ChartData('Day 3', 35),
      // Add more data points as needed
    ];
  }
}

class ChartData {
  final String x;
  final double y;

  ChartData(this.x, this.y);
}
