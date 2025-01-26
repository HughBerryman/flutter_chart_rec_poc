import 'package:flutter/material.dart';
import 'package:fmi_core/constants/constants.dart';
import 'package:fmi_core/designTokens/designTokens.dart';

extension BuildContextExtension on BuildContext {
  // screen sizes pre-2024 version

  bool get isMobileScreen {
    return MediaQuery.of(this).size.width <= 900;
  }

  bool get isLaptopScreen {
    var screenWidth = MediaQuery.of(this).size.width;
    return screenWidth >= 901 && screenWidth <= 1216;
  }

  bool get isDesktopScreen {
    return MediaQuery.of(this).size.width > 1216;
  }

  // screen sizes current version

  bool get isXSmall {
    return MediaQuery.of(this).size.width <= 599;
  }

  bool get isSmall {
    var screenWidth = MediaQuery.of(this).size.width;
    return screenWidth >= 600 && screenWidth <= 900;
  }

  bool get isMedium {
    var screenWidth = MediaQuery.of(this).size.width;
    return screenWidth >= 901 && screenWidth <= 1216;
  }

  bool get isLarge {
    return MediaQuery.of(this).size.width > 1216;
  }

  int get columns {
    if (isXSmall) {
      return FMIThemeBase.baseColumnsXSmall;
    } else if (isSmall) {
      return FMIThemeBase.baseColumnsSmall;
    } else if (isMedium) {
      return FMIThemeBase.baseColumnsMedium;
    } else {
      return FMIThemeBase.baseColumnsLarge;
    }
  }

  double get outerGutter {
    if (isXSmall) {
      return FMIThemeBase.baseGap8;
    } else if (isSmall) {
      return FMIThemeBase.baseGap8;
    } else if (isMedium) {
      return FMIThemeBase.baseGap18;
    } else {
      return FMIThemeBase.baseGap36;
    }
  }

  double get horizontalSpacing {
    if (isXSmall) {
      return FMIThemeBase.baseGap8;
    } else if (isSmall) {
      return FMIThemeBase.baseGap8;
    } else if (isMedium) {
      return FMIThemeBase.baseGap12;
    } else {
      return FMIThemeBase.baseGap12;
    }
  }

  double get usableWidth {
    double width = MediaQuery.of(this).size.width;
    double maxWidth =
        LayoutConstants.maxConstraintWidth + outerGutter + outerGutter;
    return width < maxWidth
        ? width - outerGutter - outerGutter
        : LayoutConstants.maxConstraintWidth;
  }
}
