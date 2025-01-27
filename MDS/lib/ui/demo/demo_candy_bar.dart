import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoCandyBar extends StatefulWidget {
  const DemoCandyBar({super.key});

  @override
  State<DemoCandyBar> createState() => _DemoCandyBarState();
}

class _DemoCandyBarState extends State<DemoCandyBar> {
  bool isVisible = false;
  List<FmiCandyBarItem> currentItems = [];
  OverlayEntry? overlayEntry;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sample of FmiCandyBar:",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
              child: FilledButton(
                onPressed: onClickAllType,
                child: const Text(
                  "All type of CandyBar",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeWarningOnWarning,
                  backgroundColor:
                      Theme.of(context).colorScheme.fmiBaseThemeWarningWarning,
                ),
                onPressed: onClickWarning,
                child: const Text(
                  "Warning CandyBar",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor:
                      Theme.of(context).colorScheme.fmiBaseThemeDangerOnDanger,
                  backgroundColor:
                      Theme.of(context).colorScheme.fmiBaseThemeDangerDanger,
                ),
                onPressed: onClickError,
                child: const Text(
                  "Error CandyBar",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding2),
              child: ElevatedButton(
                onPressed: onClickCustom,
                child: const Text(
                  "Custom CandyBar",
                ),
              ),
            ),
          ],
        ),
        Visibility(
          visible: isVisible,
          child: Padding(
            padding: const EdgeInsets.only(top: FMIThemeBase.basePadding2),
            child: FmiCandyBar(
              items: currentItems,
            ),
          ),
        ),
      ],
    );
  }

  void onItemRemoved() {
    if (currentItems.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('FmiCandyBar onRemoved'),
        action: SnackBarAction(
          label: 'Dismiss',
          onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
        ),
      ));
    }
  }

  void addAllType() {
    currentItems = [];
    currentItems.add(pfeCandyBar());
    currentItems.add(outageCandyBar());
    currentItems.add(successCandyBar());
  }

  void addOutage() {
    currentItems = [];
    currentItems.add(outageCandyBar());
  }

  void addPfe() {
    currentItems = [];
    currentItems.add(multiPfeCandyBar());
  }

  void addCustomType() {
    currentItems = [];
    currentItems.add(customCandyBar());
  }

  void onClickAllType() {
    if (currentItems.isNotEmpty) {
      setState(() {
        isVisible = false;
        currentItems = [];
      });
    }

    setState(() {
      isVisible = true;
      addAllType();
    });
  }

  void onClickWarning() {
    if (currentItems.isNotEmpty) {
      setState(() {
        isVisible = false;
        currentItems = [];
      });
    }

    setState(() {
      isVisible = true;
      addOutage();
    });
  }

  void onClickError() {
    if (currentItems.isNotEmpty) {
      setState(() {
        isVisible = false;
        currentItems = [];
      });
    }

    setState(() {
      isVisible = true;
      addPfe();
    });
  }

  void onClickCustom() {
    if (currentItems.isNotEmpty) {
      setState(() {
        isVisible = false;
        currentItems = [];
      });
    }

    setState(() {
      isVisible = true;
      addCustomType();
    });
  }

  FmiCandyBarItem successCandyBar() {
    return FmiCandyBarItem(
      buttonText: "View",
      description: "No announcement for today",
      onTap: () => _showAlertDialog(context),
    );
  }

  FmiCandyBarItem outageCandyBar() {
    return FmiCandyBarItem(
      type: FmiCandyBarType.warning,
      buttonText: "View",
      description:
          "Beginning Thursday 11/30/2023 at 4:00 AM MIS will conduct maintenance on Houston (FM O&G) Sharepoint.",
      onTap: () => _showAlertDialog(context),
    );
  }

  FmiCandyBarItem pfeCandyBar() {
    return FmiCandyBarItem(
      type: FmiCandyBarType.error,
      buttonText: "View",
      icon: FontAwesomeIcons.solidCircleExclamation,
      title: "Potential Fatal Event - Chino Mill",
      description: "Uncontrolled Release of Energy",
      onTap: () => _showAlertDialog(context),
    );
  }

  FmiCandyBarItem multiPfeCandyBar() {
    return FmiCandyBarItem(
      type: FmiCandyBarType.error,
      buttonText: "View",
      icon: FontAwesomeIcons.solidCircleExclamation,
      title: "Multiple Potenital Fatal Events",
      description: "Chino Mill, Bagdad, Climax, and Moreci.",
      onTap: () => _showAlertDialog(context),
    );
  }

  FmiCandyBarItem customCandyBar() {
    return FmiCandyBarItem(
      backgroundColor: Theme.of(context).colorScheme.primary,
      buttonText: "View",
      buttonTextColor: Theme.of(context).colorScheme.fmiBaseThemeWarningWarning,
      icon: FontAwesomeIcons.solidCircleExclamation,
      iconColor: Theme.of(context).colorScheme.onPrimary,
      title: "Custom Candy Bar Title",
      titleColor: Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess,
      description: "Custom candy bar description.",
      descriptionColor:
          Theme.of(context).colorScheme.fmiBaseThemeSuccessOnSuccess,
      onTap: () => _showAlertDialog(context),
      onRemoved: onItemRemoved,
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: const Text("You clicked the onTap event!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
