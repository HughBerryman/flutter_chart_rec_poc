##### Examples

**Required Variables/Functions to run snippet**
```dart
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
String shiftLabel = 'Previous Shift';
bool showImageSlot = true;
bool showLeadingSlot = true;
Color getShiftColor(String shift) {
  switch (shift) {
    case 'Previous Shift':
      return Theme.of(context).colorScheme.error;
    case 'Current Shift':
      return Theme.of(context).colorScheme.primary;
    case 'Next Shift':
      return Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess;
  }
  return Theme.of(context).colorScheme.primary;
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

AlertDialog alertDialog() {
  return AlertDialog(
    title: const Text('Icon Pressed'),
    content: const Text('Click the OK button to close'),
    actions: [
      TextButton(
        child: const Text("OK"),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop('dialog');
        },
      )
    ],
  );
}
```

**Multi Item FmiAppBarTop**
```dart
Scaffold(
  key: _scaffoldKey,
  appBar: PreferredSize(
    preferredSize:
        const Size.fromHeight(FMIThemeBase.baseContainerDimension72),
    child: FmiAppBarTop(
      title: 'Title',
      leading: (showLeadingSlot)
          ? FmiAvatar(
              selectedBehaviorOff: true,
              avatarSize: (context.isLarge || context.isMedium)
                  ? FmiAvatarSize.large
                  : FmiAvatarSize.medium,
              displayName: 'BOB JANCOSKI',
              url:
                  'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
            )
          : null,
      imageSlot: (showImageSlot)
          ? FmiAvatar(
              displayName: '',
              url: 'assets/assets/images/default.jpeg',
              avatarSize: (context.isLarge || context.isMedium)
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
                  child: FaIcon(
                    FontAwesomeIcons.solidClock,
                    color: getShiftColor(shiftLabel),
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
          label: const Text('Edit Calendar'),
          component: IconButton(
            icon: Icon(Icons.edit_calendar,
                color: Theme.of(context).colorScheme.onSurface),
            onPressed: () => showDialogAlert(context),
          ),
        ),
      ],
    ),
  ),
  body: Center(
    child: SafeArea(
        child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePadding6,
                  bottom: FMIThemeBase.basePadding3),
                child: FilledButton.icon(
                  icon: const FaIcon(FontAwesomeIcons.xmark),
                  label: const Text('Close Demo'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: FMIThemeBase.basePadding3,
                ),
                child: Row(
                  children: [
                    Switch(
                      value: showLeadingSlot,
                      onChanged: (bool val) {
                        setState(() {
                          showLeadingSlot = val;
                        });
                      }),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: FMIThemeBase.basePadding6),
                      child: Text(!showLeadingSlot
                        ? 'Show Leading Slot'
                        : 'Hide Leading Slot'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePadding3,
                  bottom: FMIThemeBase.basePadding6),
                child: Row(
                  children: [
                    Switch(
                      value: showImageSlot,
                      onChanged: (bool val) {
                        setState(() {
                          showImageSlot = val;
                        });
                      }),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: FMIThemeBase.basePadding6),
                      child: Text(!showImageSlot
                        ? 'Show Image Slot'
                        : 'Hide Image Slot'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    )),
  ),
);
```

**FmiAppBarTop Demo Functions**

