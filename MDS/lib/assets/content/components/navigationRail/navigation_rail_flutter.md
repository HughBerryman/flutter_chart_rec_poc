##### Examples

###### Example 1 - Font Awesome Icons

```dart
  int _selectedIndex = 0;
  bool useBadges = false;
  bool _toggle = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late List<FmiNavigationDestination> destinations;

  @override
  Widget build(BuildContext context) {
    destinations = <FmiNavigationDestination>[
      FmiNavigationDestination(
          useBadge: useBadges,
          icon: FontAwesomeIcons.lightObjectsColumn,
          selectedIcon: FontAwesomeIcons.solidObjectsColumn,
          label: 'Dashboard'),
      FmiNavigationDestination(
          icon: FontAwesomeIcons.lightListTree,
          selectedIcon: FontAwesomeIcons.solidListTree,
          label: 'Department'),
      FmiNavigationDestination(
          useBadge: useBadges,
          icon: FontAwesomeIcons.lightNewspaper,
          selectedIcon: FontAwesomeIcons.solidNewspaper,
          label: 'News'),
      FmiNavigationDestination(
          icon: FontAwesomeIcons.lightIdBadge,
          selectedIcon: FontAwesomeIcons.solidIdBadge,
          label: 'Services')
    ];

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Navigation Rail Demo'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SafeArea(
          child: Row(
            children: [
              if (context.isLarge || context.isMedium)
                FmiNavigationRail(
                  onDestinationSelected: (index) {
                    onNavigationItemSelected(index);
                  },
                  selectedIndex: _selectedIndex,
                  destinations: destinations,
                  isFooter: true,
                  trailing: IconButton.filledTonal(
                    icon: _toggle
                        ? const FaIcon(FontAwesomeIcons.lightMoon)
                        : const FaIcon(FontAwesomeIcons.lightSunBright),
                    onPressed: () {
                      setState(() {
                        _toggle = !_toggle;
                      });
                    },
                  ),
                  leading: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => const ConfirmationDialog(
                                      title: "Tapped!",
                                      message: "Menu button has been tapped.",
                                    ));
                          },
                          icon: const FaIcon(FontAwesomeIcons.bars)),
                      const SizedBox(height: FMIThemeBase.basePadding10),
                      Theme(
                        data: FmiFloatingActionButtonTheme.zeroElevation(
                            context,
                            FmiFloatingActionButtonTheme.primary(context)),
                        child: FloatingActionButton(
                            child: const FaIcon(FontAwesomeIcons.plus),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => const ConfirmationDialog(
                                        title: "Tapped!",
                                        message:
                                            "Floating action button has been tapped.",
                                      ));
                            }),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FilledButton(
                        child: const Text('Click to Escape Demo'),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    const Padding(
                        padding: EdgeInsets.all(FMIThemeBase.basePadding6)),
                    FilledButton(
                        child: const Text('Show Badges'),
                        onPressed: () {
                          setState(() {
                            useBadges = !useBadges;
                          });
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
```

```dart
void onNavigationItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
```

###### Example 2 - Svgs

