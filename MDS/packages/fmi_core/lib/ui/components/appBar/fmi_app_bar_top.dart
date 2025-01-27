import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class FmiAppBarTop extends StatefulWidget {
  const FmiAppBarTop(
      {super.key,
      this.leading,
      this.title,
      @Deprecated(
          'No longer used and will be removed in future artifact update')
      this.subtitle,
      this.actionItems,
      this.iconItems,
      @Deprecated(
          'No longer used and will be removed in future artifact update')
      this.backgroundColor = ScaffoldComponentColor.primary,
      this.imageSlot,
      this.destinations,
      this.fab = false,
      this.floating = false,
      this.onDestinationSelected,
      this.fabOnTap,
      this.hideNavLabels = false,
      this.selectedIndex = 0,
      this.pinned = false,
      @Deprecated(
          'No longer used and will be removed in future artifact update')
      this.leadingWidth,
      this.isElevated = true,
      this.showActionMenuBadge = false,
      this.actionMenuBadgeColor = BadgeColor.danger,
      this.fabIcon = FontAwesomeIcons.solidRocket,
      this.fabTheme})
      : assert((title != null || imageSlot != null),
            'One of the parameters must be provided');

  final Widget? leading;
  final Widget? imageSlot;
  final String? title;
  @Deprecated('No longer used and will be removed in future artifact update')
  final ScaffoldComponentColor? backgroundColor;
  @Deprecated('No longer used and will be removed in future artifact update')
  final String? subtitle;
  final List<AppBarTopComponent>? actionItems;
  final List<AppBarTopComponent>? iconItems;
  @Deprecated('No longer used and will be removed in future artifact update')
  final double? leadingWidth;
  final bool? fab;
  final bool? floating;
  final bool? pinned;
  final bool? hideNavLabels;
  final int? selectedIndex;
  final List<FmiNavigationDestination>? destinations;
  final Function()? fabOnTap;
  final Function(int)? onDestinationSelected;
  final bool? isElevated;
  final bool? showActionMenuBadge;
  final BadgeColor? actionMenuBadgeColor;
  final IconData? fabIcon;
  final FabThemeEnum? fabTheme;

  @override
  State<FmiAppBarTop> createState() => _FmiAppBarTopState();
}

