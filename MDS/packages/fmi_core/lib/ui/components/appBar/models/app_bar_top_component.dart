import 'package:flutter/material.dart';

class AppBarTopComponent {
  AppBarTopComponent(
      {this.label,
      this.component,
      this.onTap,
      @Deprecated('Is not working and will be removed in next artifact update')
      this.alwaysShow = false,
      @Deprecated('Is not working and will be removed in next artifact update')
      this.hideOnMobile = false})
      : assert(!(hideOnMobile == true && alwaysShow == true),
            'Cannot have both alwaysShow and hideOnMobile set to true');
  Widget? label;
  Widget? component;
  bool? alwaysShow;
  bool? hideOnMobile;
  Function()? onTap;
}