```dart
 List<FmiNavigationDestination> getDestinations() {
      List<FmiNavigationDestination> tabs = [
        FmiNavigationDestination(
          selectedIcon: FontAwesomeIcons.solidHouse,
          icon: FontAwesomeIcons.house,
          label: 'Home',
        ),
        FmiNavigationDestination(
          selectedIcon: FontAwesomeIcons.solidTruck,
          icon: FontAwesomeIcons.truck,
          label: 'Load/Haul',
        ),
        FmiNavigationDestination(
            svgAsset: SvgAsset(
                assetName: 'assets/images/misc-svgs/news.svg',
                package: 'fmi_core'),
            label: 'News'),
        FmiNavigationDestination(
            svgAsset: SvgAsset(
                assetName: 'assets/images/misc-svgs/department.svg',
                package: 'fmi_core'),
            label: 'Department'),
        FmiNavigationDestination(
          selectedIcon: FontAwesomeIcons.solidBoreHole,
          icon: FontAwesomeIcons.boreHole,
          label: 'Drill/Blast',
        ),
        FmiNavigationDestination(
          selectedIcon: FontAwesomeIcons.solidFile,
          icon: FontAwesomeIcons.file,
          label: 'EOS Report',
        ),
        FmiNavigationDestination(
          selectedIcon: FontAwesomeIcons.solidMound,
          icon: FontAwesomeIcons.mound,
          label: 'Crush/Convey',
        ),
        FmiNavigationDestination(
          selectedIcon: FontAwesomeIcons.solidTractor,
          icon: FontAwesomeIcons.tractor,
          label: 'Equipment',
        ),
        FmiNavigationDestination(
          selectedIcon: FontAwesomeIcons.solidHelmetSafety,
          icon: FontAwesomeIcons.helmetSafety,
          label: 'Operator',
        ),
      ];
 }

  void _showPopupMenu() async {
    await showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(
          FMIThemeBase.baseContainerDimension72,
          FMIThemeBase.baseContainerDimension72,
          FMIThemeBase.baseContainerDimension0,
          FMIThemeBase.baseContainerDimension72),
      items: [
        PopupMenuItem(
          onTap: () => setState(() {
            shiftLabel = 'Previous Shift';
          }),
          value: 'Previous Shift',
          child: const Text('Previous'),
        ),
        PopupMenuItem(
          onTap: () => setState(() {
            shiftLabel = 'Current Shift';
          }),
          value: 'Current Shift',
          child: const Text('Current'),
        ),
        PopupMenuItem(
          onTap: () => setState(() {
            shiftLabel = 'Next Shift';
          }),
          value: 'Next Shift',
          child: const Text('Next'),
        ),
      ],
    );
  }

 FmiAppBarTop getAppBarTop(
      List<FmiNavigationDestination> Function() getDestinations,
      BuildContext context) {
    return FmiAppBarTop(
      leading: (toggleLeading)
          ? const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FmiAvatar(
                    displayName: 'Bob Jancoski',
                    avatarSize: FmiAvatarSize.large),
              ],
            )
          : null,
      imageSlot: (toggleImage)
          ? SvgPicture.asset('assets/images/misc-svgs/FM_logo.svg')
          : null,
      title: 'Con Ops',
      destinations: getDestinations(),
      selectedIndex: index,
      hideNavLabels: toggleNavLabels,
      fab: toggleFAB,
      fabIcon: FontAwesomeIcons.plus,
      onDestinationSelected: (int value) {
        setState(() {
          index = value;
        });
      },
      floating: toggleFloating,
      pinned: togglePinned,
      fabOnTap: () => showDialogAlert(context),
      actionItems: [
        AppBarTopComponent(
          onTap: _showPopupMenu,
          label: Text(
            shiftLabel,
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
                child: Text('Previous',    
                  style: Theme.of(context).textTheme.labelLarge?. copyWith(
                    color: Theme.of(context).colorScheme.inverseSurface)
                  ),
                ),
              ),
              const PopupMenuItem(
                value: 'Current Shift',
                child: Text('Current',    
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.inverseSurface)
                  ),
                ),
              ),
              const PopupMenuItem(
                value: 'Next Shift',
                child: Text('Next', 
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.inverseSurface)
                  ),
                ),
              ),
            ],
            child: FaIcon(
              FontAwesomeIcons.solidClock,
              color: getShiftColor(shiftLabel),
            ),
          ),
        )
      ],
      iconItems: (toggleOneActionItem)
          ? null
          : [
              AppBarTopComponent(
                onTap: () => showDialogAlert(context),
                label: const Text('Notifications',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.inverseSurface),
                ),
                component: IconButton(
                  icon: FaIcon(FontAwesomeIcons.solidBell,
                      color: Theme.of(context).colorScheme.inverseSurface),
                  onPressed: () => showDialogAlert(context),
                ),
              ),
              AppBarTopComponent(
                onTap: () => showDialogAlert(context),
                label: const Text('Edit Calendar',   
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.inverseSurface
                  ),
                ),
                component: IconButton(
                  icon: FaIcon(FontAwesomeIcons.solidCalendar,
                      color: Theme.of(context).colorScheme.inverseSurface),
                  onPressed: () => showDialogAlert(context),
                ),
              ),
              AppBarTopComponent(
                onTap: () => showDialogAlert(context),
                label: const Text('Edit Profile',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.inverseSurface
                  ),
                ),
                component: IconButton(
                  icon: FaIcon(FontAwesomeIcons.solidCircleUser,
                      color: Theme.of(context).colorScheme.inverseSurface),
                  onPressed: () => showDialogAlert(context),
                ),
              ),
              AppBarTopComponent(
                onTap: () => showDialogAlert(context),
                label: const Text('Settings', 
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.inverseSurface
                  ),
                ),
                component: IconButton(
                  icon: FaIcon(FontAwesomeIcons.solidGear,
                      color: Theme.of(context).colorScheme.inverseSurface),
                  onPressed: () => showDialogAlert(context),
                ),
              ),
              AppBarTopComponent(
                onTap: () => showDialogAlert(context),
                label: const Text('Update',   
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.inverseSurface
                    ),
                ),
                component: IconButton(
                  icon: FaIcon(FontAwesomeIcons.circleUp,
                      color: Theme.of(context).colorScheme.inverseSurface),
                  onPressed: () => showDialogAlert(context),
                ),
              ),
            ],
    );
  }
```

