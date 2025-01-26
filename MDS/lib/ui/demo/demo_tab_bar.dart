import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoTabBar extends StatelessWidget {
  const DemoTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const ComponentSubheader(title: 'Tab Bar Demo'),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
              child: const Text("Show Tab Bar Demo - No Scroll Bar"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const _NoScrollBarTabView()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
              child: const Text(
                  "Show Tab Bar Demo - With Tab Controller & ScrollPhysics"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const _CustomTabView()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
              child: const Text(
                  "Show Tab Bar Demo with Scrollable Tab View & Float on Scroll-Up"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const _ScrollableTabView()));
              },
            ),
          )
        ],
      )
    ]);
  }
}

class _NoScrollBarTabView extends StatefulWidget {
  const _NoScrollBarTabView();

  @override
  State<_NoScrollBarTabView> createState() => _NoScrollBarTabViewState();
}

class _NoScrollBarTabViewState extends State<_NoScrollBarTabView>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _defaultScaffoldKey = GlobalKey();
  String shiftLabel = 'Previous Shift';
  int _selectedIndex = 0;
  bool showImageSlot = true;
  bool showLeadingSlot = true;

  @override
  Widget build(BuildContext context) {
    bool _isMobileLayout = context.isXSmall || context.isSmall;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context)
            .colorScheme
            .fmiBaseThemeAltSurfaceInverseOnAltSurface,
        key: _defaultScaffoldKey,
        appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(FMIThemeBase.baseContainerDimension72),
          child: FmiAppBarTop(
            title: 'Title',
            leading: (showLeadingSlot)
                ? FmiAvatar(
                    selectedBehaviorOff: true,
                    avatarSize: (!_isMobileLayout)
                        ? FmiAvatarSize.large
                        : FmiAvatarSize.medium,
                    displayName: 'BOB JANCOSKI',
                    url:
                        'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
                  )
                : null,
            imageSlot: (showImageSlot)
                ? FmiAvatar(
                    displayName: 'Default Image',
                    url: 'assets/assets/images/default.jpeg',
                    avatarSize: (!_isMobileLayout)
                        ? FmiAvatarSize.large
                        : FmiAvatarSize.medium,
                  )
                : null,
            actionItems: [
              AppBarTopComponent(
                label: PopupMenuButton(
                  initialValue: shiftLabel,
                  color: Theme.of(context).colorScheme.primaryContainer,
                  position: PopupMenuPosition.under,
                  child: Text('Shift: $shiftLabel'),
                  onSelected: (status) {
                    setState(() {
                      shiftLabel = status.toString();
                    });
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'Previous Shift',
                      child: Text('Previous'),
                    ),
                    const PopupMenuItem(
                      value: 'Current Shift',
                      child: Text('Current'),
                    ),
                    const PopupMenuItem(
                      value: 'Next Shift',
                      child: Text('Next'),
                    ),
                  ],
                ),
                component: PopupMenuButton(
                  initialValue: shiftLabel,
                  color: Theme.of(context).colorScheme.primaryContainer,
                  position: PopupMenuPosition.under,
                  onSelected: (status) {
                    setState(() {
                      shiftLabel = status.toString();
                    });
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'Previous Shift',
                      child: Text('Previous'),
                    ),
                    const PopupMenuItem(
                      value: 'Current Shift',
                      child: Text('Current'),
                    ),
                    const PopupMenuItem(
                      value: 'Next Shift',
                      child: Text('Next'),
                    ),
                  ],
                  child: Chip(
                    avatar: FaIcon(
                      FontAwesomeIcons.solidClock,
                      color: getShiftColor(shiftLabel),
                    ),
                    label: Row(mainAxisSize: MainAxisSize.min, children: [
                      Text(shiftLabel),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: FMIThemeBase.basePadding5),
                        child: FaIcon(
                          FontAwesomeIcons.solidCaretDown,
                          size: FMIThemeBase.baseIconSmall,
                        ),
                      ),
                    ]),
                  ),
                ),
              )
            ],
            iconItems: [
              AppBarTopComponent(
                  onTap: () => showSearch(
                      context: context, delegate: MySearchDelegate()),
                  label: const Text('Search'),
                  component: IconButton(
                      icon: Icon(Icons.search,
                          color: Theme.of(context).colorScheme.onSurface),
                      onPressed: () {
                        showSearch(
                            context: context, delegate: MySearchDelegate());
                      })),
              AppBarTopComponent(
                onTap: () => showDialogAlert(context),
                label: const Text('Notifications'),
                component: IconButton(
                  icon: Icon(Icons.notifications,
                      color: Theme.of(context).colorScheme.onSurface),
                  onPressed: () => showDialogAlert(context),
                ),
              ),
              AppBarTopComponent(
                onTap: () => showDialogAlert(context),
                label: const Text('More'),
                component: IconButton(
                  icon: Icon(Icons.more_vert,
                      color: Theme.of(context).colorScheme.onSurface),
                  onPressed: () => showDialogAlert(context),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: Row(
          children: [
            if (!_isMobileLayout)
              FmiNavigationRail(
                selectedIndex: _selectedIndex,
                destinations: destinations,
                onDestinationSelected: (int index) => setState(() {
                  _selectedIndex = index;
                }),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding8),
                child: FmiTabBar(
                  forceElevated: true,
                  displayScrollBehavior:
                      CustomScrollBehavior.horizontalScrollConfiguration(
                              context)
                          .copyWith(scrollbars: false),
                  pinned: true,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  tabs: const [
                    Tab(
                        icon: Text('Tab 1',
                            maxLines: 1, overflow: TextOverflow.ellipsis)),
                    Tab(
                        icon: Text('Tab 2',
                            maxLines: 1, overflow: TextOverflow.ellipsis)),
                    Tab(
                        icon: Text('Tab 3',
                            maxLines: 1, overflow: TextOverflow.ellipsis)),
                  ],
                  tabBarViews: [
                    demoButtons(context),
                    demoButtons(context),
                    demoButtons(context),
                  ],
                ),
              ),
            ),
          ],
        )),
        bottomNavigationBar: Visibility(
          visible: (_isMobileLayout),
          child: FmiBottomNavigationBar(
              onTap: (int index) => setState(() {
                    _selectedIndex = index;
                  }),
              currentIndex: _selectedIndex,
              destinations: destinations),
        ),
      ),
    );
  }

  Widget demoButtons(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius:
              BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
            child: FilledButton(
                child: const Text('Click to Escape Demo'),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                }),
          )
        ],
      ),
    );
  }

  List<FmiNavigationDestination> destinations = <FmiNavigationDestination>[
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidObjectsColumn, label: 'Dashboard'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.listTree, label: 'Department'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidNewspaper, label: 'News'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidIdBadge, label: 'Services')
  ];

  getShiftColor(String shiftLabel) {
    switch (shiftLabel) {
      case 'Previous Shift':
        return Theme.of(context).colorScheme.error;
      case 'Current Shift':
        return Theme.of(context).colorScheme.primary;
      case 'Next Shift':
        return Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess;
      default:
        return Theme.of(context).colorScheme.primary;
    }
  }

  Future<dynamic> showDialogAlert(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
                title: const Text('Icon Pressed'),
                content: const Text('Click the OK button to close'),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop('dialog');
                    },
                  )
                ]));
  }
}

