import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainDemoNavAppBar extends StatefulWidget {
  const MainDemoNavAppBar({Key? key}) : super(key: key);
  @override
  State<MainDemoNavAppBar> createState() => MainDemoNavAppBarState();
}

class MainDemoNavAppBarState extends State<MainDemoNavAppBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  String shiftLabel = 'Previous Shift';
  bool toggleLeading = false;
  bool toggleImage = false;
  bool toggleFAB = true;
  bool toggleOneActionItem = false;
  bool toggleNavLabels = false;
  bool toggleFloating = false;
  bool togglePinned = false;
  bool toggleIsElevated = true;
  int index = 0;
  int _selectedDestinationOption = 7;
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

  FabThemeEnum? selectedFabOption;

  @override
  Widget build(BuildContext context) {
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

      return tabs.sublist(0, _selectedDestinationOption);
    }

    return Scaffold(
      key: _scaffoldKey,
      appBar: (toggleFloating || togglePinned)
          ? null
          : PreferredSize(
              preferredSize:
                  const Size.fromHeight(FMIThemeBase.baseContainerDimension72),
              child: getAppBarTop(getDestinations, context)),
      body: (toggleFloating || togglePinned)
          ? NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [getAppBarTop(getDestinations, context)];
              },
              body: getPage(context),
            )
          : Center(
              child: getPage(context),
            ),
    );
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
      fabTheme: selectedFabOption,
      onDestinationSelected: (int value) {
        setState(() {
          index = value;
        });
      },
      floating: toggleFloating,
      pinned: togglePinned,
      isElevated: toggleIsElevated,
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
              PopupMenuItem(
                value: 'Previous Shift',
                child: Text('Previous',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).colorScheme.inverseSurface)),
              ),
              PopupMenuItem(
                value: 'Current Shift',
                child: Text('Current',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).colorScheme.inverseSurface)),
              ),
              PopupMenuItem(
                value: 'Next Shift',
                child: Text('Next',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).colorScheme.inverseSurface)),
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
                label: Text(
                  'Notifications',
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
                label: Text(
                  'Edit Calendar',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.inverseSurface),
                ),
                component: IconButton(
                  icon: FaIcon(FontAwesomeIcons.solidCalendar,
                      color: Theme.of(context).colorScheme.inverseSurface),
                  onPressed: () => showDialogAlert(context),
                ),
              ),
              AppBarTopComponent(
                onTap: () => showDialogAlert(context),
                label: Text(
                  'Edit Profile',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.inverseSurface),
                ),
                component: IconButton(
                  icon: FaIcon(FontAwesomeIcons.solidCircleUser,
                      color: Theme.of(context).colorScheme.inverseSurface),
                  onPressed: () => showDialogAlert(context),
                ),
              ),
              AppBarTopComponent(
                onTap: () => showDialogAlert(context),
                label: Text(
                  'Settings',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.inverseSurface),
                ),
                component: IconButton(
                  icon: FaIcon(FontAwesomeIcons.solidGear,
                      color: Theme.of(context).colorScheme.inverseSurface),
                  onPressed: () => showDialogAlert(context),
                ),
              ),
              AppBarTopComponent(
                onTap: () => showDialogAlert(context),
                label: Text(
                  'Update',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.inverseSurface),
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

  Widget getPage(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            FMIThemeBase.basePadding6,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: FMIThemeBase.basePadding6),
                child: FilledButton.icon(
                    icon: const FaIcon(FontAwesomeIcons.xmark),
                    label: const Text('Close Demo'),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              getModifierButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getModifierButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: FMIThemeBase.basePadding6,
          ),
          child: Row(
            children: [
              Switch(
                  value: toggleLeading,
                  onChanged: (bool val) {
                    setState(() {
                      toggleLeading = val;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
                child: Text(
                    !toggleLeading ? 'Show Leading Slot' : 'Hide Leading Slot'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: FMIThemeBase.basePadding3,
          ),
          child: Row(
            children: [
              Switch(
                  value: toggleImage,
                  onChanged: (bool val) {
                    setState(() {
                      toggleImage = val;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
                child:
                    Text(!toggleImage ? 'Show Image Slot' : 'Hide Image Slot'),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Switch(
                value: toggleFAB,
                onChanged: (bool val) {
                  setState(() {
                    toggleFAB = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
              child: Text(!toggleFAB ? 'Show FAB' : 'Hide FAB'),
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
                  value: toggleNavLabels,
                  onChanged: (bool val) {
                    setState(() {
                      toggleNavLabels = val;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
                child: Text(
                    !toggleNavLabels ? 'Show Nav Labels' : 'Hide Nav Labels'),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Switch(
                value: toggleFloating,
                onChanged: (bool val) {
                  setState(() {
                    toggleFloating = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
              child: Text(
                  !toggleFloating ? 'Enable Floating' : 'Disable Floating'),
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
                  value: togglePinned,
                  onChanged: (bool val) {
                    setState(() {
                      togglePinned = val;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
                child: Text(!togglePinned ? 'Enable Pinned' : 'Disable Pinned'),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Switch(
                value: toggleIsElevated,
                onChanged: (bool val) {
                  setState(() {
                    toggleIsElevated = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
              child: Text(
                  !toggleIsElevated ? 'Enable Elevation' : 'Disable Elevation'),
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
                  value: toggleOneActionItem,
                  onChanged: (bool val) {
                    setState(() {
                      toggleOneActionItem = val;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.only(left: FMIThemeBase.basePadding6),
                child: Text(!toggleOneActionItem
                    ? 'Limit Action Item = 1'
                    : 'Increase Action Items'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: FMIThemeBase.basePadding2,
              bottom: FMIThemeBase.basePadding6),
          child: Row(
            children: [
              FilledButton(
                  onPressed: () => showFabRadioAlert(context),
                  child: const Text('Select FAB Theme')),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: FMIThemeBase.basePadding6),
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
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
            child: Text('Select No Nav Items'),
          ),
          Row(
            children: [
              Radio(
                value: 3,
                groupValue: _selectedDestinationOption,
                onChanged: (value) {
                  setState(() {
                    _selectedDestinationOption = value!;
                  });
                },
              ),
              const Text('3'),
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
                value: 9,
                groupValue: _selectedDestinationOption,
                onChanged: (value) {
                  setState(() {
                    _selectedDestinationOption = value!;
                  });
                },
              ),
              const Text('9'),
            ],
          ),
        ]),
      ],
    );
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
}
