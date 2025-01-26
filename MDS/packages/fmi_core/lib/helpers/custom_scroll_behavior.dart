import 'dart:ui';

import 'package:flutter/material.dart';

class CustomScrollBehavior {
  static ScrollBehavior horizontalScrollConfiguration(BuildContext context) {
    return ScrollConfiguration.of(context).copyWith(dragDevices: {
      PointerDeviceKind.mouse,
      PointerDeviceKind.touch,
      PointerDeviceKind.stylus,
      PointerDeviceKind.trackpad
    });
  }
}
