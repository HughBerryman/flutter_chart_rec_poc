import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../fmi_core.dart';

class TwoButtonDialog extends StatelessWidget {
  const TwoButtonDialog({
    Key? key,
    required this.title,
    required this.message,
    required this.buttonOneText,
    required this.buttonTwoText,
    required this.buttonOneCallback,
    required this.buttonTwoCallback,
    this.iconData,
  }) : super(key: key);

  final String title;
  final String message;
  final String buttonOneText;
  final String buttonTwoText;
  final VoidCallback buttonOneCallback;
  final VoidCallback buttonTwoCallback;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: FmiConfirmationDialogTheme.confirmationDialog(context),
        child: AlertDialog(
            scrollable: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (iconData != null)
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: FMIThemeBase.basePaddingXLarge),
                    child: FaIcon(
                      iconData,
                      size: FMIThemeBase.baseIconXLarge,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                  ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    message,
                    overflow: TextOverflow.clip,
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => _buttonOneTapped(context),
                child: Text(buttonOneText),
              ),
              FilledButton(
                  onPressed: () => _buttonTwoTapped(context),
                  child: Text(buttonTwoText))
            ]));
  }

  void _buttonOneTapped(BuildContext context) {
    buttonOneCallback();
    Navigator.pop(context);
  }

  void _buttonTwoTapped(BuildContext context) {
    buttonTwoCallback();
    Navigator.pop(context);
  }
}
