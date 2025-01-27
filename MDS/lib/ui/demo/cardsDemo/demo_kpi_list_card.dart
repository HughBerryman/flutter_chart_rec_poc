import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/component_header.dart';

class DemoKpiCard extends StatelessWidget {
  const DemoKpiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Kpi List Card'),
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
        Container(
          padding: const EdgeInsets.all(FMIThemeBase.basePadding4),
          decoration: BoxDecoration(
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeAltSurfaceInverseAltSurface,
              borderRadius:
                  BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge)),
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            verticalDirection: VerticalDirection.down,
            runSpacing: FMIThemeBase.basePadding4,
            spacing: FMIThemeBase.basePadding4,
            children: [
              SizedBox(
                height: FMIThemeBase.baseContainerDimension100,
                width: FMIThemeBase.baseContainerDimension400,
                child: FmiKpiListCard(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                                title: const Text('Fmi Kpi Card Dialog'),
                                content:
                                    const Text('Click the OK button to close'),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pop('dialog');
                                    },
                                  )
                                ]));
                  },
                  startSlot: FaIcon(
                    FontAwesomeIcons.solidShovel,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  overline: 'Truck #1',
                  title: 'Crusher 1',
                  subtitle: 'Morenci',
                  kpi: '200',
                  kpiUnit: 'lbs',
                  kpiTrend: const FmiKpiTrend(
                      trend: KpiTrendEnum.up, target: 0, value: 0),
                ),
              ),
              SizedBox(
                height: FMIThemeBase.baseContainerDimension100,
                width: FMIThemeBase.baseContainerDimension400,
                child: FmiKpiListCard(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                                title: const Text('Fmi Kpi Card Dialog'),
                                content:
                                    const Text('Click the OK button to close'),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pop('dialog');
                                    },
                                  )
                                ]));
                  },
                  startSlot: FaIcon(
                    FontAwesomeIcons.solidShovel,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  overline: 'Truck #2',
                  title: 'Crusher 2',
                  subtitle: 'Morenci',
                  kpi: '200',
                  kpiTrend: const FmiKpiTrend(
                      trend: KpiTrendEnum.up,
                      target: 53,
                      value: 60,
                      decimalPlaces: 2),
                ),
              ),
              SizedBox(
                height: FMIThemeBase.baseContainerDimension100,
                width: FMIThemeBase.baseContainerDimension400,
                child: FmiKpiListCard(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                                title: const Text('Fmi Kpi Card Dialog'),
                                content:
                                    const Text('Click the OK button to close'),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pop('dialog');
                                    },
                                  )
                                ]));
                  },
                  overline: 'Truck #3',
                  title: 'Crusher 3',
                  subtitle: 'Morenci',
                  kpiTrend: const FmiKpiTrend(
                      trend: KpiTrendEnum.up, target: 53, value: 60),
                ),
              ),
              SizedBox(
                height: FMIThemeBase.baseContainerDimension100,
                width: FMIThemeBase.baseContainerDimension400,
                child: FmiKpiListCard(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                                title: const Text('Fmi Kpi Card Dialog'),
                                content:
                                    const Text('Click the OK button to close'),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pop('dialog');
                                    },
                                  )
                                ]));
                  },
                  startSlot: FaIcon(
                    FontAwesomeIcons.solidShovel,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  title: 'Crusher 4',
                  subtitle: 'Morenci',
                  kpiUnit: "lbs",
                  showAsPercent: false,
                  kpiTrend: const FmiKpiTrend(
                      trend: KpiTrendEnum.up, target: 53, value: 60),
                ),
              ),
              SizedBox(
                height: FMIThemeBase.baseContainerDimension100,
                width: FMIThemeBase.baseContainerDimension400,
                child: FmiKpiListCard(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                                title: const Text('Fmi Kpi Card Dialog'),
                                content:
                                    const Text('Click the OK button to close'),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pop('dialog');
                                    },
                                  )
                                ]));
                  },
                  title: 'Crusher 5',
                  subtitle: 'Morenci',
                  kpiTrend: const FmiKpiTrend(
                      trend: KpiTrendEnum.up,
                      target: 53,
                      value: 60,
                      decimalPlaces: 2),
                ),
              ),
              SizedBox(
                height: FMIThemeBase.baseContainerDimension100,
                width: FMIThemeBase.baseContainerDimension400,
                child: FmiKpiListCard(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                                title: const Text('Fmi Kpi Card Dialog'),
                                content:
                                    const Text('Click the OK button to close'),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pop('dialog');
                                    },
                                  )
                                ]));
                  },
                  startSlot: FaIcon(
                    FontAwesomeIcons.solidShovel,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  title: 'Crusher 6',
                  kpi: '200',
                  kpiUnit: 'lbs',
                  kpiTrend: const FmiKpiTrend(
                      trend: KpiTrendEnum.up, target: 5, value: 10),
                ),
              ),
              SizedBox(
                height: FMIThemeBase.baseContainerDimension100,
                width: FMIThemeBase.baseContainerDimension400,
                child: FmiKpiListCard(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                                title: const Text('Fmi Kpi Card Dialog'),
                                content:
                                    const Text('Click the OK button to close'),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pop('dialog');
                                    },
                                  )
                                ]));
                  },
                  startSlot: FaIcon(
                    FontAwesomeIcons.solidShovel,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  overline: 'Truck #7',
                  title: 'Crusher 7',
                  subtitle: 'Morenci',
                  kpiUnit: "lbs",
                  showPercentAndValue: true,
                  kpiTrend: const FmiKpiTrend(
                      trend: KpiTrendEnum.up, target: 200, value: 200),
                ),
              ),
              SizedBox(
                height: FMIThemeBase.baseContainerDimension100,
                width: FMIThemeBase.baseContainerDimension400,
                child: FmiKpiListCard(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                                title: const Text('Fmi Kpi Card Dialog'),
                                content:
                                    const Text('Click the OK button to close'),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pop('dialog');
                                    },
                                  )
                                ]));
                  },
                  startSlot: FaIcon(
                    FontAwesomeIcons.solidShovel,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  overline: 'Truck #8',
                  title: 'Crusher 8',
                  subtitle: 'Morenci',
                  kpi: '200',
                  kpiUnit: "lbs",
                  showPercentAndValue: true,
                  showTrendIconTwice: false,
                  showUnitOnTrend: false,
                  kpiTrend: const FmiKpiTrend(
                    trend: KpiTrendEnum.down,
                    target: 200,
                    value: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