```dart
  int _selectedIndex = 0;
  bool _toggle = false;
  bool useBadges = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  late List<FmiNavigationDestination> destinations;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    destinations = <FmiNavigationDestination>[
      FmiNavigationDestination(
          useBadge: useBadges,
          svgAsset: SvgAsset(
              assetName: 'assets/images/misc-svgs/department.svg',
              package: 'fmi_core'),
          label: 'Department'),
      FmiNavigationDestination(
          svgAsset: SvgAsset(
              assetName: 'assets/images/misc-svgs/news.svg',
              package: 'fmi_core'),
          label: 'News',
          useBadge: useBadges),
    ];

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Navigation Rail Demo'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SafeArea(
          child: Row(
            children: [
              if (context.isLarge || context.isMedium)
                FmiNavigationRail(
                  selectedIndex: _selectedIndex,
                  destinations: destinations,
                  onDestinationSelected: (int index) => setState(() {
                    _selectedIndex = index;
                  }),
                  isFooter: true,
                  trailing: IconButton.filledTonal(
                    icon: _toggle
                        ? const FaIcon(FontAwesomeIcons.lightMoon)
                        : const FaIcon(FontAwesomeIcons.lightSunBright),
                    onPressed: () {
                      setState(() {
                        _toggle = !_toggle;
                      });
                    },
                  ),
                  leading: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => const ConfirmationDialog(
                                      title: "Tapped!",
                                      message: "Menu button has been tapped.",
                                    ));
                          },
                          icon: const FaIcon(FontAwesomeIcons.bars)),
                      const SizedBox(height: FMIThemeBase.basePadding10),
                      Theme(
                        data: FmiFloatingActionButtonTheme.zeroElevation(
                            context,
                            FmiFloatingActionButtonTheme.primary(context)),
                        child: FloatingActionButton(
                            child: const Icon(FontAwesomeIcons.plus),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => const ConfirmationDialog(
                                        title: "Tapped!",
                                        message:
                                            "Floating action button has been tapped.",
                                      ));
                            }),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FilledButton(
                        child: const Text('Click to Escape Demo'),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    const Padding(
                        padding: EdgeInsets.all(FMIThemeBase.basePadding6)),
                    FilledButton(
                        child: const Text('Show Badges'),
                        onPressed: () {
                          setState(() {
                            useBadges = !useBadges;
                          });
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
```

###### Example 3 - Fmi Icons

```dart
import 'package:fmi_core/presentation/fmi_icons_icons.dart';
```

```dart
  int _selectedIndex = 0;
  bool _toggle = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Navigation Rail Demo'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SafeArea(
          child: Row(
            children: [
              if (context.isLarge || context.isMedium)
                FmiNavigationRail(
                  onDestinationSelected: (index) {
                    onNavigationItemSelected(index);
                  },
                  selectedIndex: _selectedIndex,
                  destinations: destinations,
                  isFooter: true,
                  trailing: IconButton.filledTonal(
                    icon: _toggle
                        ? const FaIcon(FontAwesomeIcons.lightMoon)
                        : const FaIcon(FontAwesomeIcons.lightSunBright),
                    onPressed: () {
                      setState(() {
                        _toggle = !_toggle;
                      });
                    },
                  ),
                  leading: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => const ConfirmationDialog(
                                      title: "Tapped!",
                                      message: "Menu button has been tapped.",
                                    ));
                          },
                          icon: const FaIcon(FontAwesomeIcons.bars)),
                      const SizedBox(height: FMIThemeBase.basePadding10),
                      Theme(
                        data: FmiFloatingActionButtonTheme.zeroElevation(
                            context,
                            FmiFloatingActionButtonTheme.primary(context)),
                        child: FloatingActionButton(
                            child: const FaIcon(
                              FontAwesomeIcons.plus,
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => const ConfirmationDialog(
                                        title: "Tapped!",
                                        message:
                                            "Floating action button has been tapped.",
                                      ));
                            }),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: Center(
                  child: FilledButton.icon(
                      icon: FaIcon(destinations[_selectedIndex].icon),
                      label: const Text('Click to Escape Demo'),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
```

```dart

  List<FmiNavigationDestination> destinations = <FmiNavigationDestination>[
    FmiNavigationDestination(
        icon: FmiIcons.drill, label: 'Drill', useBadge: true),
    FmiNavigationDestination(icon: FmiIcons.loadhaul, label: 'Load/Haul'),
    FmiNavigationDestination(
        icon: FmiIcons.fminews, label: 'News', useBadge: true),
    FmiNavigationDestination(icon: FmiIcons.opshub, label: 'Ops Hub')
  ];

```

###### Example 4 - Mixed

