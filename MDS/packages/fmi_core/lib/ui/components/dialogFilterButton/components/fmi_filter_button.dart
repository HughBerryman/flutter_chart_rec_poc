import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiFilterButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function(BuildContext context) onPressed;

  const FmiFilterButton(
      {super.key,
      required this.label,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        onPressed: () => onPressed(context),
        icon: FaIcon(icon,
            color: Theme.of(context).colorScheme.onSurface,
            size: FMIThemeBase.baseIconSmall),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            const SizedBox(
              width: FMIThemeBase.baseGapMedium,
            ),
            FaIcon(
              FontAwesomeIcons.solidCaretDown,
              color: Theme.of(context).colorScheme.onSurface,
              size: FMIThemeBase.baseIconSmall,
            )
          ],
        ));
  }
}
