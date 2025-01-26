import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiAppBarActionRow extends StatefulWidget {
  const FmiAppBarActionRow(
      {Key? key,
      required this.allItems,
      required this.destinations,
      this.fab = false,
      required this.showActionMenuBadge,
      required this.actionMenuBadgeColor})
      : super(key: key);

  final List<AppBarTopComponent> allItems;
  final List<FmiNavigationDestination> destinations;
  final bool? fab;
  final bool showActionMenuBadge;
  final BadgeColor actionMenuBadgeColor;

  @override
  State<FmiAppBarActionRow> createState() => _FmiAppBarActionRowState();
}

class _FmiAppBarActionRowState extends State<FmiAppBarActionRow> {
  final int totalLargeSlots = 9;
  final int totalMediumSlots = 6;
  final int totalSmallSlots = 3;
  final int totalXSmallSlots = 2;
  final ValueNotifier<List<AppBarTopComponent>> _allItemsNotifier =
      ValueNotifier<List<AppBarTopComponent>>([]);
  late List<AppBarTopComponent> items;
  @override
  void initState() {
    super.initState();
    items = widget.allItems;
    _allItemsNotifier.value = widget.allItems;
  }

  @override
  void dispose() {
    _allItemsNotifier.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(FmiAppBarActionRow oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.allItems != oldWidget.allItems) {
      setState(() {
        items = widget.allItems;
        _allItemsNotifier.value = widget.allItems;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int totalRemainingSlots = 0;
    if (context.isLarge) {
      totalRemainingSlots = totalLargeSlots - widget.destinations.length;
      if (widget.fab == true) {
        totalRemainingSlots--;
      }
    } else if (context.isMedium) {
      totalRemainingSlots = totalMediumSlots - widget.destinations.length;
      if (widget.fab == true) {
        totalRemainingSlots--;
      }
    } else if (context.isSmall) {
      totalRemainingSlots = totalSmallSlots;
    } else {
      totalRemainingSlots = totalXSmallSlots;
    }
    return getItems(context, totalRemainingSlots);
  }

  Widget getItems(BuildContext context, int totalRemainingSlots) {
    int localTotalRemainingSlots = totalRemainingSlots;
    List<Widget> remainingItems = [];
    int index = 0;
    while (localTotalRemainingSlots > 1 && index < items.length - 1) {
      remainingItems.add(Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding2),
        child: items[index++].component ?? Container(),
      ));
      localTotalRemainingSlots--;
    }

    if (index == items.length - 1) {
      remainingItems.add(Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding2),
        child: items[index++].component ?? Container(),
      ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(children: remainingItems),
        Visibility(
            visible: (index < items.length),
            child: Stack(
              children: [
                PopupMenuButton(
                  color: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeAltSurfaceInverseAltSurface,
                  surfaceTintColor: Colors.transparent,
                  icon: FaIcon(FontAwesomeIcons.ellipsisVertical,
                      color: Theme.of(context).colorScheme.inverseSurface),
                  itemBuilder: (context) {
                    return items
                        .sublist(index, items.length)
                        .map((e) => PopupMenuItem(
                              onTap: e.onTap,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: e.label),
                                ],
                              ),
                            ))
                        .toList();
                  },
                ),
                if (widget.showActionMenuBadge)
                  Positioned(
                    left: 28,
                    top: 4,
                    child: FmiBadge(
                        size: BadgeSize.regular,
                        backgroundColor: widget.actionMenuBadgeColor),
                  )
              ],
            )),
      ],
    );
  }
}
