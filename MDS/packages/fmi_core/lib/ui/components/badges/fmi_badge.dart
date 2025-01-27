import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiBadge extends StatelessWidget {
  const FmiBadge(
      {super.key,
      this.size = BadgeSize.small,
      this.backgroundColor = BadgeColor.primary,
      this.alignment = AlignmentPosition.topRight,
      this.child,
      this.onTap,
      this.icon,
      this.text,
      this.offset});

  final BadgeSize? size;
  final BadgeColor? backgroundColor;
  final AlignmentPosition? alignment;
  final Widget? child;
  final Function()? onTap;
  final IconData? icon;
  final String? text;
  final Offset? offset;

  @override
  Widget build(BuildContext context) {
    var badge = Badge(
      backgroundColor: _getBackgroundColor(context),
      textColor: _getColor(context),
      textStyle: size == BadgeSize.medium
          ? Theme.of(context).textTheme.labelSmall
          : Theme.of(context)
              .textTheme
              .labelXSmall
              .copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold),
      largeSize: size == BadgeSize.medium ? FMIThemeBase.baseIconMedium : null,
      padding: size == BadgeSize.medium
          ? EdgeInsets.zero
          : size == BadgeSize.regular && (icon == null && text != null)
              ? const EdgeInsets.symmetric(
                  horizontal: FMIThemeBase.basePadding1,
                )
              : null,
      offset: offset,
      label: _getContents(context),
      child: child,
      alignment: _getAlignment(),
    );

    return onTap == null
        ? badge
        : InkWell(
            mouseCursor: SystemMouseCursors.click, onTap: onTap, child: badge);
  }

  Widget? _getContents(BuildContext context) {
    Widget? contents = icon != null
        ? FaIcon(
            icon!,
            color: _getColor(context),
            size: size == BadgeSize.medium
                ? FMIThemeBase.baseIconSmall
                : FMIThemeBase.baseIconXSmall,
          )
        : text != null
            ? Text(text!)
            : null;

    switch (size!) {
      case BadgeSize.small:
        return contents;
      case BadgeSize.regular:
        if (icon != null || (icon == null && text == null)) {
          return contents;
        } else {
          return ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: FMIThemeBase.baseIconXSmall,
              minHeight: FMIThemeBase.baseIconXSmall,
            ),
            child: Center(child: contents),
          );
        }
      case BadgeSize.medium:
        return ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: FMIThemeBase.baseIconMedium,
            minHeight: FMIThemeBase.baseIconMedium,
          ),
          child: Center(child: contents),
        );
    }
  }

  AlignmentGeometry _getAlignment() {
    switch (alignment!) {
      case AlignmentPosition.bottomLeft:
        return Alignment.bottomLeft;
      case AlignmentPosition.bottomRight:
        return Alignment.bottomRight;
      case AlignmentPosition.center:
        return Alignment.center;
      case AlignmentPosition.topLeft:
        return Alignment.topLeft;
      case AlignmentPosition.topRight:
        return Alignment.topRight;
    }
  }

  Color _getBackgroundColor(BuildContext context) {
    switch (backgroundColor!) {
      case BadgeColor.primary:
        return Theme.of(context).colorScheme.primary;
      case BadgeColor.primaryContainer:
        return Theme.of(context).colorScheme.primaryContainer;
      case BadgeColor.secondary:
        return Theme.of(context).colorScheme.secondary;
      case BadgeColor.tertiary:
        return Theme.of(context).colorScheme.tertiary;
      case BadgeColor.success:
        return Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess;
      case BadgeColor.warning:
        return Theme.of(context).colorScheme.fmiBaseThemeWarningWarning;
      case BadgeColor.danger:
        return Theme.of(context).colorScheme.fmiBaseThemeDangerDanger;
      case BadgeColor.inverseAltSurface:
        return Theme.of(context)
            .colorScheme
            .fmiBaseThemeAltSurfaceInverseAltSurface;
      case BadgeColor.altSurface:
        return Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceAltSurface;
      case BadgeColor.surfaceVariant:
        return Theme.of(context).colorScheme.surfaceContainerHighest;
      case BadgeColor.secondaryContainer:
        return Theme.of(context).colorScheme.secondaryContainer;
      case BadgeColor.surface:
        return Theme.of(context).colorScheme.surface;
      case BadgeColor.illustrationOnBackgroundAmber:
        return Theme.of(context)
            .colorScheme
            .themeIllustrationsOnBackgroundAmber;
      case BadgeColor.illustrationOnBackgroundBlue:
        return Theme.of(context).colorScheme.themeIllustrationsOnBackgroundBlue;
      case BadgeColor.illustrationOnBackgroundBlueGray:
        return Theme.of(context)
            .colorScheme
            .themeIllustrationsOnBackgroundBlueGray;
      case BadgeColor.illustrationOnBackgroundCopper:
        return Theme.of(context)
            .colorScheme
            .themeIllustrationsOnBackgroundCopper;
      case BadgeColor.illustrationOnBackgroundDarkBlue:
        return Theme.of(context)
            .colorScheme
            .themeIllustrationsOnBackgroundDarkBlue;
      case BadgeColor.illustrationOnBackgroundDarkOrange:
        return Theme.of(context)
            .colorScheme
            .themeIllustrationsOnBackgroundDarkOrange;
      case BadgeColor.illustrationOnBackgroundDarkPurple:
        return Theme.of(context)
            .colorScheme
            .themeIllustrationsOnBackgroundDarkPurple;
      case BadgeColor.illustrationOnBackgroundGreen:
        return Theme.of(context)
            .colorScheme
            .themeIllustrationsOnBackgroundGreen;
      case BadgeColor.illustrationOnBackgroundIndigo:
        return Theme.of(context)
            .colorScheme
            .themeIllustrationsOnBackgroundIndigo;
      case BadgeColor.illustrationOnBackgroundLavender:
        return Theme.of(context)
            .colorScheme
            .themeIllustrationsOnBackgroundLavender;
      case BadgeColor.illustrationOnBackgroundLime:
        return Theme.of(context).colorScheme.themeIllustrationsOnBackgroundLime;
      case BadgeColor.illustrationOnBackgroundOrange:
        return Theme.of(context)
            .colorScheme
            .themeIllustrationsOnBackgroundOrange;
      case BadgeColor.illustrationOnBackgroundPink:
        return Theme.of(context).colorScheme.themeIllustrationsOnBackgroundPink;
      case BadgeColor.illustrationOnBackgroundPurple:
        return Theme.of(context)
            .colorScheme
            .themeIllustrationsOnBackgroundPurple;
      case BadgeColor.illustrationOnBackgroundRed:
        return Theme.of(context).colorScheme.themeIllustrationsOnBackgroundRed;
      case BadgeColor.illustrationOnBackgroundTeal:
        return Theme.of(context).colorScheme.themeIllustrationsOnBackgroundTeal;
    }
  }

  Color _getColor(BuildContext context) {
    switch (backgroundColor!) {
      case BadgeColor.primary:
        return Theme.of(context).colorScheme.onPrimary;
      case BadgeColor.primaryContainer:
        return Theme.of(context).colorScheme.onPrimaryContainer;
      case BadgeColor.secondary:
        return Theme.of(context).colorScheme.onSecondary;
      case BadgeColor.tertiary:
        return Theme.of(context).colorScheme.onTertiary;
      case BadgeColor.success:
        return Theme.of(context).colorScheme.fmiBaseThemeSuccessOnSuccess;
      case BadgeColor.warning:
        return Theme.of(context).colorScheme.fmiBaseThemeWarningOnWarning;
      case BadgeColor.danger:
        return Theme.of(context).colorScheme.fmiBaseThemeDangerOnDanger;
      case BadgeColor.inverseAltSurface:
        return Theme.of(context)
            .colorScheme
            .fmiBaseThemeAltSurfaceInverseOnAltSurface;
      case BadgeColor.altSurface:
        return Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceOnAltSurface;
      case BadgeColor.surfaceVariant:
        return Theme.of(context).colorScheme.onSurfaceVariant;
      case BadgeColor.secondaryContainer:
        return Theme.of(context).colorScheme.onSecondaryContainer;
      case BadgeColor.surface:
        return Theme.of(context).colorScheme.onSurface;
      default:
        return Theme.of(context).colorScheme.chartGrayscaleGray0;
    }
  }
}
