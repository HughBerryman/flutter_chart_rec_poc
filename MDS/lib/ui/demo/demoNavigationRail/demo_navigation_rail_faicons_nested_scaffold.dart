import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoNavigationRailFaIconsNestedScaffold extends StatelessWidget {
  const DemoNavigationRailFaIconsNestedScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentSubheader(title: 'With Fa Icons and Nested Scaffold'),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePaddingLarge,
                  bottom: FMIThemeBase.basePaddingLarge),
              child: FilledButton(
                child: const Text("Show Navigation Rail"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const _CustomPage()));
                },
              ),
            )
          ],
        )
      ],
    );
  }
}

class _CustomPage extends StatefulWidget {
  const _CustomPage({Key? key}) : super(key: key);

  @override
  State<_CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<_CustomPage> {
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
}

Future<dynamic> showDialogAlert(BuildContext context) {
  return showDialog(
      context: context,
      builder: (_) => AlertDialog(
              title: const Text('FAB Pressed'),
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
