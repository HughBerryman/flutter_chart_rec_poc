import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiBottomNavigationItem extends StatelessWidget {
  final bool isSelected;
  final Widget? selectedIcon;
  final Widget icon;
  final bool? showSelectedLabels;
  const FmiBottomNavigationItem(
      {super.key,
      required this.isSelected,
      required this.icon,
      this.selectedIcon,
      this.showSelectedLabels = true});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Visibility(
          visible: isSelected,
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
        Padding(
          padding: EdgeInsets.only(
              top: (showSelectedLabels!)
                  ? FMIThemeBase.basePadding1
                  : FMIThemeBase.basePadding0),
          child: selectedIcon != null && isSelected ? selectedIcon! : icon,
        )
      ],
    );
  }
}
