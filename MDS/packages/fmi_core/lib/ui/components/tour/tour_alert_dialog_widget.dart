import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class TourAlertDialogWidget extends StatelessWidget {
  const TourAlertDialogWidget(
      {Key? key, required this.title, required this.content})
      : super(key: key);

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(FMIThemeBase.baseBorderRadiusXLarge)),
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      actionsAlignment: MainAxisAlignment.end,
      actionsPadding: const EdgeInsets.all(
        FMIThemeBase.basePadding15,
      ),
      title: Container(
        decoration: BoxDecoration(
            color:
                Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceAltSurface,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(FMIThemeBase.baseBorderRadiusXLarge),
                topRight:
                    Radius.circular(FMIThemeBase.baseBorderRadiusXLarge))),
        child: Padding(
          padding: const EdgeInsets.only(
              top: FMIThemeBase.basePadding6,
              bottom: FMIThemeBase.basePadding4),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: FMIThemeBase.basePadding15,
                vertical: FMIThemeBase.basePadding7),
            child: Text(title,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
          ),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: Theme.of(context).colorScheme.outline,
            height: FMIThemeBase.baseBorderWidthThin,
          ),
          content,
        ],
      ),
    );
  }
}
