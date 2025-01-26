import 'package:fmi_core/fmi_core.dart';

class FmiExpandableKpiScorecard {
  FmiExpandableKpiScorecard(
      {required this.kpiScorecard, required this.graph, this.isShown = false});
  final FmiKpiScorecard kpiScorecard;
  final List<dynamic> graph;
  bool? isShown;
}
