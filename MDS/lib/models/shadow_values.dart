import 'dart:ui';

class ShadowValues {
  late Color shadowColor;
  late double blur;
  late double spread;
  late double dx;
  late double dy;

  ShadowValues(List shadowValues) {
    shadowColor = shadowValues[0];
    blur = shadowValues[1];
    spread = shadowValues[2];
    dx = shadowValues[3];
    dy = shadowValues[4];
  }
}
