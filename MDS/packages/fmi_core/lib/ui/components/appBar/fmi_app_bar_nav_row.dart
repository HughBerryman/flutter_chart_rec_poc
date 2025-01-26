import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class FmiAppBarNavRow extends StatefulWidget {
  const FmiAppBarNavRow(
      {Key? key,
      required this.destinations,
      this.fab = false,
      this.onDestinationSelected,
      this.fabOnTap,
      required this.hideNavLabels,
      this.selectedIndex,
      required this.fabIcon,
      this.fabTheme})
      : super(key: key);

  final List<FmiNavigationDestination> destinations;
  final bool fab;
  final bool hideNavLabels;
  final Function()? fabOnTap;
  final Function(int)? onDestinationSelected;
  final int? selectedIndex;
  final IconData fabIcon;
  final FabThemeEnum? fabTheme;

  @override
  State<FmiAppBarNavRow> createState() => _FmiAppBarNavRowState();
}

class _FmiAppBarNavRowState extends State<FmiAppBarNavRow> {
  bool isMoreSelected = false;
  List<FmiAppBarNavItemModel> navDestinations = [];
  late BottomNavigationBarItem selectedNavItem;
  late int _currentIndex;
  final int _desktopMaxNavItems = 7;
  final int _laptopMaxNavItems = 4;

