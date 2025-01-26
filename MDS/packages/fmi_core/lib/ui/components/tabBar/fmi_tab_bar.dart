import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiTabBar extends StatefulWidget {
  const FmiTabBar({
    super.key,
    required this.tabs,
    required this.tabBarViews,
    this.pinned = true,
    this.backgroundColor,
    this.sliverPadding = FMIThemeBase.basePadding8,
    this.forceElevated = false,
    @Deprecated(
        'This property is deprecated and is no longer used. Will be removed in future update.')
    this.noElevation = true,
    this.onTap,
    this.tabController,
    this.scrollPhysics,
    this.isScrollable = false,
    this.floating = false,
    this.snap = false,
    this.displayScrollBehavior,
    this.displayScrollPhysics,
  });

  final List<Tab> tabs;
  final List<Widget> tabBarViews;
  final bool? pinned;
  final double? sliverPadding;
  final Color? backgroundColor;
  final bool? noElevation;
  final bool? forceElevated;
  final Function(int)? onTap;
  final TabController? tabController;
  final ScrollPhysics? scrollPhysics;
  final bool? isScrollable;
  final bool? floating;
  final bool? snap;
  final ScrollBehavior? displayScrollBehavior;
  final ScrollPhysics? displayScrollPhysics;
  @override
  _FmiTabBarState createState() => _FmiTabBarState();
}

class _FmiTabBarState extends State<FmiTabBar> {
  @override
  Widget build(BuildContext context) {
    if (!context.isLarge) {
      return ScrollConfiguration(
        behavior: widget.displayScrollBehavior ??
            CustomScrollBehavior.horizontalScrollConfiguration(context),
        child: CustomScrollView(
          physics: widget.displayScrollPhysics,
          slivers: [
            SliverAppBar(
                forceElevated: widget.forceElevated!,
                shadowColor: Theme.of(context).colorScheme.shadow,
                stretch: false,
                floating: widget.floating!,
                snap: widget.snap!,
                toolbarHeight: FMIThemeBase.baseContainerDimension0,
                expandedHeight: FMIThemeBase.baseContainerDimension0,
                pinned: widget.pinned!,
                automaticallyImplyLeading: false,
                backgroundColor: widget.backgroundColor ??
                    Theme.of(context).colorScheme.surface,
                bottom: TabBar(
                  dragStartBehavior: DragStartBehavior.down,
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                          width: FMIThemeBase.baseBorderWidthDefault,
                          color: Theme.of(context).colorScheme.primary),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(
                              FMIThemeBase.baseBorderRadiusMedium),
                          topRight: Radius.circular(
                              FMIThemeBase.baseBorderRadiusMedium))),
                  labelStyle: Theme.of(context).textTheme.titleSmall,
                  labelColor: Theme.of(context).colorScheme.primary,
                  isScrollable: widget.isScrollable!,
                  tabs: widget.tabs,
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: widget.tabController,
                  onTap: widget.onTap,
                )),
            SliverPadding(padding: EdgeInsets.all(widget.sliverPadding!)),
            SliverFillRemaining(
              child: TabBarView(
                controller: widget.tabController,
                children: widget.tabBarViews,
                physics: widget.scrollPhysics,
              ),
            ),
          ],
        ),
      );
    }

    return ScrollConfiguration(
      behavior: widget.displayScrollBehavior ??
          CustomScrollBehavior.horizontalScrollConfiguration(context),
      child: CustomScrollView(physics: widget.displayScrollPhysics, slivers: [
        SliverAppBar(
          primary: false,
          forceElevated: widget.forceElevated!,
          surfaceTintColor: Colors.transparent,
          shadowColor: Theme.of(context).colorScheme.shadow,
          floating: widget.floating!,
          snap: widget.snap!,
          toolbarHeight: FMIThemeBase.baseContainerDimension0,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(FMIThemeBase.baseBorderRadiusRound)),
          pinned: widget.pinned!,
          automaticallyImplyLeading: false,
          excludeHeaderSemantics: true,
          backgroundColor:
              widget.backgroundColor ?? Theme.of(context).colorScheme.surface,
          bottom: TabBar(
            controller: widget.tabController,
            onTap: widget.onTap,
            isScrollable: widget.isScrollable!,
            indicatorSize: TabBarIndicatorSize.tab,
            splashBorderRadius:
                BorderRadius.circular(FMIThemeBase.baseBorderRadiusRound),
            labelStyle: Theme.of(context).textTheme.titleMedium,
            labelColor: Theme.of(context).colorScheme.onSurface,
            unselectedLabelStyle: Theme.of(context).textTheme.titleMedium,
            unselectedLabelColor: Theme.of(context).colorScheme.secondary,
            indicator: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius:
                  BorderRadius.circular(FMIThemeBase.baseBorderRadiusRound),
            ),
            dividerColor: Colors.transparent,
            tabs: widget.tabs,
          ),
        ),
        SliverPadding(padding: EdgeInsets.all(widget.sliverPadding!)),
        SliverSafeArea(
          sliver: SliverFillRemaining(
            child: TabBarView(
              controller: widget.tabController,
              children: widget.tabBarViews,
              physics: widget.scrollPhysics,
            ),
          ),
        ),
      ]),
    );
  }
}
