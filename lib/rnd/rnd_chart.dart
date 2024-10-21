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
                message: """
                  x: Day 1
                  decantBleed: 2000 gal/shift
                  freshFerric: 4000 gal/shift
                  digesterRun: 2 runs
                  throughput: 5.9 TPH
                """,
                preferBelow: false, // Display tooltip above the widget
                child: const Icon(Icons.check, color: Colors.green),
              ),
            ),
            coordinateUnit: CoordinateUnit.point,
            x: 'Day 1',
            y: 0.5, // Adjust this value to position the checkmark just above the x-axis
          ),
          CartesianChartAnnotation(
            widget: GestureDetector(
              onTap: () {
                // Handle tap if needed
              },
              child: Tooltip(
                message: """
                  x: Day 2
                  decantBleed: 2100 gal/shift
                  freshFerric: 4100 gal/shift
                  digesterRun: 3 runs
                  throughput: 6.0 TPH
                """,
                preferBelow: false, // Display tooltip above the widget
                child: const Icon(Icons.check, color: Colors.green),
              ),
            ),
            coordinateUnit: CoordinateUnit.point,
            x: 'Day 2',
            y: 0.5, // Adjust this value to position the checkmark just above the x-axis
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