  final ValueNotifier<List<FmiNavigationDestination>> _tabsNotifier =
      ValueNotifier<List<FmiNavigationDestination>>([]);

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.selectedIndex ?? 0;
    final _fmiAppBarNavRowProvider =
        Provider.of<FmiAppBarNavRowProvider>(context, listen: false);
    for (int i = 0; i < widget.destinations.length; i++) {
      navDestinations.add(FmiAppBarNavItemModel(
          isSelected: _currentIndex == i,
          item: FmiAppBarNavItem(
              index: i,
              selectedIcon: widget.destinations[i].selectedIcon,
              icon: widget.destinations[i].icon,
              selectedSvgAsset: widget.destinations[i].selectedSvgAsset,
              svgAsset: widget.destinations[i].svgAsset,
              label: widget.destinations[i].label,
              onDestinationSelected: widget.onDestinationSelected,
              hideNavLabels: widget.hideNavLabels,
              onTap: () {
                setState(() {
                  if (widget.onDestinationSelected != null) {
                    widget.onDestinationSelected!(i);
                    _currentIndex = i;
                    for (int j = 0; j < navDestinations.length; j++) {
                      navDestinations[j].isSelected = false;
                    }
                    navDestinations[i].isSelected = true;
                  }
                });
              })));
    }
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _fmiAppBarNavRowProvider.updateIndex(widget.selectedIndex ?? 0);
      _currentIndex = _fmiAppBarNavRowProvider.currentIndex;
    });
  }

  @override
  void dispose() {
    _tabsNotifier.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(FmiAppBarNavRow oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.destinations != oldWidget.destinations) {
      setState(() {
        navDestinations = [];
        for (int i = 0; i < widget.destinations.length; i++) {
          navDestinations.add(FmiAppBarNavItemModel(
              isSelected: _currentIndex == i,
              item: FmiAppBarNavItem(
                  index: i,
                  selectedIcon: widget.destinations[i].selectedIcon,
                  icon: widget.destinations[i].icon,
                  selectedSvgAsset: widget.destinations[i].selectedSvgAsset,
                  svgAsset: widget.destinations[i].svgAsset,
                  label: widget.destinations[i].label,
                  onDestinationSelected: widget.onDestinationSelected,
                  hideNavLabels: widget.hideNavLabels,
                  onTap: () {
                    setState(() {
                      if (widget.onDestinationSelected != null) {
                        widget.onDestinationSelected!(i);
                        _currentIndex = widget.selectedIndex ?? 0;
                        for (int j = 0; j < navDestinations.length; j++) {
                          navDestinations[j].isSelected = false;
                        }
                        navDestinations[i].isSelected = true;
                      }
                    });
                  })));
        }
      });
    }
    if (widget.selectedIndex != oldWidget.selectedIndex) {
      final _fmiAppBarNavRowProvider =
          Provider.of<FmiAppBarNavRowProvider>(context, listen: false);
      SchedulerBinding.instance.addPostFrameCallback((_) {
        _fmiAppBarNavRowProvider.updateIndex(widget.selectedIndex ?? 0);
        _currentIndex = _fmiAppBarNavRowProvider.currentIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _fmiAppBarNavRowProvider =
        Provider.of<FmiAppBarNavRowProvider>(context, listen: true);
    _currentIndex = widget.selectedIndex!;

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: getNavItems(_fmiAppBarNavRowProvider).length,
            itemBuilder: ((context, index) {
              if (_currentIndex == index ||
                  (_currentIndex >=
                          getNavItems(_fmiAppBarNavRowProvider).length &&
                      getNavItems(_fmiAppBarNavRowProvider)[index].item.label ==
                          'More')) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (widget.hideNavLabels)
                          ? 0
                          : FMIThemeBase.basePadding1),
                  child: getSelectedNavItem(index, _fmiAppBarNavRowProvider),
                );
              } else {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (widget.hideNavLabels)
                          ? 0
                          : FMIThemeBase.basePadding1),
                  child: getNavItems(_fmiAppBarNavRowProvider)[index].item,
                );
              }
            })),
        (widget.fab)
            ? Padding(
                padding: const EdgeInsets.only(left: FMIThemeBase.basePadding2),
                child: SizedBox(
                    height: FMIThemeBase.baseContainerDimension48,
                    width: FMIThemeBase.baseContainerDimension48,
                    child: NavigationBarFab(
                        fabIcon: widget.fabIcon,
                        fabOnTap: widget.fabOnTap,
                        fabTheme: widget.fabTheme)),
              )
            : Container()
      ],
    );
  }

  Widget getSelectedNavItem(
      int index, FmiAppBarNavRowProvider _fmiAppBarNavRowProvider) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: (widget.hideNavLabels)
              ? FMIThemeBase.basePadding8
              : FMIThemeBase.basePadding4,
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.bounceIn,
              width: FMIThemeBase.baseContainerDimension50,
              height: FMIThemeBase.baseContainerDimension30,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(
                      FMIThemeBase.baseBorderRadiusXLarge))),
        ),
        getNavItems(_fmiAppBarNavRowProvider)[index].item,
      ],
    );
  }

  List<FmiAppBarNavItemModel> getNavItems(
      FmiAppBarNavRowProvider _fmiAppBarNavRowProvider) {
    List<FmiAppBarNavItemModel> temp;
    if (context.isLarge) {
      if (needOverflowButton()) {
        if (widget.fab == true) {
          temp = navDestinations.sublist(0, _desktopMaxNavItems - 1);
          temp.add(FmiAppBarNavItemModel(
            item: FmiAppBarNavItem(
              onDestinationSelected: widget.onDestinationSelected,
              subListLength: temp.length,
              items: navDestinations.sublist(_desktopMaxNavItems - 1),
              isMoreOption: true,
              selectedIcon: FontAwesomeIcons.solidEllipsis,
              icon: FontAwesomeIcons.lightEllipsis,
              label: 'More',
              hideNavLabels: widget.hideNavLabels,
            ),
            isSelected: _currentIndex > _desktopMaxNavItems - 2,
          ));
          return temp;
        } else {
          temp = navDestinations.sublist(0, _desktopMaxNavItems);
          temp.add(FmiAppBarNavItemModel(
            item: FmiAppBarNavItem(
              onDestinationSelected: widget.onDestinationSelected,
              subListLength: temp.length,
              items: navDestinations.sublist(_desktopMaxNavItems),
              isMoreOption: true,
              selectedIcon: FontAwesomeIcons.solidEllipsis,
              icon: FontAwesomeIcons.lightEllipsis,
              label: 'More',
              hideNavLabels: widget.hideNavLabels,
            ),
            isSelected: _currentIndex > _desktopMaxNavItems - 1,
          ));
          return temp;
        }
      }
      return navDestinations;
    } else if (context.isMedium) {
      if (needOverflowButton()) {
        if (widget.fab == true) {
          temp = navDestinations.sublist(0, _laptopMaxNavItems - 1);
          temp.add(
            FmiAppBarNavItemModel(
              item: FmiAppBarNavItem(
                onDestinationSelected: widget.onDestinationSelected,
                subListLength: temp.length,
                items: navDestinations.sublist(_laptopMaxNavItems - 1),
                isMoreOption: true,
                selectedIcon: FontAwesomeIcons.solidEllipsis,
                icon: FontAwesomeIcons.lightEllipsis,
                label: 'More',
                hideNavLabels: widget.hideNavLabels,
              ),
              isSelected: _currentIndex > _laptopMaxNavItems - 1,
            ),
          );
          return temp;
        } else {
          temp = navDestinations.sublist(0, _laptopMaxNavItems);
          temp.add(
            FmiAppBarNavItemModel(
              item: FmiAppBarNavItem(
                onDestinationSelected: widget.onDestinationSelected,
                subListLength: temp.length,
                items: navDestinations.sublist(_laptopMaxNavItems),
                isMoreOption: true,
                selectedIcon: FontAwesomeIcons.solidEllipsis,
                icon: FontAwesomeIcons.lightEllipsis,
                label: 'More',
                hideNavLabels: widget.hideNavLabels,
              ),
              isSelected: _currentIndex > _laptopMaxNavItems - 2,
            ),
          );
          return temp;
        }
      } else {
        return navDestinations;
      }
    } else {
      return [];
    }
  }

  bool needOverflowButton() {
    if (context.isLarge &&
            widget.destinations.length > _desktopMaxNavItems &&
            widget.fab == false ||
        context.isLarge &&
            widget.destinations.length > _desktopMaxNavItems - 1 &&
            widget.destinations.length != _desktopMaxNavItems &&
            widget.fab == true ||
        context.isMedium &&
            widget.destinations.length > _laptopMaxNavItems + 1) {
      return true;
    } else {
      return false;
    }
  }
}
