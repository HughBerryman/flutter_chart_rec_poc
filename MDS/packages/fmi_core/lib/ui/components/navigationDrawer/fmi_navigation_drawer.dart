import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiNavigationDrawer extends StatefulWidget {
  const FmiNavigationDrawer(
      {this.leading,
      required this.title,
      this.subtitle,
      required this.items,
      this.footer,
      super.key});

  final FmiAvatar? leading;
  final String title;
  final String? subtitle;
  final List<FmiDrawerItem> items;
  final FmiDrawerItem? footer;

  @override
  State<FmiNavigationDrawer> createState() => _FmiNavigationDrawerState();
}

class _FmiNavigationDrawerState extends State<FmiNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:
          Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseAltSurface,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: FMIThemeBase.basePadding15,
                horizontal: FMIThemeBase.basePadding12,
              ),
              child: Row(
                children: [
                  if (widget.leading != null)
                    Padding(
                      padding: const EdgeInsets.only(
                          right: FMIThemeBase.basePadding8),
                      child: widget.leading!,
                    ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title.toTitleCase(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .fmiBaseThemeAltSurfaceInverseOnAltSurface),
                        ),
                        if (widget.subtitle != null)
                          Text(
                            widget.subtitle!.toTitleCase(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .fmiBaseThemeAltSurfaceInverseOnAltSurface),
                          )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: FMIThemeBase.baseBorderWidthThin,
              height: FMIThemeBase.baseBorderWidthThin,
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeSecondaryInverseSecondary,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: widget.items.length,
                  itemBuilder: (context, index) {
                    var item = widget.items[index];
                    return Padding(
                      padding: index == widget.items.length - 1
                          ? const EdgeInsets.only(
                              right: FMIThemeBase.basePadding6,
                              left: FMIThemeBase.basePadding6,
                              bottom: FMIThemeBase.basePadding12)
                          : const EdgeInsets.symmetric(
                              horizontal: FMIThemeBase.basePadding6),
                      child: item.runtimeType == FmiDrawerExpansionTile
                          ? FmiNavigationDrawerExpansionTileItemWidget(
                              header: item as FmiDrawerExpansionTile,
                            )
                          : item.runtimeType == FmiDrawerLabel
                              ? FmiNavigationDrawerLabelWidget(
                                  item: item as FmiDrawerLabel,
                                )
                              : FmiNavigationDrawerItemWidget(item: item),
                    );
                  }),
            ),
            if (widget.footer != null)
              Divider(
                thickness: FMIThemeBase.baseBorderWidthThin,
                height: FMIThemeBase.baseBorderWidthThin,
                color: Theme.of(context)
                    .colorScheme
                    .fmiBaseThemeSecondaryInverseSecondary,
              ),
            if (widget.footer != null)
              Padding(
                padding: const EdgeInsets.only(
                    top: FMIThemeBase.basePadding3,
                    right: FMIThemeBase.basePadding6,
                    left: FMIThemeBase.basePadding6,
                    bottom: FMIThemeBase.basePadding5),
                child: FmiNavigationDrawerItemWidget(item: widget.footer!),
              )
          ],
        ),
      ),
    );
  }
}