class _CustomTabView extends StatefulWidget {
  const _CustomTabView();

  @override
  State<_CustomTabView> createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<_CustomTabView>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _customScaffoldKey = GlobalKey();
  String shiftLabel = 'Previous Shift';
  int _selectedIndex = 0;
  bool showImageSlot = true;
  bool showLeadingSlot = true;
  bool isScrollable = false;
  late TabController _tabController;

  @override
  initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(
      () {
        setState(() {
          _tabController.animateTo(_tabController.index);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    bool _isMobileLayout = context.isXSmall || context.isSmall;

    return Scaffold(
      backgroundColor: Theme.of(context)
          .colorScheme
          .fmiBaseThemeAltSurfaceInverseOnAltSurface,
      key: _customScaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(FMIThemeBase.baseContainerDimension72),
        child: FmiAppBarTop(
          title: 'Title',
          leading: (showLeadingSlot)
              ? FmiAvatar(
                  selectedBehaviorOff: true,
                  avatarSize: (!_isMobileLayout)
                      ? FmiAvatarSize.large
                      : FmiAvatarSize.medium,
                  displayName: 'BOB JANCOSKI',
                  url:
                      'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
                )
              : null,
          imageSlot: (showImageSlot)
              ? FmiAvatar(
                  displayName: 'Default Image',
                  url: 'assets/assets/images/default.jpeg',
                  avatarSize: (!_isMobileLayout)
                      ? FmiAvatarSize.large
                      : FmiAvatarSize.medium,
                )
              : null,
          actionItems: [
            AppBarTopComponent(
              label: PopupMenuButton(
                initialValue: shiftLabel,
                color: Theme.of(context).colorScheme.primaryContainer,
                position: PopupMenuPosition.under,
                child: Text('Shift: $shiftLabel'),
                onSelected: (status) {
                  setState(() {
                    shiftLabel = status.toString();
                  });
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'Previous Shift',
                    child: Text('Previous'),
                  ),
                  const PopupMenuItem(
                    value: 'Current Shift',
                    child: Text('Current'),
                  ),
                  const PopupMenuItem(
                    value: 'Next Shift',
                    child: Text('Next'),
                  ),
                ],
              ),
              component: PopupMenuButton(
                initialValue: shiftLabel,
                color: Theme.of(context).colorScheme.primaryContainer,
                position: PopupMenuPosition.under,
                onSelected: (status) {
                  setState(() {
                    shiftLabel = status.toString();
                  });
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'Previous Shift',
                    child: Text('Previous'),
                  ),
                  const PopupMenuItem(
                    value: 'Current Shift',
                    child: Text('Current'),
                  ),
                  const PopupMenuItem(
                    value: 'Next Shift',
                    child: Text('Next'),
                  ),
                ],
                child: Chip(
                  avatar: FaIcon(
                    FontAwesomeIcons.solidClock,
                    color: getShiftColor(shiftLabel),
                  ),
                  label: Row(children: [
                    Text(
                      shiftLabel,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: FMIThemeBase.basePadding5),
                      child: FaIcon(
                        FontAwesomeIcons.solidCaretDown,
                        size: FMIThemeBase.baseIconSmall,
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ],
          iconItems: [
            AppBarTopComponent(
                onTap: () =>
                    showSearch(context: context, delegate: MySearchDelegate()),
                label: const Text('Search'),
                component: IconButton(
                    icon: Icon(Icons.search,
                        color: Theme.of(context).colorScheme.onSurface),
                    onPressed: () {
                      showSearch(
                          context: context, delegate: MySearchDelegate());
                    })),
            AppBarTopComponent(
              onTap: () => showDialogAlert(context),
              label: const Text('Notifications'),
              component: IconButton(
                icon: Icon(Icons.notifications,
                    color: Theme.of(context).colorScheme.onSurface),
                onPressed: () => showDialogAlert(context),
              ),
            ),
            AppBarTopComponent(
              onTap: () => showDialogAlert(context),
              label: const Text('More'),
              component: IconButton(
                icon: Icon(Icons.more_vert,
                    color: Theme.of(context).colorScheme.onSurface),
                onPressed: () => showDialogAlert(context),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Row(
        children: [
          if (!_isMobileLayout)
            FmiNavigationRail(
              selectedIndex: _selectedIndex,
              destinations: destinations,
              onDestinationSelected: (int index) => setState(() {
                _selectedIndex = index;
              }),
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding8),
              child: FmiTabBar(
                isScrollable: isScrollable,
                tabController: _tabController,
                scrollPhysics: const BouncingScrollPhysics(),
                displayScrollPhysics: const BouncingScrollPhysics(),
                pinned: true,
                floating: true,
                backgroundColor: Theme.of(context).colorScheme.surface,
                tabs: const [
                  Tab(
                    icon: Text('Tab Item 1',
                        maxLines: 1, overflow: TextOverflow.ellipsis),
                  ),
                  Tab(
                    icon: Text('Tab Item 2',
                        maxLines: 1, overflow: TextOverflow.ellipsis),
                  ),
                  Tab(
                    icon: Text('Tab Item 3',
                        maxLines: 1, overflow: TextOverflow.ellipsis),
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
        ],
      )),
      bottomNavigationBar: Visibility(
        visible: (_isMobileLayout),
        child: FmiBottomNavigationBar(
            onTap: (int index) => setState(() {
                  _selectedIndex = index;
                }),
            currentIndex: _selectedIndex,
            destinations: destinations),
      ),
    );
  }

  Widget demoButtons(BuildContext context) {
    return Container(
      height: FMIThemeBase.baseContainerDimension980,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius:
              BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
              child: FilledButton(
                  child: const Text('Switch to Tab 1'),
                  onPressed: () {
                    _tabController.index = 0;
                    _tabController.animateTo(0);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
              child: FilledButton(
                  child: const Text('Switch to Tab 2'),
                  onPressed: () {
                    _tabController.index = 1;
                    _tabController.animateTo(1);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
              child: FilledButton(
                  child: const Text('Switch to Tab 3'),
                  onPressed: () {
                    _tabController.index = 2;
                    _tabController.animateTo(2);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
              child: FilledButton(
                  child: const Text('Click to Escape Demo'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  List<FmiNavigationDestination> destinations = <FmiNavigationDestination>[
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidObjectsColumn, label: 'Dashboard'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.listTree, label: 'Department'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidNewspaper, label: 'News'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidIdBadge, label: 'Services')
  ];

  getShiftColor(String shiftLabel) {
    switch (shiftLabel) {
      case 'Previous Shift':
        return Theme.of(context).colorScheme.error;
      case 'Current Shift':
        return Theme.of(context).colorScheme.primary;
      case 'Next Shift':
        return Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess;
      default:
        return Theme.of(context).colorScheme.primary;
    }
  }

  Future<dynamic> showDialogAlert(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
                title: const Text('Icon Pressed'),
                content: const Text('Click the OK button to close'),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop('dialog');
                    },
                  )
                ]));
  }
}

class _ScrollableTabView extends StatefulWidget {
  const _ScrollableTabView();

  @override
  State<_ScrollableTabView> createState() => _ScrollableTabViewState();
}

class _ScrollableTabViewState extends State<_ScrollableTabView>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _customScaffoldKey = GlobalKey();
  String shiftLabel = 'Previous Shift';
  int _selectedIndex = 0;
  bool showImageSlot = true;
  bool showLeadingSlot = true;
  bool isScrollable = true;

  @override
  Widget build(BuildContext context) {
    bool _isMobileLayout = context.isXSmall || context.isSmall;

    return Scaffold(
      backgroundColor: Theme.of(context)
          .colorScheme
          .fmiBaseThemeAltSurfaceInverseOnAltSurface,
      key: _customScaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(FMIThemeBase.baseContainerDimension72),
        child: FmiAppBarTop(
          title: 'Title',
          leading: (showLeadingSlot)
              ? FmiAvatar(
                  selectedBehaviorOff: true,
                  avatarSize: (!_isMobileLayout)
                      ? FmiAvatarSize.large
                      : FmiAvatarSize.medium,
                  displayName: 'BOB JANCOSKI',
                  url:
                      'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
                )
              : null,
          imageSlot: (showImageSlot)
              ? FmiAvatar(
                  displayName: 'Default Image',
                  url: 'assets/assets/images/default.jpeg',
                  avatarSize: (!_isMobileLayout)
                      ? FmiAvatarSize.large
                      : FmiAvatarSize.medium,
                )
              : null,
          actionItems: [
            AppBarTopComponent(
              label: PopupMenuButton(
                initialValue: shiftLabel,
                color: Theme.of(context).colorScheme.primaryContainer,
                position: PopupMenuPosition.under,
                child: Text('Shift: $shiftLabel'),
                onSelected: (status) {
                  setState(() {
                    shiftLabel = status.toString();
                  });
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'Previous Shift',
                    child: Text('Previous'),
                  ),
                  const PopupMenuItem(
                    value: 'Current Shift',
                    child: Text('Current'),
                  ),
                  const PopupMenuItem(
                    value: 'Next Shift',
                    child: Text('Next'),
                  ),
                ],
              ),
              component: PopupMenuButton(
                initialValue: shiftLabel,
                color: Theme.of(context).colorScheme.primaryContainer,
                position: PopupMenuPosition.under,
                onSelected: (status) {
                  setState(() {
                    shiftLabel = status.toString();
                  });
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'Previous Shift',
                    child: Text('Previous'),
                  ),
                  const PopupMenuItem(
                    value: 'Current Shift',
                    child: Text('Current'),
                  ),
                  const PopupMenuItem(
                    value: 'Next Shift',
                    child: Text('Next'),
                  ),
                ],
                child: Chip(
                  avatar: FaIcon(
                    FontAwesomeIcons.solidClock,
                    color: getShiftColor(shiftLabel),
                  ),
                  label: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text(shiftLabel),
                    const Padding(
                      padding: EdgeInsets.only(left: FMIThemeBase.basePadding5),
                      child: FaIcon(
                        FontAwesomeIcons.solidCaretDown,
                        size: FMIThemeBase.baseIconSmall,
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ],
          iconItems: [
            AppBarTopComponent(
                onTap: () =>
                    showSearch(context: context, delegate: MySearchDelegate()),
                label: const Text('Search'),
                component: IconButton(
                    icon: Icon(Icons.search,
                        color: Theme.of(context).colorScheme.onSurface),
                    onPressed: () {
                      showSearch(
                          context: context, delegate: MySearchDelegate());
                    })),
            AppBarTopComponent(
              onTap: () => showDialogAlert(context),
              label: const Text('Notifications'),
              component: IconButton(
                icon: Icon(Icons.notifications,
                    color: Theme.of(context).colorScheme.onSurface),
                onPressed: () => showDialogAlert(context),
              ),
            ),
            AppBarTopComponent(
              onTap: () => showDialogAlert(context),
              label: const Text('More'),
              component: IconButton(
                icon: Icon(Icons.more_vert,
                    color: Theme.of(context).colorScheme.onSurface),
                onPressed: () => showDialogAlert(context),
              ),
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 9,
        child: SafeArea(
            child: Row(
          children: [
            if (!_isMobileLayout)
              FmiNavigationRail(
                selectedIndex: _selectedIndex,
                destinations: destinations,
                onDestinationSelected: (int index) => setState(() {
                  _selectedIndex = index;
                }),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding8),
                child: FmiTabBar(
                  isScrollable: isScrollable,
                  pinned: false,
                  sliverPadding: FMIThemeBase.basePadding5,
                  floating: true,
                  snap: true,
                  forceElevated: true,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  tabs: const [
                    Tab(
                      icon: FmiBadge(
                        alignment: AlignmentPosition.topRight,
                        size: BadgeSize.regular,
                        backgroundColor: BadgeColor.danger,
                        text: '1',
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: FMIThemeBase.basePadding8,
                              vertical: FMIThemeBase.basePadding4),
                          child: Text('Tab Item 1',
                              maxLines: 1, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                    Tab(
                      icon: FmiBadge(
                        alignment: AlignmentPosition.topRight,
                        size: BadgeSize.regular,
                        backgroundColor: BadgeColor.danger,
                        text: '12',
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: FMIThemeBase.basePadding8,
                              vertical: FMIThemeBase.basePadding4),
                          child: Text('Tab Item 2',
                              maxLines: 1, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                    Tab(
                      icon: FmiBadge(
                        alignment: AlignmentPosition.topRight,
                        size: BadgeSize.regular,
                        backgroundColor: BadgeColor.danger,
                        text: '103',
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: FMIThemeBase.basePadding8,
                              vertical: FMIThemeBase.basePadding4),
                          child: Text('Tab Item 3',
                              maxLines: 1, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                    Tab(
                      icon: FmiBadge(
                        alignment: AlignmentPosition.topRight,
                        size: BadgeSize.regular,
                        backgroundColor: BadgeColor.danger,
                        text: '1',
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: FMIThemeBase.basePadding8,
                              vertical: FMIThemeBase.basePadding4),
                          child: Text('Tab Item 4',
                              maxLines: 1, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                    Tab(
                      icon: FmiBadge(
                        alignment: AlignmentPosition.topRight,
                        size: BadgeSize.regular,
                        backgroundColor: BadgeColor.danger,
                        text: '15',
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: FMIThemeBase.basePadding8,
                              vertical: FMIThemeBase.basePadding4),
                          child: Text('Tab Item 5',
                              maxLines: 1, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                    Tab(
                      icon: FmiBadge(
                        alignment: AlignmentPosition.topRight,
                        size: BadgeSize.regular,
                        backgroundColor: BadgeColor.danger,
                        text: '115',
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: FMIThemeBase.basePadding8,
                              vertical: FMIThemeBase.basePadding4),
                          child: Text('Tab Item 6',
                              maxLines: 1, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                    Tab(
                      icon: FmiBadge(
                        alignment: AlignmentPosition.topRight,
                        size: BadgeSize.regular,
                        backgroundColor: BadgeColor.danger,
                        text: '1',
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: FMIThemeBase.basePadding8,
                              vertical: FMIThemeBase.basePadding4),
                          child: Text('Tab Item 7',
                              maxLines: 1, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                    Tab(
                      icon: FmiBadge(
                        alignment: AlignmentPosition.topRight,
                        size: BadgeSize.regular,
                        backgroundColor: BadgeColor.danger,
                        text: '1',
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: FMIThemeBase.basePadding8,
                              vertical: FMIThemeBase.basePadding4),
                          child: Text('Tab Item 8',
                              maxLines: 1, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                    Tab(
                      icon: FmiBadge(
                        alignment: AlignmentPosition.topRight,
                        size: BadgeSize.regular,
                        backgroundColor: BadgeColor.danger,
                        text: '1',
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: FMIThemeBase.basePadding8,
                              vertical: FMIThemeBase.basePadding4),
                          child: Text('Tab Item 9',
                              maxLines: 1, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                  ],
                  tabBarViews: [
                    demoButtons(context),
                    demoButtons(context),
                    demoButtons(context),
                    demoButtons(context),
                    demoButtons(context),
                    demoButtons(context),
                    demoButtons(context),
                    demoButtons(context),
                    demoButtons(context),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
      bottomNavigationBar: Visibility(
        visible: (_isMobileLayout),
        child: FmiBottomNavigationBar(
            onTap: (int index) => setState(() {
                  _selectedIndex = index;
                }),
            currentIndex: _selectedIndex,
            destinations: destinations),
      ),
    );
  }

  Widget demoButtons(BuildContext context) {
    return Container(
      height: FMIThemeBase.baseContainerDimension980,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius:
              BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
            child: FilledButton(
                child: const Text('Click to Escape Demo'),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ],
      ),
    );
  }

  List<FmiNavigationDestination> destinations = <FmiNavigationDestination>[
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidObjectsColumn, label: 'Dashboard'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.listTree, label: 'Department'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidNewspaper, label: 'News'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidIdBadge, label: 'Services')
  ];

  getShiftColor(String shiftLabel) {
    switch (shiftLabel) {
      case 'Previous Shift':
        return Theme.of(context).colorScheme.error;
      case 'Current Shift':
        return Theme.of(context).colorScheme.primary;
      case 'Next Shift':
        return Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess;
      default:
        return Theme.of(context).colorScheme.primary;
    }
  }

  Future<dynamic> showDialogAlert(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
                title: const Text('Icon Pressed'),
                content: const Text('Click the OK button to close'),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop('dialog');
                    },
                  )
                ]));
  }
}
