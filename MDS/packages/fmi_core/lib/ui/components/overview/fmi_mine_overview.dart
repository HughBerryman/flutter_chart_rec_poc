import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiMineOverview extends StatelessWidget {
  const FmiMineOverview(
      {super.key,
      required this.overviewIcon,
      required this.overviewTitle,
      required this.overviewBars,
      this.onTap,
      this.trailing,
      this.menuItems});
  final IconData overviewIcon;
  final String overviewTitle;
  final Widget? trailing;
  final Function()? onTap;
  final List<FmiOverviewBar> overviewBars;
  final List<PopupMenuItem>? menuItems;
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
                    FaIcon(overviewIcon,
                        color: Theme.of(context).colorScheme.secondary,
                        size: FMIThemeBase.baseIconMedium),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: FMIThemeBase.basePadding7),
                      child: Text(
                        overviewTitle,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ),
                    const Spacer(),
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
                itemBuilder: (context, index) {
                  return overviewBars[index];
                },
                itemCount: overviewBars.length,
                shrinkWrap: true,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: FMIThemeBase.basePadding5,
                      bottom: FMIThemeBase.basePadding5),
                  child: trailing),
            ]),
      ),
    );
  }
}
