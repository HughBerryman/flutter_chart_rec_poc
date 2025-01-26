import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/extensions/extensions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'enums/enums.dart';

class FmiToggleButton extends StatelessWidget {
  const FmiToggleButton(
      {Key? key,
        this.text,
        this.icon,
        this.leadingIcon,
        this.color = FmiToggleButtonColorOptions.primary,
        this.type = FmiToggleButtonType.outline,
        this.isToggled = false,
        this.onPressed,
        this.enabled = true,
        this.allowClickWhenDisabledOverride = false})
      : super(key: key);

  final String? text;
  final IconData? icon;
  final IconData? leadingIcon;
  final FmiToggleButtonColorOptions color;
  final FmiToggleButtonType type;
  final bool isToggled;
  final Function()? onPressed;
  final bool enabled;
  final bool allowClickWhenDisabledOverride;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: enabled || allowClickWhenDisabledOverride
          ? SystemMouseCursors.click
          : SystemMouseCursors.forbidden,
      child: GestureDetector(
        onTap: () {
          if (enabled || allowClickWhenDisabledOverride) {
            if (onPressed != null) {
              onPressed!();
            }
          }
        },
        child: Card(
            elevation: getElevation(type),
            color: isToggled
                ? getSelectedBackground(context, color, type)
                : getUnselectedBackground(context, color, type),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusRound)),
              side: isToggled
                  ? BorderSide.none
                  : BorderSide(
                color: getUnselectedBorderColor(context, color, type),
              ),
            ),
            surfaceTintColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePaddingLarge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (leadingIcon != null)
                    FaIcon(
                      leadingIcon!,
                      size: FMIThemeBase.baseIconSmall,
                      color: isToggled
                          ? getSelectedContentColor(context, color, type)
                          : getUnselectedContentColor(context, color, type),
                    ),
                  if (text != null)
                    Padding(
                      padding: EdgeInsets.only(
                          left: leadingIcon != null
                              ? FMIThemeBase.basePadding3
                              : FMIThemeBase.basePadding0,
                          right:
                          icon != null ? FMIThemeBase.basePadding3 : FMIThemeBase.basePadding0),
                      child: Text(
                        text!,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(
                            color: isToggled
                                ? getSelectedContentColor(
                                context, color, type)
                                : getUnselectedContentColor(
                                context, color, type)),
                      ),
                    ),
                  if (icon != null)
                    Padding(
                      padding: EdgeInsets.only(
                          left: leadingIcon != null && text == null
                              ? FMIThemeBase.basePadding3
                              : FMIThemeBase.basePadding0),
                      child: FaIcon(
                        icon!,
                        size: FMIThemeBase.baseIconSmall,
                        color: isToggled
                            ? getSelectedContentColor(context, color, type)
                            : getUnselectedContentColor(context, color, type),
                      ),
                    )
                ],
              ),
            )),
      ),
    );
  }

  Color getUnselectedBorderColor(BuildContext context,
      FmiToggleButtonColorOptions color, FmiToggleButtonType type) {
    Color result;

    switch (type) {
      case FmiToggleButtonType.elevated:
        switch (color) {
          case FmiToggleButtonColorOptions.primary:
            result = Theme.of(context).colorScheme.primaryContainer;
            break;
          case FmiToggleButtonColorOptions.secondary:
            result = Theme.of(context).colorScheme.surfaceContainerHighest;
            break;
          case FmiToggleButtonColorOptions.success:
            result = Theme.of(context)
                .colorScheme
                .fmiBaseThemeSuccessSuccessContainer;
            break;
          case FmiToggleButtonColorOptions.error:
            result = Theme.of(context)
                .colorScheme
                .fmiBaseThemeDangerDangerContainer;
            break;
        }
        break;
      case FmiToggleButtonType.outline:
        switch (color) {
          case FmiToggleButtonColorOptions.primary:
            result = Theme.of(context).colorScheme.primary;
            break;
          case FmiToggleButtonColorOptions.secondary:
            result = Theme.of(context).colorScheme.onSurfaceVariant;
            break;
          case FmiToggleButtonColorOptions.success:
            result = Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess;
            break;
          case FmiToggleButtonColorOptions.error:
            result = Theme.of(context).colorScheme.fmiBaseThemeDangerDanger;
            break;
        }
        break;
    }

    if(!enabled){
      result = result.withOpacity(FMIThemeBase.baseOpacity40);
    }

    return result;
  }

  Color getUnselectedContentColor(BuildContext context,
      FmiToggleButtonColorOptions color, FmiToggleButtonType type) {

    Color result;

    switch (type) {
      case FmiToggleButtonType.elevated:
        switch (color) {
          case FmiToggleButtonColorOptions.primary:
            result = Theme.of(context).colorScheme.onPrimaryContainer;
            break;
          case FmiToggleButtonColorOptions.secondary:
            result = Theme.of(context).colorScheme.onSurfaceVariant;
            break;
          case FmiToggleButtonColorOptions.success:
            result = Theme.of(context)
                .colorScheme
                .fmiBaseThemeSuccessOnSuccessContainer;
            break;
          case FmiToggleButtonColorOptions.error:
            result = Theme.of(context)
                .colorScheme
                .fmiBaseThemeDangerOnDangerContainer;
            break;
        }
        break;
      case FmiToggleButtonType.outline:
        switch (color) {
          case FmiToggleButtonColorOptions.primary:
            result = Theme.of(context).colorScheme.primary;
            break;
          case FmiToggleButtonColorOptions.secondary:
            result = Theme.of(context).colorScheme.secondary;
            break;
          case FmiToggleButtonColorOptions.success:
            result = Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess;
            break;

          case FmiToggleButtonColorOptions.error:
            result = Theme.of(context).colorScheme.fmiBaseThemeDangerDanger;
            break;
        }
        break;
    }

    if(!enabled){
      result = result.withOpacity(FMIThemeBase.baseOpacity40);
    }

    return result;
  }

  Color getUnselectedBackground(BuildContext context,
      FmiToggleButtonColorOptions color, FmiToggleButtonType type) {

    Color result;

    switch (type) {
      case FmiToggleButtonType.elevated:
        switch (color) {
          case FmiToggleButtonColorOptions.primary:
            result = Theme.of(context).colorScheme.primaryContainer;
            break;
          case FmiToggleButtonColorOptions.secondary:
            result = Theme.of(context).colorScheme.surfaceContainerHighest;
            break;
          case FmiToggleButtonColorOptions.success:
            result = Theme.of(context)
                .colorScheme
                .fmiBaseThemeSuccessSuccessContainer;
            break;
          case FmiToggleButtonColorOptions.error:
            result = Theme.of(context)
                .colorScheme
                .fmiBaseThemeDangerDangerContainer;
            break;
        }
        break;
      case FmiToggleButtonType.outline:
        switch (color) {
          default:
            result = Theme.of(context).colorScheme.surface;
            break;
        }
        break;
    }

    if(!enabled){
      result = result.withOpacity(FMIThemeBase.baseOpacity40);
    }

    return result;
  }

  Color getSelectedContentColor(BuildContext context,
      FmiToggleButtonColorOptions color, FmiToggleButtonType type) {
    Color result;

    switch (type) {
      case FmiToggleButtonType.elevated:
        switch (color) {
          case FmiToggleButtonColorOptions.primary:
            result = Theme.of(context).colorScheme.onPrimary;
            break;
          case FmiToggleButtonColorOptions.secondary:
            result = Theme.of(context).colorScheme.onSecondary;
            break;
          case FmiToggleButtonColorOptions.success:
            result = Theme.of(context).colorScheme.fmiBaseThemeSuccessOnSuccess;
            break;
          case FmiToggleButtonColorOptions.error:
            result = Theme.of(context).colorScheme.fmiBaseThemeDangerOnDanger;
            break;
        }
        break;
      case FmiToggleButtonType.outline:
        switch (color) {
          case FmiToggleButtonColorOptions.primary:
            result = Theme.of(context).colorScheme.onPrimary;
            break;
          case FmiToggleButtonColorOptions.secondary:
            result = Theme.of(context).colorScheme.onSecondary;
            break;
          case FmiToggleButtonColorOptions.success:
            result = Theme.of(context).colorScheme.fmiBaseThemeSuccessOnSuccess;
            break;
          case FmiToggleButtonColorOptions.error:
            result = Theme.of(context).colorScheme.fmiBaseThemeDangerOnDanger;
            break;
        }
        break;
    }

    if(!enabled){
      result = result.withOpacity(FMIThemeBase.baseOpacity40);
    }

    return result;
  }

  Color getSelectedBackground(BuildContext context,
      FmiToggleButtonColorOptions color, FmiToggleButtonType type) {

    Color result;

    switch (type) {
      case FmiToggleButtonType.elevated:
        switch (color) {
          case FmiToggleButtonColorOptions.primary:
            result = Theme.of(context).colorScheme.primary;
            break;
          case FmiToggleButtonColorOptions.secondary:
            result = Theme.of(context).colorScheme.secondary;
            break;
          case FmiToggleButtonColorOptions.success:
            result = Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess;
            break;
          case FmiToggleButtonColorOptions.error:
            result = Theme.of(context).colorScheme.fmiBaseThemeDangerDanger;
            break;
        }
        break;
      case FmiToggleButtonType.outline:
        switch (color) {
          case FmiToggleButtonColorOptions.primary:
            result = Theme.of(context).colorScheme.primary;
            break;
          case FmiToggleButtonColorOptions.secondary:
            result = Theme.of(context).colorScheme.secondary;
            break;
          case FmiToggleButtonColorOptions.success:
            result = Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess;
            break;
          case FmiToggleButtonColorOptions.error:
            result = Theme.of(context).colorScheme.fmiBaseThemeDangerDanger;
            break;
        }
        break;
    }

    if(!enabled){
      result = result.withOpacity(FMIThemeBase.baseOpacity40);
    }

    return result;
  }

  double getElevation(FmiToggleButtonType type) {
    switch (type) {
      case FmiToggleButtonType.elevated:
        return FMIThemeBase.baseElevationDouble1;
      case FmiToggleButtonType.outline:
        return FMIThemeBase.baseElevationDouble0;
    }
  }
}