class _FmiAppBarTopState extends State<FmiAppBarTop>
    with TickerProviderStateMixin {
  final ValueNotifier<List<FmiNavigationDestination>> _tabsNotifier =
      ValueNotifier<List<FmiNavigationDestination>>([]);
  final ValueNotifier<List<AppBarTopComponent>> _actionItemsNotifier =
      ValueNotifier<List<AppBarTopComponent>>([]);
  final ValueNotifier<List<AppBarTopComponent>> _iconItemsNotifier =
      ValueNotifier<List<AppBarTopComponent>>([]);
  List<AppBarTopComponent> allItems = [];
  List<Widget> allItemsWidget = [];

  @override
  initState() {
    super.initState();
    if (widget.actionItems != null) {
      allItems.addAll(widget.actionItems!);
      allItemsWidget
          .addAll(widget.actionItems!.map((e) => e.component ?? Container()));
    }
    if (widget.iconItems != null) {
      allItems.addAll(widget.iconItems!);
      allItemsWidget
          .addAll(widget.iconItems!.map((e) => e.component ?? Container()));
    }

    if (allItems.length > 6) {
      throw Exception(
          "The number of actionItems and iconItems combined cannot exceed 6");
    }
    _tabsNotifier.value = widget.destinations ?? [];
    _actionItemsNotifier.value = widget.actionItems ?? [];
    _iconItemsNotifier.value = widget.iconItems ?? [];
  }

  @override
  void dispose() {
    _tabsNotifier.dispose();
    _actionItemsNotifier.dispose();
    _iconItemsNotifier.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(FmiAppBarTop oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.actionItems != oldWidget.actionItems ||
        widget.iconItems != oldWidget.iconItems) {
      updateItems();
      _tabsNotifier.value = widget.destinations ?? [];
      _actionItemsNotifier.value = widget.actionItems ?? [];
      _iconItemsNotifier.value = widget.iconItems ?? [];
    }
  }

  updateItems() {
    allItems = [];
    allItemsWidget = [];

    if (widget.actionItems != null) {
      allItems.addAll(widget.actionItems!);
      allItemsWidget
          .addAll(widget.actionItems!.map((e) => e.component ?? Container()));
    }
    if (widget.iconItems != null) {
      allItems.addAll(widget.iconItems!);
      allItemsWidget
          .addAll(widget.iconItems!.map((e) => e.component ?? Container()));
    }

    if (allItems.length > 6) {
      throw Exception(
          "The number of actionItems and iconItems combined cannot exceed 6");
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget getAppBarItems(
        BuildContext context, List<FmiNavigationDestination> destinations) {
      return Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  getTitle(context),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: (context.isLarge)
                              ? FMIThemeBase.basePadding4
                              : (context.isMedium)
                                  ? FMIThemeBase.basePadding2
                                  : FMIThemeBase.basePadding0)),
                  (destinations.isNotEmpty &&
                          (context.isLarge || context.isMedium))
                      ? FmiAppBarNavRow(
                          selectedIndex: widget.selectedIndex,
                          destinations: destinations,
                          fab: widget.fab!,
                          fabOnTap: widget.fabOnTap,
                          fabIcon: widget.fabIcon!,
                          fabTheme: widget.fabTheme,
                          hideNavLabels: widget.hideNavLabels!,
                          onDestinationSelected: widget.onDestinationSelected,
                        )
                      : Container(),
                ],
              ),
            ),
            (allItems.isNotEmpty)
                ? FmiAppBarActionRow(
                    allItems: allItems,
                    destinations: destinations,
                    fab: widget.fab,
                    showActionMenuBadge: widget.showActionMenuBadge!,
                    actionMenuBadgeColor: widget.actionMenuBadgeColor!,
                  )
                : Container(),
          ],
        ),
      );
    }

    if (widget.floating! || widget.pinned!) {
      return ChangeNotifierProvider(
        create: (_) => FmiAppBarNavRowProvider(),
        child: SliverAppBar(
            iconTheme: Theme.of(context).iconTheme.copyWith(
                  size: FMIThemeBase.baseIconMedium,
                ),
            actionsIconTheme: Theme.of(context).iconTheme.copyWith(
                  size: FMIThemeBase.baseIconMedium,
                ),
            elevation: widget.isElevated!
                ? FMIThemeBase.baseElevationDouble2
                : FMIThemeBase.baseElevationDouble0,
            shadowColor: Theme.of(context).colorScheme.outline,
            toolbarHeight: FMIThemeBase.baseContainerDimension72,
            automaticallyImplyLeading: false,
            centerTitle: false,
            titleSpacing: FMIThemeBase.baseGap0,
            pinned: widget.pinned!,
            snap: (widget.floating!) ? true : false,
            floating: widget.floating!,
            backgroundColor: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceInverseAltSurface,
            surfaceTintColor: Colors.transparent,
            actions: [
              Expanded(
                child: getAppBarItems(context, widget.destinations ?? []),
              ),
            ]),
      );
    }

    return ChangeNotifierProvider(
      create: (_) => FmiAppBarNavRowProvider(),
      child: AppBar(
          iconTheme: Theme.of(context).iconTheme.copyWith(
                size: FMIThemeBase.baseIconMedium,
              ),
          actionsIconTheme: Theme.of(context).iconTheme.copyWith(
                size: FMIThemeBase.baseIconMedium,
              ),
          elevation: widget.isElevated!
              ? FMIThemeBase.baseElevationDouble2
              : FMIThemeBase.baseElevationDouble0,
          shadowColor: Theme.of(context).colorScheme.outline,
          toolbarHeight: FMIThemeBase.baseContainerDimension72,
          automaticallyImplyLeading: false,
          centerTitle: false,
          titleSpacing: FMIThemeBase.baseGap0,
          backgroundColor: Theme.of(context)
              .colorScheme
              .fmiBaseThemeAltSurfaceInverseAltSurface,
          surfaceTintColor: Colors.transparent,
          actions: [
            Expanded(child: getAppBarItems(context, widget.destinations ?? [])),
          ]),
    );
  }

  Widget getTitle(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        (widget.leading != null)
            ? Padding(
                padding:
                    const EdgeInsets.only(right: FMIThemeBase.basePadding4),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [widget.leading!]),
              )
            : Container(),
        Visibility(
          visible: widget.imageSlot != null,
          child: (widget.imageSlot != null)
              ? Padding(
                  padding: ((context.isSmall || context.isXSmall) &&
                          widget.leading == null)
                      ? const EdgeInsets.only(left: FMIThemeBase.basePadding2)
                      : const EdgeInsets.only(left: FMIThemeBase.basePadding4),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [widget.imageSlot!]),
                )
              : Container(),
        ),
        Padding(
          padding: (widget.imageSlot != null)
              ? (context.isSmall || context.isXSmall)
                  ? const EdgeInsets.only(left: FMIThemeBase.basePadding4)
                  : const EdgeInsets.only(left: FMIThemeBase.basePadding8)
              : (widget.leading != null)
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(left: FMIThemeBase.basePadding4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: ((widget.title != null && widget.imageSlot == null) &&
                        (context.isSmall || context.isXSmall)) ||
                    ((context.isLarge || context.isMedium) &&
                        (widget.title != null)),
                child: Text(
                  widget.title ?? '',
                  style: (context.isSmall || context.isXSmall)
                      ? Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.inverseSurface)
                      : Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Theme.of(context).colorScheme.inverseSurface),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
