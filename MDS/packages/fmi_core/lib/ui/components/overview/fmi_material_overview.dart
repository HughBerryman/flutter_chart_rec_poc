import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiMaterialOverview extends StatelessWidget {
  const FmiMaterialOverview(
      {super.key,
      required this.overviewBars,
      this.onTap,
      this.overviewIcon,
      this.overviewTitle,
      this.menuItems,
      this.overviewChips,
      this.chipSectionTitle,
      this.overviewUtilCharts,
      this.utilSectionTitle});

  final IconData? overviewIcon;
  final String? overviewTitle;
  final String? chipSectionTitle;
  final String? utilSectionTitle;
  final Function()? onTap;
  final List<FmiOverviewBar> overviewBars;
  final List<PopupMenuItem>? menuItems;
  final List<FmiOverviewChip>? overviewChips;
  final List<FmiOverviewUtilChart>? overviewUtilCharts;

  @override
  Widget build(BuildContext context) {
    return FmiBaseOverview(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(FMIThemeBase.basePadding11),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: FMIThemeBase.basePadding3),
                  child: Row(
                    children: [
                      if (overviewIcon != null)
                        Padding(
                          padding: const EdgeInsets.only(
                              right: FMIThemeBase.basePadding7),
                          child: FaIcon(overviewIcon,
                              color: Theme.of(context).colorScheme.secondary,
                              size: FMIThemeBase.baseIconMedium),
                        ),
                      if (overviewTitle != null)
                        Expanded(
                          flex: 2,
                          child: Text(
                            overviewTitle!,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      const Spacer(
                        flex: 1,
                      ),
                      Visibility(
                        visible: menuItems != null,
                        child: PopupMenuButton(
                            icon: FaIcon(
                              FontAwesomeIcons.ellipsisVertical,
                              color: Theme.of(context).colorScheme.secondary,
                              size: FMIThemeBase.baseIconMedium,
                            ),
                            itemBuilder: (context) {
                              return [
                                for (final item in menuItems!) item,
                              ];
                            }),
                      )
                    ],
                  ),
                ),
                ListView.builder(
                  itemBuilder: ((context, index) {
                    return overviewBars[index];
                  }),
                  itemCount: overviewBars.length,
                  shrinkWrap: true,
                ),
                Visibility(
                  visible: chipSectionTitle != null,
                  child: Text(
                    chipSectionTitle ?? '',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
                Visibility(
                  visible: overviewChips != null && overviewChips!.isNotEmpty,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: FMIThemeBase.basePadding3),
                    child: GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 157 / 33,
                                crossAxisSpacing: FMIThemeBase.basePadding7,
                                mainAxisSpacing: FMIThemeBase.basePadding5,
                                crossAxisCount: 2),
                        itemCount:
                            (overviewChips != null) ? overviewChips!.length : 0,
                        itemBuilder: (BuildContext context, int index) {
                          if (overviewChips == null) {
                            return const SizedBox();
                          } else {
                            return overviewChips![index];
                          }
                        }),
                  ),
                ),
                Visibility(
                  visible: utilSectionTitle != null,
                  child: Text(
                    utilSectionTitle ?? '',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
                Visibility(
                  visible: overviewUtilCharts != null &&
                      overviewUtilCharts!.isNotEmpty,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: FMIThemeBase.basePadding3),
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1,
                              crossAxisSpacing: FMIThemeBase.basePadding7,
                              mainAxisSpacing: FMIThemeBase.basePadding5,
                              crossAxisCount: 3),
                      itemCount: (overviewUtilCharts != null)
                          ? overviewUtilCharts!.length
                          : 0,
                      itemBuilder: (context, index) {
                        return FmiOverviewUtilChart(
                          utilChart: FmiOverviewUtilChartModel(
                              overviewUtilCharts![index].utilChart.value,
                              overviewUtilCharts![index].utilChart.total),
                          utilChartLabel:
                              overviewUtilCharts![index].utilChartLabel,
                        );
                      },
                    ),
                  ),
                )
              ]),
        ));
  }
}
