import 'package:fmi_core/fmi_core.dart';

class FmiKpiTrend {
  const FmiKpiTrend(
      {required this.trend,
      required this.target,
      required this.value,
      this.decimalPlaces = 0});

  final KpiTrendEnum trend;
  final double target;
  final double value;
  final int decimalPlaces;
}