**FmiAppBarTop with navigation items**
```dart
Scaffold(
    key: _scaffoldKey,
    appBar: PreferredSize(
            preferredSize:
                const Size.fromHeight(FMIThemeBase.baseContainerDimension72),
            child: getAppBarTop(getDestinations, context)),
    body: SafeArea(
      child: Text('Hello World'),
    ),
  );
```

**FmiAppBarTop with floating/pinned**
```dart
NestedScrollView(
  headerSliverBuilder: (context, innerBoxIsScrolled) {
    return [getAppBarTop(getDestinations, context)];
  },
  body: SafeArea(
    child: Text('Hello World'),
  ),
)
```

**FmiAppBarTop with force dark**

* Note: Setting the data theme to dark needs to be at a level in the widget tree higher than the elements intended to be impacted.  If elements are at a higher point in the widget tree, they will be not be impacted by the theme change.  The example shows the demo main nav app bar wrapped with a theme.  This is highest point for items rendered in this demo.

```dart
Scaffold(
  appBar: PreferredSize(
    preferredSize: Size.fromHeight(FMIThemeBase.baseContainerDimension72),
    child: AppBarWrapper()
  ),
  body: Center(
    child: SafeArea(
      child: DemoPage()
    )
  )
)
```

* App Bar Wrapper
```dart
Theme(
  data: FmiThemeDark.fmiThemeDataDark, child: const MainNavAppBar()
)
```

* Main Nav App Bar
```dart
FmiAppBarTop(
  leading: const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FmiAvatar(
        displayName: 'Bob Jancoski', avatarSize: FmiAvatarSize.large
      ),
    ],
  ),
  title: 'Con Op',
  destinations: getDestinations(),
  selectedIndex: index,
  hideNavLabels: false,
  fab: true,
  onDestinationSelected: (int value) {
    setState(() {
      index = value;
    });
  },
  fabOnTap: () => showDialogAlert(context),
  showActionMenuBadge: showAlertBadge,
  actionMenuBadgeColor: BadgeColor.danger,
  iconItems: [
    AppBarTopComponent(
      onTap: () => showNotificationAlert(context),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(FontAwesomeIcons.bell,
            color: Theme.of(context).colorScheme.inverseSurface
          ),
          Padding(
            padding:
              const EdgeInsets.only(left: FMIThemeBase.basePadding4),
            child: Text(
              'Notifications',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.inverseSurface),
              ),
            ),
          if (showAlertBadge)
            const Padding(
              padding: EdgeInsets.only(left: FMIThemeBase.basePadding4
              ),
              child: FmiBadge(
                alignment: AlignmentPosition.center,
                size: BadgeSize.regular,
                backgroundColor: BadgeColor.danger,
              ),
            )
        ],
      ),
      component: Stack(
        children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.bell,
              color: Theme.of(context).colorScheme.inverseSurface),
            onPressed: () => showNotificationAlert(context),
          ),
          if (showAlertBadge)
            const Positioned(
              left: 28,
              top: 4,
              child: FmiBadge(
                size: BadgeSize.regular,
                backgroundColor: BadgeColor.danger,
              ),
            )
        ],
      )
    ),
    AppBarTopComponent(
      onTap: () => showDialogAlert(context),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(FontAwesomeIcons.calendar,
            color: Theme.of(context).colorScheme.inverseSurface),
          Padding(
            padding: const EdgeInsets.only(left: FMIThemeBase.basePadding4),
            child: Text(
              'Edit Calendar',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.inverseSurface),
            ),
          ),
        ],
      ),
      component: IconButton(
        icon: FaIcon(FontAwesomeIcons.calendar,
          color: Theme.of(context).colorScheme.inverseSurface),
        onPressed: () => showDialogAlert(context),
      ),
    ),
    if (!showAlertBadge)
      AppBarTopComponent(
        onTap: () => showAddNotificationAlert(context),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FaIcon(FontAwesomeIcons.calendar,
              color: Theme.of(context).colorScheme.inverseSurface),
            Padding(
              padding:
                const EdgeInsets.only(left: FMIThemeBase.basePadding4),
              child: Text(
                'Add Notification Alert',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.inverseSurface),
              ),
            ),
          ],
        ),
        component: IconButton(
          icon: FaIcon(FontAwesomeIcons.plus,
            color: Theme.of(context).colorScheme.inverseSurface),
            onPressed: () => showAddNotificationAlert(context),
          ),
        ),
      ],
    )
```