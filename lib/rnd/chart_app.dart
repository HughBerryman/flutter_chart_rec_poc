import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:fmi_core/fmi_core.dart';

class ChartApp extends StatelessWidget {
  const ChartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Copper Analysis',
          style: TextStyle(
            color: FMIThemeBase.basePalettePrimaryPrimary50,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: FMIThemeBase.basePalettePrimaryPrimary50,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: FMIThemeBase.basePaletteCoolGrayCoolGray95,
        elevation: 0,
      ),
      backgroundColor: FMIThemeBase.basePaletteCoolGrayCoolGray95,
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

  LineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      // Adding Trackball to Chart
      trackballBehavior: _trackballBehavior,
      // Chart Title
      title: ChartTitle(
        text: 'Copper (Cu)',
        textStyle: TextStyle(
          color: FMIThemeBase.basePalettePrimaryPrimary50,
          fontWeight: FontWeight.bold,
          fontSize: FMIThemeBase.baseFontSize3,
        ),
      ),
      legend: Legend(
        isVisible: true,
        textStyle: TextStyle(
          color: FMIThemeBase.basePalettePrimaryPrimary50,
          fontSize: FMIThemeBase.baseFontSize1,
        ),
      ),
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
                'Today',
                TextStyle(
                  color: FMIThemeBase.basePalettePrimaryPrimary50,
                  fontWeight: FontWeight.bold,
                ));
          } else {
            return ChartAxisLabel(
                DateFormat.Md().format(date),
                TextStyle(
                  color: FMIThemeBase.basePalettePrimaryPrimary50,
                ));
          }
        },
      ),
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 10,
        interval: 1,
        majorGridLines: const MajorGridLines(dashArray: [5, 5]),
        labelStyle: TextStyle(
          color: FMIThemeBase.basePalettePrimaryPrimary50,
        ),
      ),
      series: <CartesianSeries>[
        LineSeries<ChartData, DateTime>(
          name: 'Cu - Recommend',
          color: FMIThemeBase.basePalettePrimaryPrimary60,
          dataSource: getChartData(),
          xValueMapper: (ChartData data, _) => data.date,
          yValueMapper: (ChartData data, _) => data.recommend,
          markerSettings: const MarkerSettings(isVisible: true),
          dashArray: const [5, 3],
          dataLabelSettings: const DataLabelSettings(isVisible: false),
        ),
        LineSeries<ChartData, DateTime>(
          name: 'Cu - Current',
          color: FMIThemeBase.basePaletteExtendedOrange50,
          dataSource: getChartData(),
          xValueMapper: (ChartData data, _) => data.date,
          yValueMapper: (ChartData data, _) => data.current,
          markerSettings: const MarkerSettings(isVisible: true),
          dashArray: const [5, 3],
          dataLabelSettings: const DataLabelSettings(isVisible: false),
        ),
      ],
      annotations: <CartesianChartAnnotation>[
        // Horizontal Red Line Annotation
        CartesianChartAnnotation(
          widget: Container(
            height: 2,
            color: FMIThemeBase.basePaletteRedRed50,
          ),
          coordinateUnit: CoordinateUnit.point,
          region: AnnotationRegion.plotArea,
          x: DateTime(2024, 8, 20), // Start date of the chart
          y: 7, // Y-axis value for the line
          horizontalAlignment: ChartAlignment.near,
          verticalAlignment: ChartAlignment.center,
        ),
        CartesianChartAnnotation(
          widget: Container(
            height: 2,
            color: FMIThemeBase.basePaletteRedRed50,
          ),
          coordinateUnit: CoordinateUnit.point,
          region: AnnotationRegion.plotArea,
          x: DateTime(2024, 8, 28), // End date of the chart
          y: 7, // Y-axis value for the line
          horizontalAlignment: ChartAlignment.far,
          verticalAlignment: ChartAlignment.center,
        ),
        // Today Line Annotation
        CartesianChartAnnotation(
          widget: Container(
            width: 2,
            color: FMIThemeBase.basePalettePrimaryPrimary50,
          ),
          coordinateUnit: CoordinateUnit.logicalPixel,
          region: AnnotationRegion.plotArea,
          x: 0,
          y: 0.2,
        ),
        CartesianChartAnnotation(
          widget: Text(
            'Today vertical line goes here',
            style: TextStyle(
              color: FMIThemeBase.basePalettePrimaryPrimary50,
              fontWeight: FontWeight.bold,
              fontSize: FMIThemeBase.baseFontSize1,
            ),
          ),
          coordinateUnit: CoordinateUnit.point,
          x: DateTime(2024, 8, 25),
          y: 9,
        ),

        // Checkmark Annotations with Tooltip for multiple dates on the x-axis
        CartesianChartAnnotation(
          widget: GestureDetector(
            onTap: () {
              // Handle tap if needed
            },
            child: Tooltip(
              message: """
                x: Day 1
                decantBleed: 2100 gal/shift
                freshFerric: 4100 gal/shift
                digesterRun: 3 runs
                throughput: 6.0 TPH
              """,
              preferBelow: false,
              child: Icon(
                Icons.check,
                color: FMIThemeBase.basePaletteGreenGreen50,
                size: FMIThemeBase.baseIconSmall,
              ),
            ),
          ),
          coordinateUnit: CoordinateUnit.point,
          x: DateTime(2024, 8, 20),
          y: 0.2, // Position the checkmark on the x-axis
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
              preferBelow: false,
              child: Icon(
                Icons.check,
                color: FMIThemeBase.basePaletteGreenGreen50,
                size: FMIThemeBase.baseIconSmall,
              ),
            ),
          ),
          coordinateUnit: CoordinateUnit.point,
          x: DateTime(2024, 8, 21),
          y: 0.2, // Position the checkmark on the x-axis
        ),
        CartesianChartAnnotation(
          widget: GestureDetector(
            onTap: () {
              // Handle tap if needed
            },
            child: Tooltip(
              message: """
                x: Day 3
                decantBleed: 2100 gal/shift
                freshFerric: 4100 gal/shift
                digesterRun: 3 runs
                throughput: 6.0 TPH
              """,
              preferBelow: false,
              child: Icon(
                Icons.check,
                color: FMIThemeBase.basePaletteGreenGreen50,
                size: FMIThemeBase.baseIconSmall,
              ),
            ),
          ),
          coordinateUnit: CoordinateUnit.point,
          x: DateTime(2024, 8, 22),
          y: 0.2, // Position the checkmark on the x-axis
        ),
        // Replace checkmark with "Today" text for 2024-08-25
        CartesianChartAnnotation(
          widget: Text(
            'Today',
            style: TextStyle(
              color: FMIThemeBase.basePalettePrimaryPrimary50,
              fontWeight: FontWeight.bold,
              fontSize: FMIThemeBase.baseFontSize1,
            ),
          ),
          coordinateUnit: CoordinateUnit.point,
          x: DateTime(2024, 8, 25),
          y: 0.2, // Position the text on the x-axis
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
