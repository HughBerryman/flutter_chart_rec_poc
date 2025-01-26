import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoMainNavigationRail extends StatefulWidget {
  const DemoMainNavigationRail({super.key});

  @override
  State<DemoMainNavigationRail> createState() => _DemoMainNavigationRailState();
}

class _DemoMainNavigationRailState extends State<DemoMainNavigationRail> {
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
}
