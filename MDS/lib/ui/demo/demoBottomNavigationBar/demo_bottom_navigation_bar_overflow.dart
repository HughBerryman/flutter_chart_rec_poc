import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoBottomNavigationBarOverflow extends StatelessWidget {
  const DemoBottomNavigationBarOverflow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentSubheader(
            title: 'With Navigation Overflow Bottom Sheet'),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePaddingLarge,
                  bottom: FMIThemeBase.basePaddingLarge),
              child: FilledButton(
                child: const Text("Show Bottom Navigation Bar"),
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
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  bool toggleFab = true;
  bool toggleUnselectedLabels = true;
  bool toggleSelectedLabels = true;
  bool toggleForceDarkMode = false;
  int _selectedDestinationOption = 12;

  List<FmiNavigationDestination> destinations = <FmiNavigationDestination>[
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightObjectsColumn,
        selectedIcon: FontAwesomeIcons.solidObjectsColumn,
        label: 'Dashboard'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightListTree,
        selectedIcon: FontAwesomeIcons.solidListTree,
        label: 'Ops'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightNewspaper,
        selectedIcon: FontAwesomeIcons.solidNewspaper,
        label: 'News'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightIdBadge,
        selectedIcon: FontAwesomeIcons.solidIdBadge,
        label: 'Services'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightTruck,
        selectedIcon: FontAwesomeIcons.solidTruck,
        label: 'Load/Haul'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightBoreHole,
        selectedIcon: FontAwesomeIcons.solidBoreHole,
        label: 'Drill/Blast'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightFile,
        selectedIcon: FontAwesomeIcons.solidFile,
        label: 'EOS Report'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightMound,
        selectedIcon: FontAwesomeIcons.solidMound,
        label: 'Crush/Convey'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightTractor,
        selectedIcon: FontAwesomeIcons.solidTractor,
        label: 'Equipment'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightHelmetSafety,
        selectedIcon: FontAwesomeIcons.solidHelmetSafety,
        label: 'Operator'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightFire,
        selectedIcon: FontAwesomeIcons.solidFire,
        label: 'Fire Inspect'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightHillRockslide,
        selectedIcon: FontAwesomeIcons.solidHillRockslide,
        label: 'Accident Report'),
  ];

  FabThemeEnum? selectedFabOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar Demo'),
        automaticallyImplyLeading: false,
      ),
      body: Flex(direction: Axis.vertical, children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding12),
              child: getModifierButtons(context),
            ),
          ),
        ),
      ]),
      bottomNavigationBar: FmiBottomNavigationBar(
        forceDarkMode: toggleForceDarkMode,
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
        enableFab: toggleFab,
        showUnselectedLabels: toggleUnselectedLabels,
        showSelectedLabels: toggleSelectedLabels,
        onTap: (index) {
          onNavigationItemSelected(index);
        },
        currentIndex: _currentIndex,
        destinations: getDestinations(),
      ),
    );
  }

  getDestinations() {
    return destinations.sublist(0, _selectedDestinationOption);
  }

  Column getModifierButtons(BuildContext context) {
    return Column(children: [
      FilledButton.icon(
          icon: const FaIcon(FontAwesomeIcons.xmark),
          label: const Text('Close Demo'),
          onPressed: () {
            Navigator.pop(context);
          }),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: FMIThemeBase.basePadding3,
        ),
        child: Row(
          children: [
            Switch(
                value: toggleFab,
                onChanged: (bool val) {
                  setState(() {
                    toggleFab = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
              child: Text(!toggleFab ? 'Show FAB' : 'Hide FAB'),
            ),
          ],
        ),
      ),
      Row(
        children: [
          Switch(
              value: toggleUnselectedLabels,
              onChanged: (bool val) {
                setState(() {
                  toggleUnselectedLabels = val;
                });
              }),
          Padding(
            padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
            child: Text(!toggleUnselectedLabels
                ? 'Show Unselected Labels'
                : 'Hide Unselected Labels'),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: FMIThemeBase.basePadding3,
        ),
        child: Row(
          children: [
            Switch(
                value: toggleSelectedLabels,
                onChanged: (bool val) {
                  setState(() {
                    toggleSelectedLabels = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
              child: Text(!toggleSelectedLabels
                  ? 'Show Selected Labels'
                  : 'Hide Selected Labels'),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
            top: FMIThemeBase.basePadding2, bottom: FMIThemeBase.basePadding6),
        child: Row(
          children: [
            FilledButton(
                onPressed: () => showFabRadioAlert(context),
                child: const Text('Select FAB Theme')),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  selectedFabOption == null
                      ? 'Fab Theme: Default'
                      : 'Fab Theme: ${selectedFabOption.toString()}',
                ),
              ),
            ),
          ],
        ),
      ),
      Row(
        children: [
          Switch(
              value: toggleForceDarkMode,
              onChanged: (bool val) {
                setState(() {
                  toggleForceDarkMode = val;
                });
              }),
          Padding(
            padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
            child: Text(!toggleForceDarkMode
                ? 'Enable Force Dark Mode'
                : 'Disable Force Dark Mode'),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
            child: Text('Select No Nav Items'),
          ),
          Row(
            children: [
              Radio(
                value: 4,
                groupValue: _selectedDestinationOption,
                onChanged: (value) {
                  setState(() {
                    _selectedDestinationOption = value!;
                  });
                },
              ),
              const Text('4'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 5,
                groupValue: _selectedDestinationOption,
                onChanged: (value) {
                  setState(() {
                    _selectedDestinationOption = value!;
                  });
                },
              ),
              const Text('5'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 6,
                groupValue: _selectedDestinationOption,
                onChanged: (value) {
                  setState(() {
                    _selectedDestinationOption = value!;
                  });
                },
              ),
              const Text('6'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 7,
                groupValue: _selectedDestinationOption,
                onChanged: (value) {
                  setState(() {
                    _selectedDestinationOption = value!;
                  });
                },
              ),
              const Text('7'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 10,
                groupValue: _selectedDestinationOption,
                onChanged: (value) {
                  setState(() {
                    _selectedDestinationOption = value!;
                  });
                },
              ),
              const Text('10'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 12,
                groupValue: _selectedDestinationOption,
                onChanged: (value) {
                  setState(() {
                    _selectedDestinationOption = value!;
                  });
                },
              ),
              const Text('12'),
            ],
          ),
        ],
      )
    ]);
  }

  void onNavigationItemSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Future<dynamic> showFabRadioAlert(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              backgroundColor: Theme.of(context).colorScheme.surface,
              surfaceTintColor: Colors.transparent,
              title: Text('Select FAB Theme',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      )),
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RadioListTile(
                        title: const Text("Fab Theme Default"),
                        value: null,
                        groupValue: selectedFabOption,
                        onChanged: (value) {
                          setState(() {
                            selectedFabOption = null;
                          });
                          Navigator.of(context, rootNavigator: true)
                              .pop('dialog');
                        }),
                    for (FabThemeEnum option in FabThemeEnum.values)
                      RadioListTile(
                          title: Text(option.toString()),
                          value: option,
                          groupValue: selectedFabOption,
                          onChanged: (value) {
                            setState(() {
                              selectedFabOption = value as FabThemeEnum;
                              Navigator.of(context, rootNavigator: true)
                                  .pop('dialog');
                            });
                          }),
                  ],
                ),
              ),
            ));
  }
}