```dart
  int _selectedIndex = 0;
  bool _toggle = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late List<FmiNavigationDestination> destinations;

  @override
  Widget build(BuildContext context) {
    destinations = <FmiNavigationDestination>[
      FmiNavigationDestination(
          useBadge: false,
          icon: FontAwesomeIcons.solidObjectsColumn,
          label: 'Dashboard'),
      FmiNavigationDestination(
          useBadge: true, icon: FontAwesomeIcons.solidNewspaper, label: 'News'),
      FmiNavigationDestination(
          useBadge: false,
          svgAsset: SvgAsset(
            assetName: 'assets/images/misc-svgs/department.svg',
            package: 'fmi_core',
          ),
          label: 'Department'),
      FmiNavigationDestination(
          useBadge: true,
          svgAsset: SvgAsset(
              assetName: 'assets/images/misc-svgs/news.svg',
              package: 'fmi_core'),
          label: 'News'),
      FmiNavigationDestination(
          icon: FmiIcons.drill, label: 'Drill', useBadge: false),
      FmiNavigationDestination(
          icon: FmiIcons.loadhaul, label: 'Load/Haul', useBadge: true),
    ];

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Navigation Rail Demo'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SafeArea(
          child: Row(
            children: [
              if (context.isLarge || context.isMedium)
                FmiNavigationRail(
                  showElevation: true,
                  leading: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => const ConfirmationDialog(
                                      title: "Tapped!",
                                      message: "Menu button has been tapped.",
                                    ));
                          },
                          icon: const FaIcon(FontAwesomeIcons.bars)),
                      const SizedBox(height: FMIThemeBase.basePadding10),
                      Theme(
                        data: FmiFloatingActionButtonTheme.zeroElevation(
                            context,
                            FmiFloatingActionButtonTheme.primary(context)),
                        child: FloatingActionButton(
                            child: FaIcon(FontAwesomeIcons.plus),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => const ConfirmationDialog(
                                        title: "Tapped!",
                                        message:
                                            "Floating action button has been tapped.",
                                      ));
                            }),
                      ),
                    ],
                  ),
                  isFooter: true,
                  trailing: IconButton.filledTonal(
                    icon: _toggle
                        ? const FaIcon(FontAwesomeIcons.lightMoon)
                        : const FaIcon(FontAwesomeIcons.lightSunBright),
                    onPressed: () {
                      setState(() {
                        _toggle = !_toggle;
                      });
                    },
                  ),
                  selectedIndex: _selectedIndex,
                  destinations: destinations,
                  onDestinationSelected: (int index) => setState(() {
                    _selectedIndex = index;
                  }),
                ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FilledButton(
                        child: const Text('Click to Escape Demo'),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
```

###### Example 5 - Nested Scaffold

Top App Bar on Nested Level

