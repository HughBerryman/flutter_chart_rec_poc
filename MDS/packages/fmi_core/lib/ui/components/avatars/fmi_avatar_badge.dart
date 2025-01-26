import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiAvatarBadge extends StatefulWidget {
  const FmiAvatarBadge(
      {super.key,
      this.icon,
      this.iconColor,
      this.backgroundColor,
      this.position = AlignmentPosition.bottomRight,
      this.child,
      required this.avatarSize,
      this.showBadgeBorder = true,
      this.showBadge = false});
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final AlignmentPosition? position;
  final Widget? child;
  final FmiAvatarSize avatarSize;
  final bool? showBadge;
  final bool showBadgeBorder;
  @override
  State<FmiAvatarBadge> createState() => _FmiAvatarBadgeState();
}

class _FmiAvatarBadgeState extends State<FmiAvatarBadge> {
  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      showBadge: widget.showBadge!,
      badgeStyle: badges.BadgeStyle(
        shape: badges.BadgeShape.circle,
        borderSide: widget.showBadgeBorder ? BorderSide(
          strokeAlign: BorderSide.strokeAlignOutside,
          style: BorderStyle.solid,
          color: Theme.of(context).colorScheme.surface,
          width: widget.avatarSize == FmiAvatarSize.extraLarge ? 3 : 2,
        ) : BorderSide.none,
        padding: _getPadding(context, widget.avatarSize),
        badgeColor:
            widget.backgroundColor ?? Theme.of(context).colorScheme.primary,
      ),
      badgeContent: SizedBox(
        height: _getIconSize(context, widget.avatarSize),
        width: _getIconSize(context, widget.avatarSize),
        child: Center(
          child: FaIcon(
            widget.icon,
            size: _getIconSize(context, widget.avatarSize),
            color: widget.iconColor ?? Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
      position: _getPosition(context, widget.position!),
      child: widget.child,
    );
  }

  badges.BadgePosition _getPosition(
      BuildContext context, AlignmentPosition alignment) {
    double positionPadding = 0;
    switch (alignment) {
      case AlignmentPosition.bottomLeft:
        return badges.BadgePosition.bottomStart(
            bottom: positionPadding, start: positionPadding);

      case AlignmentPosition.bottomRight:
        return badges.BadgePosition.bottomEnd(
            bottom: positionPadding, end: positionPadding);

      case AlignmentPosition.center:
        return badges.BadgePosition.center();
      case AlignmentPosition.topLeft:
        return badges.BadgePosition.topStart(
            top: positionPadding, start: positionPadding);

      case AlignmentPosition.topRight:
        return badges.BadgePosition.topEnd(
            top: positionPadding, end: positionPadding);
    }
  }

  double _getIconSize(BuildContext context, FmiAvatarSize size) {
    switch (size) {
      case FmiAvatarSize.medium:
        return FMIThemeBase.baseIconXSmall / 2;
      case FmiAvatarSize.regular:
        return FMIThemeBase.baseIconXSmall / 2;
      case FmiAvatarSize.large:
        return FMIThemeBase.baseIconXSmall / 1.5;
      case FmiAvatarSize.extraLarge:
        return FMIThemeBase.baseIconSmall;
      default:
        return FMIThemeBase.baseIconSmall;
    }
  }

  EdgeInsets _getPadding(BuildContext context, FmiAvatarSize size) {
    switch (size) {
      case FmiAvatarSize.medium:
        return const EdgeInsets.all(FMIThemeBase.basePadding1);
      case FmiAvatarSize.regular:
        return const EdgeInsets.all(FMIThemeBase.basePadding2);
      case FmiAvatarSize.large:
        return const EdgeInsets.all(FMIThemeBase.basePadding2);
      case FmiAvatarSize.extraLarge:
        return const EdgeInsets.all(FMIThemeBase.basePadding4);
      default:
        return const EdgeInsets.all(FMIThemeBase.basePadding4);
    }
  }
}
