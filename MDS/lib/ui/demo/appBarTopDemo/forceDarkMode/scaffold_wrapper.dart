import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/appBarTopDemo/forceDarkMode/forceDarkMode.dart';

class ScaffoldWrapper extends StatelessWidget {
  const ScaffoldWrapper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(FMIThemeBase.baseContainerDimension72),
          child: AppBarWrapper()),
      body: Center(
        child: SafeArea(child: DemoPage()),
      ),
    );
  }
}