```dart
  int _selectedIndex = 0;
  bool useBadges = false;
  bool _toggle = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  late List<FmiNavigationDestination> destinations;

  @override
  Widget build(BuildContext context) {
    destinations = <FmiNavigationDestination>[
      FmiNavigationDestination(
          useBadge: useBadges,
          icon: FontAwesomeIcons.lightObjectsColumn,
          selectedIcon: FontAwesomeIcons.solidObjectsColumn,
          label: 'Dashboard'),
      FmiNavigationDestination(
          useBadge: useBadges,
          icon: FontAwesomeIcons.lightListTree,
          selectedIcon: FontAwesomeIcons.solidListTree,
          label: 'Department'),
      FmiNavigationDestination(
          useBadge: useBadges,
          icon: FontAwesomeIcons.lightNewspaper,
          selectedIcon: FontAwesomeIcons.solidNewspaper,
          label: 'News'),
      FmiNavigationDestination(
          useBadge: useBadges,
          icon: FontAwesomeIcons.lightIdBadge,
          selectedIcon: FontAwesomeIcons.solidIdBadge,
          label: 'Services')
    ];

    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: SafeArea(
          child: Row(
            children: [
              if (context.isLarge || context.isMedium)
                FmiNavigationRail(
                  selectedIndex: _selectedIndex,
                  destinations: destinations,
                  onDestinationSelected: (int index) => setState(() {
                    _selectedIndex = index;
                  }),
                  isFooter: true,
                  trailing: IconButton.filledTonal(
                    icon: _toggle
                        ? const FaIcon(FontAwesomeIcons.lightMoon)
                        : const FaIcon(FontAwesomeIcons.lightSunBright),
                    onPressed: () {
                      setState(() {
                        _toggle = !_toggle;
                      });
                    },
                  ),
                  leading: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => const ConfirmationDialog(
                                      title: "Tapped!",
                                      message: "Menu button has been tapped.",
                                    ));
                          },
                          icon: const FaIcon(FontAwesomeIcons.bars)),
                      const SizedBox(height: FMIThemeBase.basePadding10),
                      Theme(
                        data: FmiFloatingActionButtonTheme.zeroElevation(
                            context,
                            FmiFloatingActionButtonTheme.primary(context)),
                        child: FloatingActionButton(
                            child: const FaIcon(FontAwesomeIcons.plus),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => const ConfirmationDialog(
                                        title: "Tapped!",
                                        message:
                                            "Floating action button has been tapped.",
                                      ));
                            }),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: Center(
                  child: Scaffold(
                    appBar: AppBar(
                      title: const Text('Navigation Rail Demo'),
                      automaticallyImplyLeading: false,
                    ),
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.all(FMIThemeBase.basePadding4),
                            child: FilledButton(
                                child: const Text('Click to Escape Demo'),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ),
                          const Padding(
                              padding:
                                  EdgeInsets.all(FMIThemeBase.basePadding6)),
                          FilledButton(
                              child: const Text('Show Badges'),
                              onPressed: () {
                                setState(() {
                                  useBadges = !useBadges;
                                });
                              })
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

```

###### Example 6 - Navigation Rail with Elevation on - Default Scaffold

```dart
  int _selectedIndex = 0;
  bool useBadges = false;
  bool _toggle = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late List<FmiNavigationDestination> destinations;

  @override
  Widget build(BuildContext context) {
    destinations = <FmiNavigationDestination>[
      FmiNavigationDestination(
          useBadge: useBadges,
          icon: FontAwesomeIcons.lightObjectsColumn,
          selectedIcon: FontAwesomeIcons.solidObjectsColumn,
          label: 'Dashboard'),
      FmiNavigationDestination(
          useBadge: useBadges,
          icon: FontAwesomeIcons.lightListTree,
          selectedIcon: FontAwesomeIcons.solidListTree,
          label: 'Department'),
      FmiNavigationDestination(
          useBadge: useBadges,
          icon: FontAwesomeIcons.lightNewspaper,
          selectedIcon: FontAwesomeIcons.solidNewspaper,
          label: 'News'),
      FmiNavigationDestination(
          useBadge: useBadges,
          icon: FontAwesomeIcons.lightIdBadge,
          selectedIcon: FontAwesomeIcons.solidIdBadge,
          label: 'Services')
    ];

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Navigation Rail Demo'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SafeArea(
          child: Row(
            children: [
              if (context.isLarge || context.isMedium)
                FmiNavigationRail(
                  showElevation: true,
                  onDestinationSelected: (index) {
                    onNavigationItemSelected(index);
                  },
                  selectedIndex: _selectedIndex,
                  destinations: destinations,
                  leading: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => const ConfirmationDialog(
                                      title: "Tapped!",
                                      message: "Menu button has been tapped.",
                                    ));
                          },
                          icon: const FaIcon(FontAwesomeIcons.bars)),
                      const SizedBox(height: FMIThemeBase.basePadding10),
                      Theme(
                        data: FmiFloatingActionButtonTheme.zeroElevation(
                            context,
                            FmiFloatingActionButtonTheme.primary(context)),
                        child: FloatingActionButton(
                            child: const FaIcon(FontAwesomeIcons.plus),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => const ConfirmationDialog(
                                        title: "Tapped!",
                                        message:
                                            "Floating action button has been tapped.",
                                      ));
                            }),
                      ),
                    ],
                  ),
                  isFooter: true,
                  trailing: IconButton.filledTonal(
                    icon: _toggle
                        ? const FaIcon(FontAwesomeIcons.lightMoon)
                        : const FaIcon(FontAwesomeIcons.lightSunBright),
                    onPressed: () {
                      setState(() {
                        _toggle = !_toggle;
                      });
                    },
                  ),
                ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(FMIThemeBase.basePadding4),
                      child: FilledButton(
                          child: const Text('Click to Escape Demo'),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    const Padding(
                        padding: EdgeInsets.all(FMIThemeBase.basePadding6)),
                    FilledButton(
                        child: const Text('Show Badges'),
                        onPressed: () {
                          setState(() {
                            useBadges = !useBadges;
                          });
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onNavigationItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
```

