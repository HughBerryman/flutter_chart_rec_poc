import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiBottomNavigationBarWidget extends StatefulWidget {
  const FmiBottomNavigationBarWidget(
      {Key? key,
      required this.currentIndex,
      required this.destinations,
      this.showSelectedLabels = true,
      this.showUnselectedLabels = false,
      this.onTap,
      this.enableFab = false,
      this.onFabTap,
      required this.fabIcon,
      this.fabTheme})
      : super(key: key);

  final List<FmiNavigationDestination> destinations;
  final int currentIndex;
  final bool? showUnselectedLabels;
  final bool? showSelectedLabels;
  final Function(int)? onTap;
  final bool? enableFab;
  final Function()? onFabTap;
  final IconData fabIcon;
  final FabThemeEnum? fabTheme;

  @override
  State<FmiBottomNavigationBarWidget> createState() =>
      _FmiBottomNavigationBarWidgetState();
}

class _FmiBottomNavigationBarWidgetState
    extends State<FmiBottomNavigationBarWidget> {
  bool isOpen = false;
  bool isOverflowed = false;
  @override
  void didUpdateWidget(FmiBottomNavigationBarWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentIndex != oldWidget.currentIndex && isOpen) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    int moreIndex = 0;
    int slotsAvailable = 5;
    int destinationLength = 5;

    if (widget.enableFab!) {
      slotsAvailable--;
    }
    if (widget.destinations.length < 5) {
      destinationLength = widget.destinations.length;
      slotsAvailable = widget.destinations.length;
      if (widget.enableFab!) {
        destinationLength++;
      }
    }
    moreIndex = slotsAvailable - 1;

    void _onItemTapped(int index) {
      widget.onTap!(index);
      Navigator.pop(context, true);
    }

    List<BottomNavigationBarItem> getBottomNavigationBarItem(
        List<FmiNavigationDestination> destinations) {
      List<BottomNavigationBarItem> bottomNavigationBarItems = [];
      for (int i = 0; i < destinationLength; i++) {
        if (destinations.length > slotsAvailable && i == moreIndex) {
          isOverflowed = true;
          bottomNavigationBarItems.add(BottomNavigationBarItem(
              icon: Padding(
                padding: getPadding(),
                child: const FaIcon(
                  FontAwesomeIcons.lightEllipsis,
                  size: FMIThemeBase.baseIconMedium,
                ),
              ),
              activeIcon: FmiBottomNavigationItem(
                showSelectedLabels: widget.showSelectedLabels,
                icon: Padding(
                  padding: getPadding(),
                  child: const FaIcon(
                    FontAwesomeIcons.solidEllipsis,
                    size: FMIThemeBase.baseIconMedium,
                  ),
                ),
                isSelected: widget.currentIndex >= moreIndex,
              ),
              label: 'More'));
        } else if (widget.enableFab! && i == slotsAvailable) {
          bottomNavigationBarItems.add(BottomNavigationBarItem(
              label: '',
              icon: Padding(
                  padding: EdgeInsets.only(
                      top: (!widget.showSelectedLabels! ||
                              !widget.showUnselectedLabels!)
                          ? FMIThemeBase.basePadding0
                          : FMIThemeBase.basePadding8),
                  child: Container(
                      alignment: Alignment.center,
                      height: FMIThemeBase.baseContainerDimension48,
                      width: FMIThemeBase.baseContainerDimension48,
                      child: NavigationBarFab(
                        fabTheme: widget.fabTheme,
                        fabOnTap: widget.onFabTap,
                        fabIcon: widget.fabIcon,
                      )))));
        } else {
          bottomNavigationBarItems.add(BottomNavigationBarItem(
              icon: destinations[i].icon != null
                  ? FmiBottomNavigationItem(
                      showSelectedLabels: widget.showSelectedLabels,
                      isSelected: widget.currentIndex == i,
                      icon: Padding(
                        padding: getPadding(),
                        child: FaIcon(destinations[i].icon,
                            size: FMIThemeBase.baseIconMedium),
                      ),
                    )
                  : FmiBottomNavigationItem(
                      showSelectedLabels: widget.showSelectedLabels,
                      isSelected: widget.currentIndex == i,
                      icon: Padding(
                        padding: getPadding(),
                        child: SvgPicture.asset(
                            destinations[i].svgAsset?.assetName as String,
                            color: (widget.currentIndex == i)
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context)
                                    .colorScheme
                                    .fmiBaseThemeAltSurfaceInverseOnAltSurface,
                            width: FMIThemeBase.baseIconMedium,
                            height: FMIThemeBase.baseIconMedium,
                            package: destinations[i].svgAsset?.package),
                      )),
              label: destinations[i].label,
              activeIcon: destinations[i].selectedIcon != null
                  ? FmiBottomNavigationItem(
                      showSelectedLabels: widget.showSelectedLabels,
                      isSelected: widget.currentIndex == i,
                      icon: Padding(
                        padding: getPadding(),
                        child: FaIcon(destinations[i].selectedIcon,
                            size: FMIThemeBase.baseIconMedium),
                      ),
                    )
                  : null));
        }
      }

      return bottomNavigationBarItems;
    }

    showNavigationBottomSheet(
      BuildContext context,
      int currentIndex,
      List<FmiNavigationDestination> destinations,
      Function(int) onTap,
      int? startingIndex,
    ) {
      const int itemRowLength = 3;
      double maxHeight =
          ((destinations.length - moreIndex) / itemRowLength).ceil() *
                  FMIThemeBase.baseContainerDimension70 +
              FMIThemeBase.baseContainerDimension70 +
              FMIThemeBase.basePadding7;
      return showModalBottomSheet(
          context: context,
          constraints: BoxConstraints(maxHeight: maxHeight),
          builder: (context) => FmiBottomNavigationBarSheet(
              showSelectedLabels: widget.showSelectedLabels,
              showUnselectedLabels: widget.showUnselectedLabels,
              currentIndex: currentIndex,
              destinations: destinations.sublist(moreIndex),
              startingIndex: startingIndex ?? moreIndex,
              onTap: onTap)).whenComplete(() => isOpen = false);
    }

    return BottomNavigationBar(
      backgroundColor:
          Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseAltSurface,
      type: BottomNavigationBarType.fixed,
      currentIndex: (widget.currentIndex >= moreIndex && isOverflowed)
          ? moreIndex
          : widget.currentIndex,
      onTap: (index) {
        if (getBottomNavigationBarItem(widget.destinations)[index]
                .label!
                .toLowerCase() ==
            'more') {
          showNavigationBottomSheet(context, widget.currentIndex,
              widget.destinations, _onItemTapped, moreIndex);
          isOpen = true;
        } else {
          if (index == widget.destinations.length && widget.enableFab!) {
            widget.onFabTap!();
          } else {
            widget.onTap!(index);
          }
        }
      },
      showSelectedLabels: widget.showSelectedLabels,
      showUnselectedLabels: widget.showUnselectedLabels,
      items: getBottomNavigationBarItem(widget.destinations),
    );
  }

  EdgeInsets getPadding() {
    if (!widget.showSelectedLabels! && !widget.showUnselectedLabels!) {
      return const EdgeInsets.only(
          top: FMIThemeBase.basePadding5, bottom: FMIThemeBase.basePadding4);
    }
    return const EdgeInsets.only(
        top: FMIThemeBase.basePadding4, bottom: FMIThemeBase.basePadding4);
  }
}
