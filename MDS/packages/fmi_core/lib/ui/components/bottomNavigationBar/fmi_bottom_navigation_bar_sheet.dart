import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiBottomNavigationBarSheet extends StatefulWidget {
  const FmiBottomNavigationBarSheet({
    super.key,
    required this.destinations,
    this.startingIndex = 4,
    required this.onTap,
    required this.currentIndex,
    this.showSelectedLabels = true,
    this.showUnselectedLabels = false,
  });

  final List<FmiNavigationDestination> destinations;
  final int currentIndex;
  final int? startingIndex;
  final bool? showUnselectedLabels;
  final bool? showSelectedLabels;
  final Function(int) onTap;
  @override
  State<FmiBottomNavigationBarSheet> createState() =>
      _FmiBottomNavigationBarSheetState();
}

class _FmiBottomNavigationBarSheetState
    extends State<FmiBottomNavigationBarSheet> {
  int startingIndex = 0;
  int currentIndex = 0;
  final int maxRowLength = 3;
  List<FmiNavigationDestination> destinations = [];

  @override
  void initState() {
    startingIndex = widget.startingIndex ?? 4;
    currentIndex = widget.currentIndex;
    destinations = widget.destinations;
    super.initState();
  }

  int getGridViewAxisCount() {
    if (destinations.length > 2) {
      return maxRowLength;
    } else {
      return 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context)
              .colorScheme
              .fmiBaseThemeAltSurfaceInverseAltSurface,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(FMIThemeBase.baseBorderRadiusXLarge),
              topRight: Radius.circular(FMIThemeBase.baseBorderRadiusXLarge))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: FMIThemeBase.basePadding4),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inverseSurface,
                  borderRadius: BorderRadius.circular(
                      FMIThemeBase.baseBorderRadiusLarge)),
              height: FMIThemeBase.baseBorderWidthDefault,
              width: FMIThemeBase.baseContainerDimension30,
            ),
          ),
          const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding6)),
          GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: destinations.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: FMIThemeBase.basePadding2,
                  mainAxisSpacing: FMIThemeBase.basePadding2,
                  mainAxisExtent: FMIThemeBase.baseContainerDimension70,
                  crossAxisCount: getGridViewAxisCount()),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = index + startingIndex;
                      widget.onTap(index + startingIndex);
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        destinations[index].icon != null
                            ? FmiBottomNavigationItem(
                                selectedIcon: FaIcon(
                                  destinations[index].selectedIcon,
                                  size: FMIThemeBase.baseIconMedium,
                                  color: (currentIndex - startingIndex == index)
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                ),
                                icon: FaIcon(
                                  destinations[index].icon,
                                  size: FMIThemeBase.baseIconMedium,
                                  color: (currentIndex - startingIndex == index)
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                ),
                                isSelected:
                                    currentIndex - startingIndex == index)
                            : FmiBottomNavigationItem(
                                icon: SvgPicture.asset(
                                  destinations[index].svgAsset?.assetName
                                      as String,
                                  color: (currentIndex - startingIndex == index)
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                  width: FMIThemeBase.baseIconMedium,
                                  height: FMIThemeBase.baseIconMedium,
                                ),
                                isSelected:
                                    currentIndex - startingIndex == index,
                              ),
                        Visibility(
                          visible: widget.showUnselectedLabels! ||
                              (widget.showSelectedLabels! &&
                                  currentIndex - startingIndex == index),
                          child: Text(destinations[index].label,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                      color: (currentIndex ==
                                              index + startingIndex)
                                          ? Theme.of(context)
                                              .colorScheme
                                              .primary
                                          : Theme.of(context)
                                              .colorScheme
                                              .inverseSurface)),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
