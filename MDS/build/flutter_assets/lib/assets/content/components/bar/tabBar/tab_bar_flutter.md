##### Examples

**Please reference Scaffold Documentation for the code snippets on how to add to a scaffold with an App Bar, Nav Rail, Bottom Nav**


**FmiTabBar inside Column with no OnTap/TabController parameter**
```dart
Expanded(
  child: Padding(
    padding: const EdgeInsets.all(FMIThemeBase.basePadding8),
    child: FmiTabBar(
      displayScrollBehavior: ScrollConfiguration.of(context)
        .copyWith(scrollbars: false),
      pinned: true,
      forceElevated: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      tabs: const [
        Tab(text: 'Tab 1'),
        Tab(text: 'Tab 2'),
        Tab(text: 'Tab 3'),
      ],
      tabBarViews: [
        demoButtons(context),
        demoButtons(context),
        demoButtons(context),
      ],
    ),
  ),
),
```

**FmiTabBar inside Column with onTap, TabController & scrollPhysics parameter**
```dart
@override
initState() {
  super.initState();
  _tabController = TabController(length: 3, vsync: this);
  _tabController.addListener(
    () {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    },
  );
}
...
Expanded(
  child: Padding(
    padding: const EdgeInsets.all(FMIThemeBase.basePadding8),
    child: FmiTabBar(
      isScrollable: isScrollable,
      tabController: _tabController,
      pinned: false,
      sliverPadding: FMIThemeBase.basePadding5,
      floating: true,
      snap: true,
      forceElevated: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      tabs: [
        Tab(
            icon: const FmiBadge(
              alignment: AlignmentPosition.topRight,
              size: BadgeSize.regular,
              backgroundColor: BadgeColor.danger,
              text: '4',
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: FMIThemeBase.basePadding8,
                    vertical: FMIThemeBase.basePadding4),
                child: Text('Tab 1',
                    maxLines: 1, overflow: TextOverflow.ellipsis),
              ),
            ),
          ),
        Tab(
            icon: const FmiBadge(
              alignment: AlignmentPosition.topRight,
              size: BadgeSize.regular,
              backgroundColor: BadgeColor.danger,
              text: '14',
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: FMIThemeBase.basePadding8,
                    vertical: FMIThemeBase.basePadding4),
                child: Text('Tab 2',
                    maxLines: 1, overflow: TextOverflow.ellipsis),
              ),
            ),
          ),
        Tab(
            icon: const FmiBadge(
              alignment: AlignmentPosition.topRight,
              size: BadgeSize.regular,
              backgroundColor: BadgeColor.danger,
              text: '103',
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: FMIThemeBase.basePadding8,
                    vertical: FMIThemeBase.basePadding4),
                child: Text('Tab 3',
                    maxLines: 1, overflow: TextOverflow.ellipsis),
              ),
            ),
          ),
      ],
      tabBarViews: [
        demoButtons(context),
        demoButtons(context),
        demoButtons(context),
      ],
    ),
  ),
),
```