import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class FmiAppBarNavItem extends StatefulWidget {
  const FmiAppBarNavItem({
    super.key,
    this.selectedIcon,
    this.icon,
    this.selectedSvgAsset,
    this.svgAsset,
    required this.label,
    this.onTap,
    this.isMoreOption = false,
    this.items,
    this.subListLength = 0,
    this.onDestinationSelected,
    this.index = -1,
    required this.hideNavLabels,
  });

  final IconData? selectedIcon;
  final IconData? icon;
  final SvgAsset? selectedSvgAsset;
  final SvgAsset? svgAsset;
  final String label;
  final Function()? onTap;
  final bool? isMoreOption;
  final List<FmiAppBarNavItemModel>? items;
  final int? subListLength;
  final int? index;
  final bool hideNavLabels;
  final Function(int)? onDestinationSelected;
  @override
  State<FmiAppBarNavItem> createState() => _FmiAppBarNavItemState();
}

class _FmiAppBarNavItemState extends State<FmiAppBarNavItem> {
  List<PopupMenuItem> dropDownMenuItems = [];
  int selectedIndex = -1;
  bool isMoreSelected = false;

  @override
  Widget build(BuildContext context) {
    final _fmiAppBarNavRowProvider =
        Provider.of<FmiAppBarNavRowProvider>(context);

    Color getSelectedColor() => Theme.of(context).colorScheme.primary;

    Color getUnselectedColor() => Theme.of(context).colorScheme.inverseSurface;

    if (widget.isMoreOption! && widget.items != null) {
      dropDownMenuItems = [];
      for (int i = 0; i < widget.items!.length; i++) {
        dropDownMenuItems.add(PopupMenuItem(
          padding:
              const EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding4),
          onTap: () {
            setState(() {
              widget.onDestinationSelected!(i + widget.subListLength!);
            });
          },
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: FMIThemeBase.baseContainerDimension50,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Visibility(
                    visible: checkVisible(_fmiAppBarNavRowProvider, i),
                    child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.bounceIn,
                        width: FMIThemeBase.baseContainerDimension50,
                        height: FMIThemeBase.baseContainerDimension30,
                        decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            borderRadius: BorderRadius.circular(
                                FMIThemeBase.baseBorderRadiusXLarge))),
                  ),
                  (widget.items![i].item.icon != null)
                      ? FaIcon(
                          checkVisible(_fmiAppBarNavRowProvider, i)
                              ? widget.items![i].item.selectedIcon ??
                                  widget.items![i].item.icon
                              : widget.items![i].item.icon,
                          size: FMIThemeBase.baseIconMedium,
                          color: checkVisible(_fmiAppBarNavRowProvider, i)
                              ? getSelectedColor()
                              : getUnselectedColor(),
                        )
                      : SvgPicture.asset(
                          checkVisible(_fmiAppBarNavRowProvider, i)
                              ? widget.items![i].item.selectedSvgAsset
                                      ?.assetName ??
                                  widget.items![i].item.svgAsset!.assetName
                              : widget.items![i].item.svgAsset!.assetName,
                          color: checkVisible(_fmiAppBarNavRowProvider, i)
                              ? getSelectedColor()
                              : getUnselectedColor(),
                          width: FMIThemeBase.baseIconMedium,
                          height: FMIThemeBase.baseIconMedium,
                          package: widget.items![i].item.svgAsset!.package),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: FMIThemeBase.basePadding2)),
            (!widget.hideNavLabels)
                ? Expanded(
                    flex: 3,
                    child: Text(widget.items![i].item.label,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                              color: checkVisible(_fmiAppBarNavRowProvider, i)
                                  ? getSelectedColor()
                                  : getUnselectedColor(),
                            )),
                  )
                : Container(),
          ]),
        ));
      }

      return getMoreButton(context, _fmiAppBarNavRowProvider);
    } else {
      return getNavItem(context);
    }
  }

  Widget getMoreButton(
      BuildContext context, FmiAppBarNavRowProvider _fmiAppBarNavRowProvider) {
    return SizedBox(
      height: FMIThemeBase.baseContainerDimension72,
      width: (widget.hideNavLabels)
          ? FMIThemeBase.baseContainerDimension70
          : FMIThemeBase.baseContainerDimension90,
      child: PopupMenuButton(
        color: Theme.of(context)
            .colorScheme
            .fmiBaseThemeAltSurfaceInverseAltSurface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(FMIThemeBase.baseBorderRadiusXLarge)),
        position: PopupMenuPosition.under,
        child: Container(
          alignment: Alignment.topCenter,
          height: FMIThemeBase.baseContainerDimension72,
          width: (widget.hideNavLabels)
              ? FMIThemeBase.baseContainerDimension70
              : FMIThemeBase.baseContainerDimension90,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                (widget.icon != null)
                    ? FaIcon(widget.icon,
                        size: FMIThemeBase.baseIconMedium,
                        color: (getMoreSelected(_fmiAppBarNavRowProvider))
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.inverseSurface)
                    : SvgPicture.asset(widget.svgAsset!.assetName,
                        color: (getMoreSelected(_fmiAppBarNavRowProvider))
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.inverseSurface,
                        width: FMIThemeBase.baseIconMedium,
                        height: FMIThemeBase.baseIconMedium,
                        package: widget.svgAsset!.package),
                const Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: FMIThemeBase.basePadding2)),
                (!widget.hideNavLabels)
                    ? Text(
                        widget.label,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                color:
                                    (getMoreSelected(_fmiAppBarNavRowProvider))
                                        ? Theme.of(context).colorScheme.primary
                                        : Theme.of(context)
                                            .colorScheme
                                            .inverseSurface),
                      )
                    : Container(),
              ]),
        ),
        tooltip: '',
        itemBuilder: (BuildContext context) {
          return dropDownMenuItems;
        },
      ),
    );
  }

  InkWell getNavItem(BuildContext context) {
    return InkWell(
      mouseCursor: getMouseCursor(),
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        height: FMIThemeBase.baseContainerDimension72,
        width: (widget.hideNavLabels)
            ? FMIThemeBase.baseContainerDimension70
            : FMIThemeBase.baseContainerDimension90,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              getIcon(context),
              const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: FMIThemeBase.basePadding2)),
              getLabel(context)
            ]),
      ),
    );
  }

  bool getMoreSelected(FmiAppBarNavRowProvider _fmiAppBarNavRowProvider) {
    return _fmiAppBarNavRowProvider.currentIndex >= widget.subListLength!;
  }

  bool checkVisible(FmiAppBarNavRowProvider _fmiAppBarNavRowProvider, int i) {
    return _fmiAppBarNavRowProvider.currentIndex >= widget.subListLength! &&
        widget.subListLength! > 0 &&
        _fmiAppBarNavRowProvider.currentIndex == widget.subListLength! + i;
  }

  Widget getIcon(BuildContext context) {
    final _fmiAppBarNavRowProvider =
        Provider.of<FmiAppBarNavRowProvider>(context);
    if (widget.icon != null) {
      return FaIcon(
          (_fmiAppBarNavRowProvider.currentIndex == widget.index!)
              ? widget.selectedIcon ?? widget.icon
              : widget.icon,
          size: FMIThemeBase.baseIconMedium,
          color: (widget.index != -1 &&
                  widget.index == _fmiAppBarNavRowProvider.currentIndex)
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.inverseSurface);
    } else {
      return SvgPicture.asset(
          (_fmiAppBarNavRowProvider.currentIndex == widget.index!)
              ? (widget.selectedSvgAsset != null)
                  ? widget.selectedSvgAsset!.assetName
                  : widget.svgAsset!.assetName
              : widget.svgAsset!.assetName,
          color: (widget.index != -1 &&
                  widget.index == _fmiAppBarNavRowProvider.currentIndex)
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.inverseSurface,
          width: FMIThemeBase.baseIconMedium,
          height: FMIThemeBase.baseIconMedium,
          package: widget.svgAsset!.package);
    }
  }

  Widget getLabel(BuildContext context) {
    final _fmiAppBarNavRowProvider =
        Provider.of<FmiAppBarNavRowProvider>(context);
    if (widget.hideNavLabels) {
      return Container();
    }
    return Text(widget.label,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: (widget.index != -1 &&
                    widget.index == _fmiAppBarNavRowProvider.currentIndex)
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.inverseSurface));
  }

  MouseCursor getMouseCursor() {
    if (widget.onTap != null) {
      return SystemMouseCursors.click;
    } else {
      return SystemMouseCursors.basic;
    }
  }
}
