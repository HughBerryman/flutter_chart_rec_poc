import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/enums/enums.dart';
import 'package:fmi_core/extensions/extensions.dart';

class FmiCardHeaderListTile extends StatelessWidget {
  const FmiCardHeaderListTile(
      {Key? key,
      required this.title,
      this.subtitle,
      this.leading,
      this.trailing,
      this.enabled = true,
      this.onTap,
      this.onLongPress,
      this.selected = false,
      this.hideBackgroundColor = false})
      : super(key: key);

  final String title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final bool? enabled;
  final Function()? onTap;
  final Function()? onLongPress;
  final bool? selected;
  final bool? hideBackgroundColor;

  @override
  Widget build(BuildContext context) {
    double _getContextPadding(BuildContext context, PaddingPosition position) {
      switch (position) {
        case PaddingPosition.top:
          if (context.isXSmall || context.isSmall) {
            return FMIThemeBase.basePadding2;
          }
          return FMIThemeBase.basePadding4;
        case PaddingPosition.right:
          return FMIThemeBase.basePadding10;
        case PaddingPosition.bottom:
          if (context.isXSmall || context.isSmall) {
            return FMIThemeBase.basePadding2;
          }
          return FMIThemeBase.basePadding4;
        case PaddingPosition.left:
          return FMIThemeBase.basePadding10;
      }
    }

    Color _getContextTileColor(BuildContext context) {
      if (context.isXSmall || context.isSmall) {
        return Colors.transparent;
      } else if (hideBackgroundColor == true) {
        return Colors.transparent;
      } else {
        return Theme.of(context)
            .colorScheme
            .fmiBaseThemeAltSurfaceInverseAltSurface;
      }
    }

    TextStyle _getTitleTextStyle(BuildContext context) {
      if (context.isXSmall || context.isSmall) {
        return Theme.of(context)
            .textTheme
            .labelLarge!
            .copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer);
      } else {
        return Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer);
      }
    }

    return LayoutBuilder(builder: (context, constraints) {
      return ListTile(
        contentPadding: EdgeInsets.only(
            top: _getContextPadding(context, PaddingPosition.top),
            bottom: _getContextPadding(context, PaddingPosition.bottom),
            left: _getContextPadding(context, PaddingPosition.left),
            right: _getContextPadding(context, PaddingPosition.right)),
        tileColor: _getContextTileColor(context),
        textColor: Theme.of(context).colorScheme.onPrimaryContainer,
        iconColor: Theme.of(context).colorScheme.onPrimaryContainer,
        title: Text(title, style: _getTitleTextStyle(context)),
        subtitle: subtitle != null
            ? Text(subtitle!,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Theme.of(context).colorScheme.secondary))
            : null,
        leading: leading,
        trailing: trailing,
        enabled: enabled!,
        onTap: onTap,
        onLongPress: onLongPress,
        selected: selected!,
      );
    });
  }
}
