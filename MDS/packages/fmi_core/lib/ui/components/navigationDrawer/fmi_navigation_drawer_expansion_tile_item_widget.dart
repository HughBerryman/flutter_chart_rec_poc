import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiNavigationDrawerExpansionTileItemWidget extends StatefulWidget {
  const FmiNavigationDrawerExpansionTileItemWidget(
      {super.key, required this.header});

  final FmiDrawerExpansionTile header;

  @override
  State<FmiNavigationDrawerExpansionTileItemWidget> createState() =>
      _FmiNavigationDrawerExpansionTileItemWidgetState();
}

class _FmiNavigationDrawerExpansionTileItemWidgetState
    extends State<FmiNavigationDrawerExpansionTileItemWidget> {
  double turns = 0.0;
  late final List<FmiDrawerItem> items;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    items = widget.header.children;
  }

  bool isEnabled() {
    int totalEnabled = 0;
    for (var item in items) {
      if (item.enabled == false) {
        totalEnabled++;
      }
    }
    return totalEnabled != items.length && widget.header.enabled;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: ListTileTheme(
        data: ListTileThemeData(
            tileColor: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceInverseAltSurface,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusRound)),
            )),
        child: Opacity(
          opacity: isEnabled()
              ? FMIThemeBase.baseOpacity100
              : FMIThemeBase.baseOpacity40,
          child: ExpansionTile(
            onExpansionChanged: (bool isExpanded) {
              setState(() {
                turns += 0.5;
              });
            },
            collapsedBackgroundColor: Colors.transparent,
            enabled: isEnabled(),
            tilePadding: const EdgeInsets.symmetric(
                vertical: FMIThemeBase.basePadding2,
                horizontal: FMIThemeBase.basePadding12),
            childrenPadding:
                const EdgeInsets.only(left: FMIThemeBase.basePadding8),
            title: Row(children: [
              if (widget.header.leading != null)
                Padding(
                  padding:
                      const EdgeInsets.only(right: FMIThemeBase.basePadding6),
                  child: SizedBox(
                    width: FMIThemeBase.baseIconSmall,
                    child: FaIcon(
                      widget.header.leading!,
                      size: FMIThemeBase.baseIconSmall,
                      color: Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseOnAltSurface,
                    ),
                  ),
                ),
              Expanded(
                child: Text(widget.header.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .fmiBaseThemeAltSurfaceInverseOnAltSurface)),
              ),
            ]),
            trailing: AnimatedRotation(
              turns: turns,
              duration: 300.ms,
              curve: Curves.fastOutSlowIn,
              child: FaIcon(
                FontAwesomeIcons.solidChevronDown,
                size: FMIThemeBase.baseIconXSmall,
                color: Theme.of(context)
                    .colorScheme
                    .fmiBaseThemeAltSurfaceInverseOnAltSurface,
              ),
            ),
            children: items.asMap().entries.map<Widget>((entry) {
              int index = entry.key;
              FmiDrawerItem item = entry.value;
              bool isSelected = widget.header.selectedIndex == index;
              return Container(
                decoration: BoxDecoration(
                    color: isSelected
                        ? Theme.of(context).colorScheme.secondaryContainer
                        : Colors.transparent,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(FMIThemeBase.baseBorderRadiusRound),
                    )),
                child: FmiNavigationDrawerItemWidget(
                  item: item,
                  selected: isSelected,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
