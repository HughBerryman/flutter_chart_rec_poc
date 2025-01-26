import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../demo.dart';
import 'mainDemo/mainDemo.dart';

class DemoAppBarTop extends StatelessWidget {
  const DemoAppBarTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ComponentHeader(title: 'Fmi App Bar Top'),
          Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
              child: const Text("Show App Bar Top - Single Item"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const _SingleIconAppBar()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
              child: const Text("Show App Bar Top - Multi Item"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const _MultiIconAppBar()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
              child: const Text("Show App Bar Top - With Main Navigation"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainDemoNavAppBar()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
              child: const Text("Show App Bar Top - With Force Dark"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScaffoldWrapper()));
              },
            ),
          ),
        ],
      )
    ]);
  }
}

class _MultiIconAppBar extends StatefulWidget {
  const _MultiIconAppBar({Key? key}) : super(key: key);
  @override
  State<_MultiIconAppBar> createState() => _MultiIconAppBarState();
}

class _MultiIconAppBarState extends State<_MultiIconAppBar> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(FMIThemeBase.baseContainerDimension72),
        child: FmiAppBarTop(
          title: 'Connected Ops',
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
              ? SvgPicture.asset('assets/images/misc-svgs/FM_logo.svg')
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
            ),
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
            child: Padding(
          padding: const EdgeInsets.all(
            FMIThemeBase.basePadding6,
          ),
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
          ),
        )),
      ),
    );
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

class _SingleIconAppBar extends StatefulWidget {
  const _SingleIconAppBar({Key? key}) : super(key: key);
  @override
  State<_SingleIconAppBar> createState() => _SingleIconAppBarState();
}

class _SingleIconAppBarState extends State<_SingleIconAppBar> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          actionItems: const [],
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
          ],
        ),
      ),
      body: Center(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(
            FMIThemeBase.basePadding6,
          ),
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
          ),
        )),
      ),
    );
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

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [Container()];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const FaIcon(FontAwesomeIcons.arrowLeft),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
