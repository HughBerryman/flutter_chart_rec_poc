import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DemoGenericCard extends StatefulWidget {
  const DemoGenericCard({super.key});

  @override
  State<DemoGenericCard> createState() => _DemoGenericCardState();
}

class _DemoGenericCardState extends State<DemoGenericCard> {
  final List<ChartData> chartData = [
    ChartData(2010, 15),
    ChartData(2011, 25),
    ChartData(2012, 20),
    ChartData(2013, 30),
    ChartData(2014, 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Generic Card'),
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
        Wrap(
          runSpacing: FMIThemeBase.basePadding2,
          spacing: FMIThemeBase.basePadding2,
          children: [
            Container(
              width: FMIThemeBase.baseContainerDimension560,
              decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeAltSurfaceInverseAltSurface,
                  borderRadius: BorderRadius.circular(
                      FMIThemeBase.baseBorderRadiusLarge)),
              padding: const EdgeInsets.all(FMIThemeBase.basePadding4),
              child: Column(
                children: [
                  FmiGenericCard(
                    leading: const FmiAvatar(
                        displayName: 'John Doe',
                        avatarSize: FmiAvatarSize.large),
                    overline: 'Overline',
                    subtitle: 'Subtitle',
                    title: 'Card Title',
                    trailing: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Theme.of(context).colorScheme.primary,
                        size: FMIThemeBase.baseIconMedium,
                      ),
                      onPressed: () {},
                    ),
                    body: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                    footer: Text('Mar 17, 14:32 PM',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.outline)),
                  ),
                  const Padding(
                      padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
                  FmiGenericCard(
                      leading: FaIcon(FontAwesomeIcons.solidClipboard,
                          size: FMIThemeBase.baseIconLarge,
                          color: Theme.of(context).colorScheme.primary),
                      overline: 'Overline',
                      subtitle: 'Subtitle',
                      title: 'Card Title',
                      trailing: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.chevronRight,
                          color: Theme.of(context).colorScheme.primary,
                          size: FMIThemeBase.baseIconMedium,
                        ),
                        onPressed: () {},
                      ),
                      body: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                      footer: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.thumbsUp,
                                size: FMIThemeBase.baseIconMedium,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.ellipsisStroke,
                                size: FMIThemeBase.baseIconMedium,
                              ),
                              onPressed: () {}),
                        ],
                      )),
                  const Padding(
                      padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
                  FmiGenericCard(
                    leading: const FmiAvatar(
                        displayName: 'John Doe',
                        avatarSize: FmiAvatarSize.large),
                    overline: 'Overline',
                    subtitle: 'Subtitle',
                    title: 'Card Title',
                    titleTextThemeMobile: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                    titleTextThemeNotMobile: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                    subtitleTextStyle: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer),
                    overlineTextStyle: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(
                            color: Theme.of(context).colorScheme.secondary),
                    trailing: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Theme.of(context).colorScheme.primary,
                        size: FMIThemeBase.baseIconMedium,
                      ),
                      onPressed: () {},
                    ),
                    body: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                    footer: Text('Mar 17, 14:32 PM',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.outline)),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
            Container(
              width: FMIThemeBase.baseContainerDimension560,
              decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeAltSurfaceInverseAltSurface,
                  borderRadius: BorderRadius.circular(
                      FMIThemeBase.baseBorderRadiusLarge)),
              padding: const EdgeInsets.all(FMIThemeBase.basePadding4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FmiGenericCard(
                    overline: 'Overline',
                    subtitle: 'Subtitle',
                    title: 'Card Title',
                    trailing: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Theme.of(context).colorScheme.primary,
                        size: FMIThemeBase.baseIconMedium,
                      ),
                      onPressed: () {},
                    ),
                    body: SfCartesianChart(
                      title: ChartTitle(
                          text: 'Chart Title',
                          textStyle: Theme.of(context).textTheme.titleMedium),
                      margin: const EdgeInsets.all(FMIThemeBase.basePadding4),
                      plotAreaBorderColor: Colors.transparent,
                      borderColor: Colors.transparent,
                      primaryXAxis: const NumericAxis(
                          rangePadding: ChartRangePadding.none,
                          isVisible: true),
                      primaryYAxis: const NumericAxis(
                          rangePadding: ChartRangePadding.auto,
                          isVisible: true),
                      series: <CartesianSeries>[
                        SplineAreaSeries<ChartData, int>(
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          emptyPointSettings:
                              const EmptyPointSettings(mode: EmptyPointMode.zero),
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: false),
                        )
                      ],
                    ),
                    footer: Text('Mar 17, 14:32 PM',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.outline)),
                  ),
                  const Padding(
                      padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
                  FmiGenericCard(
                    title: 'Card Title',
                    trailing: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Theme.of(context).colorScheme.primary,
                        size: FMIThemeBase.baseIconMedium,
                      ),
                      onPressed: () {},
                    ),
                    body: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