**FmiNavigationRail with force dark**

- Note: Setting the data theme to dark needs to be at a level in the widget tree higher than the elements intended to be impacted. If elements are at a higher point in the widget tree, they will be not be impacted by the theme change. The example shows the main nav rail bar wrapped with a theme. This is highest point for items rendered in this demo.

```dart
Scaffold(
  key: _scaffoldKey,
  body: Center(
    child: SafeArea(
      child: Row(
        children: [
          if (context.isLarge || context.isMedium)
            const DemoNavigationRailDarkModeWrapper(),
          Expanded(
            child: Center(
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Navigation Rail Demo'),
                  automaticallyImplyLeading: false,
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePadding4),
                        child: FilledButton(
                            child: const Text('Click to Escape Demo'),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
)
```

- Nav Rail Wrapper

```dart
Theme(
  data: FmiThemeDark.fmiThemeDataDark,
  child: const DemoMainNavigationRail()
  )
```

- Main Navigation Rail

```dart
  int _selectedIndex = 0;
  bool _toggle = false;

  @override
  Widget build(BuildContext context) {
    return FmiNavigationRail(
      selectedIndex: _selectedIndex,
      destinations: destinations,
      onDestinationSelected: (int index) => setState(() {
        _selectedIndex = index;
      }),
      leading: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) => const ConfirmationDialog(
                          title: "Tapped!",
                          message: "Menu button has been tapped.",
                        ));
              },
              icon: const FaIcon(FontAwesomeIcons.bars)),
          const SizedBox(height: FMIThemeBase.basePadding10),
          Theme(
            data: FmiFloatingActionButtonTheme.zeroElevation(
                context, FmiFloatingActionButtonTheme.hero(context)),
            child: FloatingActionButton(
                child: const FaIcon(FontAwesomeIcons.plus),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => const ConfirmationDialog(
                            title: "Tapped!",
                            message: "Floating action button has been tapped.",
                          ));
                }),
          ),
        ],
      ),
      isFooter: true,
      trailing: IconButton.filledTonal(
        icon: _toggle
              ? const FaIcon(FontAwesomeIcons.lightMoon)
              : const FaIcon(FontAwesomeIcons.lightSunBright),
        onPressed: () {
          setState(() {
            _toggle = !_toggle;
          });
        },
      ),
    );
  }

  List<FmiNavigationDestination> destinations = <FmiNavigationDestination>[
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightObjectsColumn,
        selectedIcon: FontAwesomeIcons.solidObjectsColumn,
        label: 'Dashboard'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightListTree,
        selectedIcon: FontAwesomeIcons.solidListTree,
        label: 'Department'),
    FmiNavigationDestination(
        useBadge: true,
        icon: FontAwesomeIcons.lightNewspaper,
        selectedIcon: FontAwesomeIcons.solidNewspaper,
        label: 'News'),
    FmiNavigationDestination(
        useBadge: true,
        icon: FontAwesomeIcons.lightIdBadge,
        selectedIcon: FontAwesomeIcons.solidIdBadge,
        label: 'Services')
  ];
```

`  `
