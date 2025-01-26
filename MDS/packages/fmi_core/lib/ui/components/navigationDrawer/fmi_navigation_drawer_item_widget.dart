import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/extensions/color_scheme_extension.dart';
import 'package:fmi_core/models/navigationDrawer/navigationDrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiNavigationDrawerItemWidget extends StatefulWidget {
  const FmiNavigationDrawerItemWidget(
      {super.key, required this.item, this.selected = false});

  final FmiDrawerItem item;
  final bool selected;

  @override
  State<FmiNavigationDrawerItemWidget> createState() =>
      _FmiNavigationDrawerItemWidgetState();
}

class _FmiNavigationDrawerItemWidgetState
    extends State<FmiNavigationDrawerItemWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(
          Radius.circular(FMIThemeBase.baseBorderRadiusRound)),
      onTap: !widget.item.enabled
          ? null
          : widget.item.onTapped != null
              ? () => widget.item.onTapped!(widget.item)
              : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: FMIThemeBase.basePadding9,
            horizontal: FMIThemeBase.basePadding12),
        child: Opacity(
          opacity: widget.item.enabled
              ? FMIThemeBase.baseOpacity100
              : FMIThemeBase.baseOpacity40,
          child: Row(
            children: [
              if (widget.item.leading != null)
                Padding(
                  padding:
                      const EdgeInsets.only(right: FMIThemeBase.basePadding6),
                  child: SizedBox(
                    width: FMIThemeBase.baseIconSmall,
                    child: FaIcon(
                      widget.item.leading!,
                      size: FMIThemeBase.baseIconSmall,
                      color: Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseOnAltSurface,
                    ),
                  ),
                ),
              Expanded(
                child: Text(widget.item.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color:
                            Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseOnAltSurface,
                        fontWeight: widget.selected
                            ? FMIThemeBase.baseFontWeightsSemibold
                            : null)),
              ),
              if (widget.item.trailing != null)
                IgnorePointer(
                    ignoring: !widget.item.enabled,
                    child: widget.item.trailing!)
            ],
          ),
        ),
      ),
    );
  }
}
