import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:poc/models/navigation/models.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/chartDemo/chartDemo.dart';

import '../../components/documentation_link.dart';

class DemoChartWidgets extends StatefulWidget {
  final PageSourceModel page;
  const DemoChartWidgets({Key? key, required this.page}) : super(key: key);

  @override
  State<DemoChartWidgets> createState() => _DemoChartWidgetsState();
}

class _DemoChartWidgetsState extends State<DemoChartWidgets> {
  final AppStateManager appStateManager = GetIt.instance.get<AppStateManager>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Charts Page'),
          automaticallyImplyLeading: false,
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            constraints: BoxConstraints.loose(const Size.fromWidth(700)),
            padding: const EdgeInsets.all(FMIThemeBase.basePaddingXLarge),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Display Sample Pie Chart
                    const DemoSamplePieChart(),
                    // Display Sample Bar Chart
                    const DemoSampleBarChart(),
                    //Display Sample Line Chart
                    const DemoSampleLineChart(),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: FMIThemeBase.basePaddingXxLarge),
                      child: DocumentationLink(
                          appStateManager: appStateManager,
                          categorySource: 'components',
                          pageSource: 'sample charts'),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
