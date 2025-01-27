import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoDrawer extends StatefulWidget {
  const DemoDrawer({super.key});

  @override
  State<DemoDrawer> createState() => _DemoDrawerState();
}

class _DemoDrawerState extends State<DemoDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool showFooter = false;
  bool showSubtitle = false;
  bool showLeading = false;
  bool showFooterLeading = false;
  bool showFooterTrailing = false;
  bool showFooterOnTap = false;
  List<IconData> icons = [
    FontAwesomeIcons.arrowsRotate,
    FontAwesomeIcons.bellExclamation,
    FontAwesomeIcons.mailboxFlagUp,
    FontAwesomeIcons.boxCheck,
    FontAwesomeIcons.userGroup,
    FontAwesomeIcons.rightFromBracket,
    FontAwesomeIcons.rectangleWide,
  ];

  void _onPressed(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text('$text pressed'),
        );
      },
    );
  }

  List<FmiDrawerItem> getItems(BuildContext context) {
    return List.generate(
        7,
        (index) => FmiDrawerItem(
            enabled: index.isEven,
            leading: icons[index],
            label: 'Label $index',
            onTapped: (item) {
              Navigator.pop(context);
              _onPressed(context, item.label);
            },
            trailing: FaIcon(
              FontAwesomeIcons.arrowRight,
              size: FMIThemeBase.baseIconXSmall,
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeAltSurfaceInverseOnAltSurface,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              icon: const FaIcon(FontAwesomeIcons.bars),
            ),
            const Expanded(child: Text('Demo Fmi Navigation Drawer')),
          ],
        ),
      ),
      drawer: FmiNavigationDrawer(
        leading: showLeading
            ? const FmiAvatar(
                url:
                    "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg",
                displayName: "BOB JANCOSKI",
                avatarSize: FmiAvatarSize.large,
              )
            : null,
        title: 'employee name',
        subtitle: showSubtitle ? 'position' : null,
        items: getItems(context),
        footer: showFooter
            ? FmiDrawerItem(
                label: 'App Version',
                leading: showFooterLeading ? FontAwesomeIcons.circleInfo : null,
                trailing: showFooterTrailing
                    ? Text(
                        '999.99.999',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .fmiBaseThemeAltSurfaceInverseOnAltSurface),
                      )
                    : null,
                onTapped: showFooterOnTap
                    ? (item) {
                        Navigator.pop(context);
                        _onPressed(context, item.label);
                      }
                    : null)
            : null,
      ),
      body: Center(
          child: SafeArea(
              child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        showSubtitle = !showSubtitle;
                      });
                    },
                    child:
                        Text('Toggle subtitle = ${showSubtitle.toString()}')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        showLeading = !showLeading;
                      });
                    },
                    child: Text('Toggle leading = ${showLeading.toString()}')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        showFooter = !showFooter;
                        if (!showFooter) {
                          showFooterLeading = false;
                          showFooterTrailing = false;
                          showFooterOnTap = false;
                        }
                      });
                    },
                    child: Text('Toggle footer = ${showFooter.toString()}')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        showFooterLeading = !showFooterLeading;
                        if (showFooterLeading) showFooter = true;
                      });
                    },
                    child: Text(
                        'Toggle footer leading = ${showFooterLeading.toString()}')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        showFooterTrailing = !showFooterTrailing;
                        if (showFooterTrailing) showFooter = true;
                      });
                    },
                    child: Text(
                        'Toggle footer trailing = ${showFooterTrailing.toString()}')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        showFooterOnTap = !showFooterOnTap;
                        if (showFooterOnTap) showFooter = true;
                      });
                    },
                    child: Text(
                        'Toggle footer on tap ${showFooterOnTap.toString()}')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Click to Escape Demo')),
              )
            ],
          ))
        ],
      ))),
    );
  }
}
