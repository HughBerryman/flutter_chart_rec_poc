import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoDrawerExpansion extends StatefulWidget {
  const DemoDrawerExpansion({super.key});

  @override
  State<DemoDrawerExpansion> createState() => _DemoDrawerExpansionState();
}

class _DemoDrawerExpansionState extends State<DemoDrawerExpansion> {
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

  int expansionTileIndex1 = 0;
  int expansionTileIndex2 = 0;

  bool showAllLeadingIcons = true;
  bool showChildrenLeadingIcons = true;
  bool showLabelDividers = true;
  bool showTrailingIcons = true;

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

  List<FmiDrawerItem> getChildren1(BuildContext context) {
    return List.generate(
        5,
        (index) => FmiDrawerItem(
            enabled: index == 3 ? false : true,
            leading: showChildrenLeadingIcons && showAllLeadingIcons
                ? icons[index]
                : null,
            label: 'Label $index',
            onTapped: (item) {
              setState(() {
                expansionTileIndex1 = index;
                _onPressed(context, '$index');
              });
            },
            trailing: showTrailingIcons
                ? FaIcon(
                    FontAwesomeIcons.arrowRight,
                    size: FMIThemeBase.baseIconXSmall,
                    color: Theme.of(context)
                        .colorScheme
                        .fmiBaseThemeAltSurfaceInverseOnAltSurface,
                  )
                : null));
  }

  List<FmiDrawerItem> getChildren2(BuildContext context) {
    return List.generate(
        7,
        (index) => FmiDrawerItem(
            enabled: true,
            leading: showChildrenLeadingIcons && showAllLeadingIcons
                ? icons[index]
                : null,
            label: 'Label $index',
            onTapped: (item) {
              setState(() {
                expansionTileIndex2 = index;
                _onPressed(context, '$index');
              });
            },
            trailing: showTrailingIcons
                ? FaIcon(
                    FontAwesomeIcons.arrowRight,
                    size: FMIThemeBase.baseIconXSmall,
                    color: Theme.of(context)
                        .colorScheme
                        .fmiBaseThemeAltSurfaceInverseOnAltSurface,
                  )
                : null));
  }

  List<FmiDrawerItem> items(BuildContext context) {
    List<FmiDrawerItem> list = [
      FmiDrawerLabel(
        label: 'Header Label 0',
        hasDivider: false,
      ),
      FmiDrawerItem(
          enabled: true,
          leading: showAllLeadingIcons ? icons[0] : null,
          onTapped: (item) {
            Navigator.pop(context);
            _onPressed(context, item.label);
          },
          label: 'Label 0',
          trailing: showTrailingIcons
              ? const FaIcon(FontAwesomeIcons.arrowRight,
                  size: FMIThemeBase.baseIconXSmall)
              : null),
      FmiDrawerItem(
        enabled: false,
        leading: showAllLeadingIcons ? icons[1] : null,
        onTapped: (item) {
          Navigator.pop(context);
          _onPressed(context, item.label);
        },
        label: 'Label 1',
        trailing: showTrailingIcons
            ? const FaIcon(FontAwesomeIcons.arrowRight,
                size: FMIThemeBase.baseIconXSmall)
            : null,
      ),
      FmiDrawerLabel(
        label: 'Header Label 1',
        hasDivider: showLabelDividers,
      ),
      FmiDrawerExpansionTile(
        leading: showAllLeadingIcons ? icons[4] : null,
        children: getChildren1(context),
        label: 'Label 2',
        selectedIndex: expansionTileIndex1,
      ),
      FmiDrawerExpansionTile(
        leading: showAllLeadingIcons ? icons[5] : null,
        children: getChildren2(context),
        label: 'Label 3',
        selectedIndex: expansionTileIndex2,
      ),
      FmiDrawerLabel(
        label: 'Header Label 2',
        hasDivider: showLabelDividers,
      ),
      FmiDrawerExpansionTile(
        enabled: false,
        leading: showAllLeadingIcons ? icons[6] : null,
        children: getChildren2(context),
        label: 'Label 5',
        selectedIndex: expansionTileIndex2,
      ),
    ];
    return list;
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
        items: items(context),
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
                      setState(() {
                        showChildrenLeadingIcons = !showChildrenLeadingIcons;
                      });
                    },
                    child: Text(
                        'Toggle Child Leading Icons = ${showChildrenLeadingIcons.toString()}')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        showAllLeadingIcons = !showAllLeadingIcons;
                      });
                    },
                    child: Text(
                        'Toggle All Leading Icons = ${showAllLeadingIcons.toString()}')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        showLabelDividers = !showLabelDividers;
                      });
                    },
                    child: Text(
                        'Toggle Label Dividers = ${showLabelDividers.toString()}')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        showTrailingIcons = !showTrailingIcons;
                      });
                    },
                    child: Text(
                        'Toggle Trailing Icons = ${showTrailingIcons.toString()}')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Click to Escape Demo')),
              ),
            ],
          ))
        ],
      ))),
    );
  }
}
