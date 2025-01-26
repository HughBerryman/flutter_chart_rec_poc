import 'package:flutter/material.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:poc/ui/demo/colorDemo/colorDemo.dart';

class DemoColor extends StatefulWidget {
  const DemoColor({Key? key}) : super(key: key);

  @override
  State<DemoColor> createState() => _DemoColorState();
}

class _DemoColorState extends State<DemoColor> {
  final AppStateManager appStateManager = GetIt.instance.get<AppStateManager>();

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Display FMI Key Colors
          DemoKeyColors(),
          // Display FMI Success Colors
          DemoSuccessColors(),
          // Display FMI Error Colors
          DemoErrorColors(),
          // Display FMI Warning Colors
          DemoWarningColors(),
          // Display FMI Neutral Colors
          DemoNeutralColors(),
          // Display Launcher Colors
          DemoIllustrationColors(),
          // Display Fmi Bar Chart Colors
          DemoChartColors(),
        ],
      ),
    );
  }
}
