import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DialogHeaderWidget extends StatelessWidget {
  const DialogHeaderWidget({
    Key? key,
    required this.leadingIcon,
    required this.title,
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: FaIcon(
          leadingIcon,
          size: FMIThemeBase.baseIconMedium,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        title: Text(title,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
        contentPadding: EdgeInsets.zero);
  }
}
