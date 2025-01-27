import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarDefault extends StatefulWidget {
  const AppBarDefault({super.key});

  @override
  State<AppBarDefault> createState() => _AppBarDefaultState();
}

class _AppBarDefaultState extends State<AppBarDefault> {
  bool showSubtitle = false;
  bool toggleLeading = false;
  bool showMultipleLeading = false;
  bool hideLeading = false;
  bool hideActions = false;
  bool centerTitle = false;

  final List<String> options = [
    'Default',
    'FmiAppBarTheme.surface',
    'FmiAppBarTheme.inverseAltSurface',
    'FmiAppBarTheme.forceDarkMode'
  ];
  String selectedTheme = "Default";

  void _onPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          content: Text('on pressed'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: selectedTheme == 'Default'
          ? PreferredSize(
              preferredSize:
                  const Size.fromHeight(FMIThemeBase.baseContainerDimension64),
              child: getAppBar())
          : PreferredSize(
              preferredSize:
                  const Size.fromHeight(FMIThemeBase.baseContainerDimension64),
              child: Theme(data: getTheme(), child: getAppBar())),
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: FMIThemeBase.basePadding2,
                    top: FMIThemeBase.basePadding8,
                    right: FMIThemeBase.basePadding2,
                    bottom: FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        centerTitle = !centerTitle;
                      });
                    },
                    child: const Text('Toggle center')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        showSubtitle = !showSubtitle;
                      });
                    },
                    child: const Text('Toggle subtitle')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        toggleLeading = !toggleLeading;
                      });
                    },
                    child: const Text('Toggle leading')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        showMultipleLeading = !showMultipleLeading;
                      });
                    },
                    child: const Text('Toggle multiple leading')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        hideLeading = !hideLeading;
                      });
                    },
                    child: const Text('Hide leading')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: FilledButton(
                    onPressed: () {
                      setState(() {
                        hideActions = !hideActions;
                      });
                    },
                    child: const Text('Hide actions')),
              ),
              Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
                child: DropdownButton<String>(
                  value: selectedTheme,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedTheme = newValue!;
                    });
                  },
                  items: options.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
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
      )),
    );
  }

  Widget getAppBar() {
    return centerTitle
        ? getCentered()
        : !hideLeading
            ? getLeadingAppBar()
            : getTitleAppBar();
  }

  // title app bar not centered
  Widget getTitleAppBar() {
    return AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Longer Title',
            ),
            if (showSubtitle)
              Text(
                'longer subtitle',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: getColor(context)),
              )
          ],
        ),
        actions: hideActions ? null : getActions());
  }

  // leading and title app bar
  Widget getLeadingAppBar() {
    return AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            if (showMultipleLeading) ...[
              getLeadingIcon(toggleLeading),
              Padding(
                padding:
                    const EdgeInsets.only(right: FMIThemeBase.basePadding4),
                child: getLeadingImage(),
              )
            ],
            if (!showMultipleLeading) ...[
              toggleLeading
                  ? Padding(
                      padding: const EdgeInsets.only(
                          right: FMIThemeBase.basePadding4),
                      child: getLeadingImage(),
                    )
                  : IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const FaIcon(
                        FontAwesomeIcons.arrowLeft,
                      )),
            ],
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Longer Title',
                  ),
                  if (showSubtitle)
                    Text(
                      'longer subtitle',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: getColor(context)),
                    )
                ],
              ),
            ),
          ],
        ),
        actions: hideActions ? null : getActions());
  }

  // centered app bar
  Widget getCentered() {
    return AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: hideLeading
            ? FMIThemeBase.baseContainerDimension0
            : showMultipleLeading
                ? FMIThemeBase.basePadding8 +
                    FMIThemeBase.baseContainerDimension40 +
                    FMIThemeBase.baseContainerDimension40
                : null,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: FMIThemeBase.basePadding8),
          child: Row(children: [
            if (showMultipleLeading) ...[
              getLeadingIcon(toggleLeading),
              getLeadingImage(),
            ],
            if (!showMultipleLeading) ...[
              toggleLeading
                  ? getLeadingImage()
                  : IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const FaIcon(
                        FontAwesomeIcons.arrowLeft,
                      )),
            ],
          ]),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Longer Title',
            ),
            if (showSubtitle)
              Text(
                'longer subtitle',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: getColor(context)),
              )
          ],
        ),
        actions: hideActions ? null : getActions());
  }

  Widget getLeadingIcon(bool toggleLeading) {
    return toggleLeading
        ? IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const FaIcon(
              FontAwesomeIcons.arrowLeft,
            ))
        : IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const FaIcon(
              FontAwesomeIcons.bars,
            ));
  }

  Widget getLeadingImage() {
    return SizedBox(
        width: FMIThemeBase.baseContainerDimension40,
        child: SvgPicture.asset('assets/images/misc-svgs/FM_logo.svg'));
  }

  List<Widget> getActions() {
    return [
      IconButton(
          onPressed: () => _onPressed(context),
          icon: const FaIcon(FontAwesomeIcons.cloudCheck)),
      IconButton(
          onPressed: () => _onPressed(context),
          icon: const FaIcon(FontAwesomeIcons.bell)),
      Padding(
        padding: const EdgeInsets.only(right: FMIThemeBase.basePadding8),
        child: IconButton(
            onPressed: () => _onPressed(context),
            icon: const FaIcon(FontAwesomeIcons.ellipsisVertical)),
      ),
    ];
  }

  Color getColor(BuildContext context) {
    if (selectedTheme == 'FmiAppBarTheme.surface') {
      return Theme.of(context).colorScheme.onSurface;
    } else if (selectedTheme == 'FmiAppBarTheme.inverseAltSurface') {
      return Theme.of(context)
          .colorScheme
          .fmiBaseThemeAltSurfaceInverseOnAltSurface;
    } else if (selectedTheme == 'FmiAppBarTheme.forceDarkMode') {
      return Theme.of(context).colorScheme.chartGrayscaleGray0;
    } else {
      return Theme.of(context).colorScheme.onSecondaryContainer;
    }
  }

  ThemeData getTheme() {
    if (selectedTheme == 'FmiAppBarTheme.surface') {
      return FmiAppBarTheme.surface(context);
    } else if (selectedTheme == 'FmiAppBarTheme.inverseAltSurface') {
      return FmiAppBarTheme.inverseAltSurface(context);
    } else if (selectedTheme == 'FmiAppBarTheme.forceDarkMode') {
      return FmiAppBarTheme.forceDarkMode(context);
    } else {
      return Theme.of(context);
    }
  }
}
