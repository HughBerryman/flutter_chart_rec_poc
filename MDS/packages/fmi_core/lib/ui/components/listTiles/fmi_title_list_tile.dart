import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@Deprecated(
    'Deprecated - Replace with OOB Components to be removed in future artifact update')
class FmiTitleListTile extends StatelessWidget {
  const FmiTitleListTile(
      {Key? key,
      required this.title,
      this.label = '',
      this.secondaryText = '',
      this.enableTrailingArrow = false,
      this.onTap,
      this.onLongPress})
      : super(key: key);

  final String? label;
  final String title;
  final String? secondaryText;
  final bool? enableTrailingArrow;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Visibility(
            visible: label == '' ? false : true,
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: FMIThemeBase.basePaddingLarge,
                  left: FMIThemeBase.basePaddingLarge +
                      FMIThemeBase.basePaddingSmall),
              child: Text(
                label!,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .fmiBaseThemeAltSurfaceOnAltSurface,
                    letterSpacing: FMIThemeBase.baseLetterSpacing4),
              ),
            ),
          ),
          Positioned(
            child: ListTile(
              horizontalTitleGap: 0,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              title: Text(title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface)),
              subtitle: Visibility(
                visible: secondaryText == '' ? false : true,
                child: Text(secondaryText!,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.normal)),
              ),
              trailing: enableTrailingArrow == true
                  ? const Icon(FontAwesomeIcons.chevronRight)
                  : const SizedBox(),
              onTap: onTap,
              onLongPress: onLongPress,
            ),
          )
        ],
      ),
    );
  }
}
