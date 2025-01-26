**Examples**

With Font Awesome Icons
```dart
int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

Scaffold(
  key: _scaffoldKey,
  appBar: AppBar(
    title: const Text('Bottom Navigation Bar Demo'),
    automaticallyImplyLeading: false,
  ),
  body: Center(
    child: SafeArea(
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: FilledButton.icon(
                icon: FaIcon(destinations[_currentIndex].icon),
                label: const Text('Close Demo'),
                onPressed: () {
                  Navigator.pop(context);
                }
              ),
            ),
          ),
        ],
      ),
    ),
  ),
  bottomNavigationBar: FmiBottomNavigationBar(
    onTap: (index) {
      onNavigationItemSelected(index);
    },
    currentIndex: _currentIndex,
    destinations: destinations,
  ),
);

```

```dart
 void onNavigationItemSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
```

```dart
List<FmiNavigationDestination> destinations = <FmiNavigationDestination>[
  FmiNavigationDestination(
    icon: FontAwesomeIcons.solidObjectsColumn, label: 'Dashboard'
  ),
  FmiNavigationDestination(
    icon: FontAwesomeIcons.listTree, label: 'Department'
  ),
  FmiNavigationDestination(
    icon: FontAwesomeIcons.solidNewspaper, label: 'News'
  ),
  FmiNavigationDestination(
    icon: FontAwesomeIcons.solidIdBadge, label: 'Services'
  ), 
  FmiNavigationDestination(
    icon: FontAwesomeIcons.solidGear, label: 'Settings'
  )
];

```

` `

With Mixed


```dart
Scaffold(
  key: _scaffoldKey,
  appBar: AppBar(
    title: const Text('Bottom Navigation Bar Demo'),
    automaticallyImplyLeading: false,
  ),
  body: Center(
    child: SafeArea(
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: FilledButton(
                child: const Text('Close Demo'),
                onPressed: () {
                  Navigator.pop(context);
                }
              ),
            ),
          ),
        ],
      ),
    ),
  ),
  bottomNavigationBar: FmiBottomNavigationBar(
    onTap: (index) {
      onNavigationItemSelected(index);
    },
    currentIndex: _currentIndex,
    destinations: destinations,
    showSelectedLabels: true,
    showUnselectedLabels: true,
  )
);

```

```dart
List<FmiNavigationDestination> destinations = <FmiNavigationDestination>[
  FmiNavigationDestination(
    icon: FontAwesomeIcons.solidObjectsColumn, label: 'Dashboard'),
  FmiNavigationDestination(
    svgAsset: SvgAsset(
      assetName: 'assets/images/misc-svgs/department.svg',
      package: 'fmi_core',
    ),
    label: 'Department'
  ),
  FmiNavigationDestination(
    svgAsset: SvgAsset(
      assetName: 'assets/images/misc-svgs/news.svg', 
      package: 'fmi_core'
    ),
    label: 'News'
  ),
  FmiNavigationDestination(
    icon: FontAwesomeIcons.solidIdBadge, 
    label: 'Services'
  )
];
```

` `

With Svgs

```dart
Scaffold(
  key: _scaffoldKey,
  appBar: AppBar(
    title: const Text('Bottom Navigation Bar Demo'),
    automaticallyImplyLeading: false,
  ),
  body: Center(
    child: SafeArea(
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: FilledButton(
                child: const Text('Close Demo'),
                onPressed: () {
                  Navigator.pop(context);
                }
              ),
            ),
          ),
        ],
      ),
    ),
  ),
  bottomNavigationBar: FmiBottomNavigationBar(
     onTap: (index) {
      onNavigationItemSelected(index);
    },
    showSelectedLabels: false,
    showUnselectedLabels: false,
    currentIndex: _currentIndex,
    destinations: destinations,
  ),
);

```

```dart
 List<FmiNavigationDestination> destinations = <FmiNavigationDestination>[
    FmiNavigationDestination(
        svgAsset: SvgAsset(
            assetName: 'assets/images/misc-svgs/department.svg',
            package: 'fmi_core'),
        label: 'Department'),
    FmiNavigationDestination(
        svgAsset: SvgAsset(
            assetName: 'assets/images/misc-svgs/news.svg', package: 'fmi_core'),
        selectedSvgAsset: SvgAsset(
            assetName: 'assets/images/misc-svgs/department.svg',
            package: 'fmi_core'),
        label: 'News'),
  ];

```

` `

Navigation Overflow with Bottom Sheet

```dart
Scaffold(
    key: _scaffoldKey,
    appBar: AppBar(
      title: const Text('Bottom Navigation Bar Demo'),
      automaticallyImplyLeading: false,
    ),
      body: Center(
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: FilledButton(
                  child: const Text('Close Demo'),
                  onPressed: () {
                    Navigator.pop(context);
                  }
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    bottomNavigationBar: FmiBottomNavigationBar(
      fabTheme: selectedFabOption,
      fabIcon: FontAwesomeIcons.plus,
      onFabTap: () => showDialog(
          context: context,
          builder: (_) => AlertDialog(
                  title: const Text('Fab Launcher Pressed'),
                  content: const Text('Click the OK button to close'),
                  actions: [
                    TextButton(
                      child: const Text("OK"),
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true)
                            .pop('dialog');
                      },
                    )
                  ])),
      enableFab: true,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      onTap: (index) {
        onNavigationItemSelected(index);
      },
      currentIndex: _currentIndex,
      destinations: destinations,
    ),
  );
```

```dart
List<FmiNavigationDestination> destinations = <FmiNavigationDestination>[
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidObjectsColumn, label: 'Dashboard'),
    FmiNavigationDestination(icon: FontAwesomeIcons.listTree, label: 'Ops'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidNewspaper, label: 'News'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidIdBadge, label: 'Services'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidTruck, label: 'Load/Haul'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidBoreHole, label: 'Drill/Blast'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidFile, label: 'EOS Report'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidMound, label: 'Crush/Convey'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidTractor, label: 'Equipment'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidHelmetSafety, label: 'Operator'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidFire, label: 'Fire Inspect'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.solidHillRockslide, label: 'Accident Report'),
  ];
```

`  `
  
FmiBottomNavigationBar with force dark

```dart
FmiBottomNavigationBar(
  forceDarkMode: true,
  fabTheme: selectedFabOption,
  fabIcon: FontAwesomeIcons.plus,
  onFabTap: () => showDialog(
      context: context,
      builder: (_) => AlertDialog(
              title: const Text('Fab Launcher Pressed'),
              content: const Text('Click the OK button to close'),
              actions: [
                TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true)
                        .pop('dialog');
                  },
                )
              ])),
  enableFab: true,
  showUnselectedLabels: true,
  showSelectedLabels: true,
  onTap: (index) {
    onNavigationItemSelected(index);
  },
  currentIndex: _currentIndex,
  destinations: getDestinations(),
),
```