##### Examples

**Required Variables/Functions to run snippet**

```dart
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
int _selectedIndex = 0;

Widget bodySection(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
      left: context.outerGutter,
      right: context.outerGutter,
    ),
    child: Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
            maxWidth: LayoutConstants.maxConstraintWidth),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                vertical: FMIThemeBase.basePadding6,
              ),
              child: FilledButton(
                child: const Text(
                      "Escape Demo",
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.01,
                      crossAxisCount: context.columns,
                      crossAxisSpacing: FMIThemeBase.basePadding8,
                      mainAxisSpacing: FMIThemeBase.basePadding8),
                  itemCount: context.columns,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      color: Theme.of(context).colorScheme.surfaceContainerHighest,
                    );
                  }),
            ),
          ],
        ),
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


Future<dynamic> showDialogAlert(BuildContext context) {
  return showDialog(
      context: context,
      builder: (_) => AlertDialog(
              title: const Text('Icon or FAB Pressed'),
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
```

**Normal Scaffold with AppBar, NavigationRail, and Bottom NavBar**

```dart
Scaffold(
  key: _scaffoldKey,
  appBar: PreferredSize(
    preferredSize:
        const Size.fromHeight(FMIThemeBase.baseContainerDimension72),
    child: FmiAppBarTop(
      title: 'Title',
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FmiAvatar(
            selectedBehaviorOff: true,
            avatarSize: (context.isLarge || context.isMedium)
                ? FmiAvatarSize.large
                : FmiAvatarSize.medium,
            displayName: 'BOB JANCOSKI',
            url:
                'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
          ),
        ],
      ),
      imageSlot: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FmiAvatar(
            displayName: 'Default Image',
            url: 'assets/assets/images/default.jpeg',
            avatarSize: (context.isLarge || context.isMedium)
                ? FmiAvatarSize.large
                : FmiAvatarSize.medium,
          ),
        ],
      ),
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
      ],
    ),
  ),
  body: Row(
    children: [
      FmiNavigationRail(
            showElevation: true,
            selectedIndex: _selectedIndex,
            destinations: destinations,
            onDestinationSelected: (int index) => setState(() {
              _selectedIndex = index;
            }),
          ),
      Expanded(
        child: Container(
            color: Theme.of(context).colorScheme.surface,
            child: bodySection(context)),
      ),
    ],
  ),
  bottomNavigationBar: Visibility(
    visible: (context.isSmall || context.isXSmall),
    child: FmiBottomNavigationBar(
        onTap: (int index) => setState(() {
              _selectedIndex = index;
            }),
        currentIndex: _selectedIndex,
        destinations: destinations),
  ),
)
```

**Nested Scaffold with App Bar, NavigationRail, and Bottom Nav**

```dart
Scaffold(
  key: _scaffoldKey,
  body: Center(
    child: SafeArea(
        child: Row(
      children: [
        if (context.isLarge || context.isMedium)
          FmiNavigationRail(
            showElevation: true,
            leading: const FmiAvatar(
              selectedBehaviorOff: true,
              avatarSize: FmiAvatarSize.large,
              displayName: 'BOB JANCOSKI',
              url:
                  'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
            ),
            selectedIndex: _selectedIndex,
            destinations: destinations,
            onDestinationSelected: (int index) => setState(() {
              _selectedIndex = index;
            }),
          ),
        Expanded(
          child: Center(
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(
                    FMIThemeBase.baseContainerDimension90),
                child: FmiAppBarTop(
                  title: 'Title',
                  imageSlot: Padding(
                    padding: EdgeInsets.only(
                        left: (context.isSmall || context.isXSmall)
                            ? FMIThemeBase.basePadding4
                            : FMIThemeBase.basePadding0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FmiAvatar(
                          displayName: 'Default Image',
                          url: 'assets/assets/images/default.jpeg',
                          avatarSize: (context.isLarge || context.isMedium)
                              ? FmiAvatarSize.large
                              : FmiAvatarSize.medium,
                        ),
                      ],
                    ),
                  ),

                  iconItems: [
                    AppBarTopComponent(
                        onTap: () => showSearch(
                            context: context, delegate: MySearchDelegate()),
                        label: const Text('Search'),
                        component: IconButton(
                            icon: Icon(Icons.search,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurface),
                            onPressed: () {
                              showSearch(
                                  context: context,
                                  delegate: MySearchDelegate());
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

                  ],
                ),
              ),
              body: Row(
                children: [
                  Expanded(
                    child: Container(
                        color: Theme.of(context).colorScheme.surface,
                        child: bodySection(context)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    )),
  ),
  bottomNavigationBar: Visibility(
    visible: (context.isSmall || context.isXSmall),
    child: FmiBottomNavigationBar(
        onTap: (int index) => setState(() {
              _selectedIndex = index;
            }),
        currentIndex: _selectedIndex,
        destinations: destinations),
  ),
)
```

`  `
