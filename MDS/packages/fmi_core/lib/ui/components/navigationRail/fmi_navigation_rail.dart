import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiNavigationRail extends StatefulWidget {
  const FmiNavigationRail(
      {Key? key,
      required this.selectedIndex,
      required this.destinations,
      this.labelType,
      this.leading,
      this.trailing,
      this.isFooter = false,
      this.onDestinationSelected,
      @Deprecated(
          'No longer used and will be removed in future artifact update')
      this.backgroundColor = ScaffoldComponentColor.primary,
      this.showElevation = true})
      : super(key: key);

  final List<FmiNavigationDestination> destinations;
  final int selectedIndex;
  final NavigationRailLabelType? labelType;
  final Widget? leading;
  final Widget? trailing;
  final bool? isFooter;
  final Function(int)? onDestinationSelected;
  final bool? showElevation;
  final ScaffoldComponentColor? backgroundColor;

  @override
  State<FmiNavigationRail> createState() => _FmiNavigationRailState();
}

class _FmiNavigationRailState extends State<FmiNavigationRail> {
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
        backgroundColor: Theme.of(context)
            .colorScheme
            .fmiBaseThemeAltSurfaceInverseAltSurface,
        indicatorColor: Theme.of(context).colorScheme.secondaryContainer,
        elevation:
            (widget.showElevation!) ? FMIThemeBase.baseElevationDouble3 : null,
        labelType: widget.labelType,
        selectedIndex: widget.selectedIndex,
        leading: widget.leading == null
            ? null
            : Padding(
                padding: const EdgeInsets.only(
                    top: FMIThemeBase.basePadding15,
                    bottom: FMIThemeBase.basePadding15),
                child: widget.leading,
              ),
        trailing: widget.isFooter!
            ? Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: FMIThemeBase.basePaddingLarge,
                        bottom: FMIThemeBase.basePaddingLarge),
                    child: widget.trailing,
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(
                    top: FMIThemeBase.basePaddingLarge,
                    bottom: FMIThemeBase.basePaddingLarge),
                child: widget.trailing,
              ),
        destinations: <NavigationRailDestination>[
          for (int i = 0; i < widget.destinations.length; i++)
            NavigationRailDestination(
                padding:
                    const EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
                icon: getIcon(widget.destinations[i], false),
                label: Text(widget.destinations[i].label,
                    textAlign: TextAlign.center),
                selectedIcon: getIcon(widget.destinations[i], true))
        ],
        onDestinationSelected: widget.onDestinationSelected);
  }

  Widget getIcon(FmiNavigationDestination destination, bool isSelected) {
    Widget child;

    if (isSelected) {
      if (destination.selectedIcon != null) {
        child = FaIcon(destination.selectedIcon,
            size: FMIThemeBase.baseIconMedium,
            color: Theme.of(context).colorScheme.primary);
      } else if (destination.selectedSvgAsset != null) {
        child = SvgPicture.asset(
          destination.selectedSvgAsset?.assetName as String,
          width: FMIThemeBase.baseIconMedium,
          height: FMIThemeBase.baseIconMedium,
          package: destination.selectedSvgAsset?.package,
          color: Theme.of(context).colorScheme.primary,
        );
      } else if (destination.icon != null) {
        child = FaIcon(destination.icon,
            size: FMIThemeBase.baseIconMedium,
            color: Theme.of(context).colorScheme.primary);
      } else {
        child = SvgPicture.asset(
          destination.svgAsset?.assetName as String,
          width: FMIThemeBase.baseIconMedium,
          height: FMIThemeBase.baseIconMedium,
          package: destination.svgAsset?.package,
          color: Theme.of(context).colorScheme.primary,
        );
      }
    } else {
      if (destination.icon != null) {
        child = FaIcon(destination.icon,
            size: FMIThemeBase.baseIconMedium,
            color: Theme.of(context).colorScheme.inverseSurface);
      } else {
        child = SvgPicture.asset(
          destination.svgAsset?.assetName as String,
          width: FMIThemeBase.baseIconMedium,
          height: FMIThemeBase.baseIconMedium,
          package: destination.svgAsset?.package,
          color: Theme.of(context).colorScheme.inverseSurface
        );
      }
    }

    if (destination.useBadge) {
      return FmiBadge(
          backgroundColor: BadgeColor.danger,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding3, vertical: FMIThemeBase.basePadding1),
            child: child,
          ),
          );
    } else {
      return child;
    }
  }
}
