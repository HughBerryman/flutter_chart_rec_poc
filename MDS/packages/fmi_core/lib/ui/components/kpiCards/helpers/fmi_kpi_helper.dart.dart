import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

mixin FmiKpiHelper on Widget {
  int getPercentage(double target, double value) {
    return (target == 0) ? 0 : (value / target * 100).toInt();
  }

  double getPercentageAsDouble(double target, double value) {
    return (target == 0) ? 0 : (value / target * 100);
  }

  ScorecardTrend getTrend(double target, double value) {
    if (value > target) {
      return ScorecardTrend.up;
    } else if (value < target) {
      return ScorecardTrend.down;
    } else {
      return ScorecardTrend.standard;
    }
  }
}
