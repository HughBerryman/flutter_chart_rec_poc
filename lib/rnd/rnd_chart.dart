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
            widget: const Icon(Icons.check, color: Colors.green),
            coordinateUnit: CoordinateUnit.point,
            x: 'Day 1',
            y: 30,
          ),
          CartesianChartAnnotation(
            widget: const Icon(Icons.check, color: Colors.green),
            coordinateUnit: CoordinateUnit.point,
            x: 'Day 2',
            y: 40,
          ),
        ],
        tooltipBehavior: TooltipBehavior(
          enable: true,
          builder: (dynamic data, dynamic point, dynamic series, int pointIndex, int seriesIndex) {
            final ChartData chartData = data;
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '{${chartData.x}}',
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '✓ Decant Bleed: 2000 gal/shift',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    '✓ Fresh Ferric: 4000 gal/shift',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    '✓ Digester Run: 2 runs',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    '✓ Throughput: 5.9 TPH',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            );
          },
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
