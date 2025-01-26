import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoScaffoldExOne extends StatelessWidget {
  const DemoScaffoldExOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const ComponentSubheader(title: 'Scaffold Demo'),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
              child: const Text("Show Scaffold Demo"),
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
    ]);
  }
}

class _CustomPage extends StatefulWidget {
  const _CustomPage();

  @override
  State<_CustomPage> createState() => __CustomPageState();
}

class __CustomPageState extends State<_CustomPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(FMIThemeBase.baseContainerDimension72),
        child: FmiAppBarTop(
          isElevated: false,
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
      body: Center(
        child: SafeArea(
          child: Row(
            children: [
              if (context.isLarge || context.isMedium)
                FmiNavigationRail(
                  leading: FloatingActionButton(
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
                  trailing: FloatingActionButton(
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
                  selectedIndex: _selectedIndex,
                  destinations: destinations,
                  onDestinationSelected: (int index) => setState(() {
                    _selectedIndex = index;
                  }),
                  labelType: NavigationRailLabelType.none,
                ),
              Expanded(
                child: Center(child: bodySection(context)),
              ),
            ],
          ),
        ),
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
    );
  }

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
                    textAlign: TextAlign.center,
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
                        color: Theme.of(context)
                            .colorScheme
                            .surfaceContainerHighest,
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
        icon: FontAwesomeIcons.lightObjectsColumn,
        selectedIcon: FontAwesomeIcons.solidObjectsColumn,
        label: 'Dashboard'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightListTree,
        selectedIcon: FontAwesomeIcons.solidListTree,
        label: 'Department'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightNewspaper,
        selectedIcon: FontAwesomeIcons.solidNewspaper,
        label: 'News'),
    FmiNavigationDestination(
        icon: FontAwesomeIcons.lightIdBadge,
        selectedIcon: FontAwesomeIcons.solidIdBadge,
        label: 'Services')
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
}
