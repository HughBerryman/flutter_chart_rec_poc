import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/appBarTopDemo/appBarTopDemo.dart';

class MainNavAppBar extends StatefulWidget {
  const MainNavAppBar({Key? key}) : super(key: key);
  @override
  State<MainNavAppBar> createState() => MainNavAppBarState();
}

class MainNavAppBarState extends State<MainNavAppBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  String shiftLabel = 'Previous Shift';
  bool showAlertBadge = true;

  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<FmiNavigationDestination> getDestinations() {
      List<FmiNavigationDestination> tabs = [
        FmiNavigationDestination(
          selectedIcon: FontAwesomeIcons.solidHouse,
          icon: FontAwesomeIcons.lightHouse,
          label: 'Home',
        ),
        FmiNavigationDestination(
          selectedIcon: FmiIcons.loadhaul,
          icon: FmiIcons.loadhaullight,
          label: 'Load/Haul',
        ),
        FmiNavigationDestination(
          selectedIcon: FmiIcons.drill,
          icon: FmiIcons.drilllight,
          label: 'Drill/Blast',
        ),
        FmiNavigationDestination(
          selectedIcon: FontAwesomeIcons.solidFile,
          icon: FontAwesomeIcons.lightFile,
          label: 'EOS Report',
        ),
        FmiNavigationDestination(
          selectedIcon: FontAwesomeIcons.solidMound,
          icon: FontAwesomeIcons.lightMound,
          label: 'Crush/Convey',
        ),
        FmiNavigationDestination(
          selectedIcon: FontAwesomeIcons.solidTractor,
          icon: FontAwesomeIcons.tractor,
          label: 'Equipment',
        ),
      ];

      return tabs;
    }

    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(FMIThemeBase.baseContainerDimension72),
          child: getAppBarTop(getDestinations, context)),
      body: Theme(
        data: MediaQuery.of(context).platformBrightness == Brightness.light
            ? FmiThemeLight.fmiThemeDataLight
            : FmiThemeDark.fmiThemeDataDark,
        child: const Center(child: SafeArea(child: DemoPage())),
      ),
    );
  }

  FmiAppBarTop getAppBarTop(
      List<FmiNavigationDestination> Function() getDestinations,
      BuildContext context) {
    return FmiAppBarTop(
      leading: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FmiAvatar(
              displayName: 'Bob Jancoski', avatarSize: FmiAvatarSize.large),
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
                    color: Theme.of(context).colorScheme.inverseSurface),
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
                    padding: EdgeInsets.only(left: FMIThemeBase.basePadding4),
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
            )),
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
    );
  }

  Future<dynamic> showAddNotificationAlert(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
                title: const Text('Add Notifications Pressed'),
                content: !showAlertBadge
                    ? const Text('Click OK to close and add notifications.')
                    : const Text('Click the OK button to close'),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      setState(() {
                        showAlertBadge = true;
                      });
                      Navigator.of(context, rootNavigator: true).pop('dialog');
                    },
                  )
                ]));
  }

  Future<dynamic> showNotificationAlert(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
                title: const Text('Notifications Pressed'),
                content: showAlertBadge
                    ? const Text('Click OK to close and clear notifications.')
                    : const Text('Click the OK button to close'),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      setState(() {
                        showAlertBadge = false;
                      });
                      Navigator.of(context, rootNavigator: true).pop('dialog');
                    },
                  )
                ]));
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
