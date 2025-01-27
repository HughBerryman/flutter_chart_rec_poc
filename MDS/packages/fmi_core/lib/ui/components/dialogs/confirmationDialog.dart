import 'package:flutter/material.dart';
import 'package:fmi_core/extensions/extensions.dart';
import 'package:fmi_core/themes/dialogs/fmi_confirmation_dialog_theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../designTokens/fmi_theme_base.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog(
      {Key? key,
      required this.title,
      required this.message,
      this.iconData,
      this.callback,
      this.confirmButtonTitle,
      this.canCancel = false,
      this.isElevateButtonType = false})
      : super(key: key);

  final String title;
  final String message;
  final IconData? iconData;
  final VoidCallback? callback;
  final String? confirmButtonTitle;
  final bool canCancel;
  final bool isElevateButtonType;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: FmiConfirmationDialogTheme.confirmationDialog(context),
      child: AlertDialog(
          scrollable: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
          actions: actionButton(context)),
    );
  }

  List<Widget> actionButton(BuildContext context) {
    List<Widget> listButton = <Widget>[];
    // showing cancel button
    if (canCancel) {
      listButton.add(TextButton(
        onPressed: () => Navigator.pop(context),
        child: Text(context.coreLocalize.cancel),
      ));
    }
    if (isElevateButtonType && callback != null) {
      listButton.add(FilledButton(
          onPressed: callback ?? () => Navigator.pop(context),
          child: Text(confirmButtonTitle ?? context.coreLocalize.okay)));
    } else {
      listButton.add(TextButton(
          onPressed: callback ?? () => Navigator.pop(context),
          child: Text(confirmButtonTitle ?? context.coreLocalize.okay)));
    }

    return listButton;
  }
}
