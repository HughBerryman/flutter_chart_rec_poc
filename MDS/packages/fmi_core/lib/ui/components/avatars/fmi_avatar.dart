import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiAvatar extends StatefulWidget {
  const FmiAvatar(
      {Key? key,
      required this.displayName,
      this.url,
      this.avatarSize = FmiAvatarSize.extraLarge,
      this.onSelectedChanged,
      this.initialIsSelected = false,
      this.disabled = false,
      this.includeLabel = false,
      this.selectedBehaviorOff = false,
      this.splitTwoLine = false,
      this.badgeIcon,
      this.badgeIconColor,
      this.badgeBackgroundColor,
      this.showBadge = false,
      this.showBadgeBorder = true,
      this.badgePosition = AlignmentPosition.bottomRight,
      this.useCircleShape = true})
      : super(key: key);

  final String displayName;
  final String? url;
  final Function(bool isSelected)? onSelectedChanged;
  final bool initialIsSelected;
  final FmiAvatarSize avatarSize;
  final bool disabled;
  final bool includeLabel;
  final bool? selectedBehaviorOff;
  final bool? splitTwoLine;
  final IconData? badgeIcon;
  final Color? badgeIconColor;
  final Color? badgeBackgroundColor;
  final bool? showBadge;
  final bool showBadgeBorder;
  final AlignmentPosition? badgePosition;
  final bool useCircleShape;

  @override
  State<FmiAvatar> createState() => _FmiAvatarState();
}

class _FmiAvatarState extends State<FmiAvatar> {
  late bool isSelected;

  @override
  void initState() {
    isSelected = widget.initialIsSelected;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget image = CachedNetworkImage(
      width: getAvatarSize(),
      height: getAvatarSize(),
      fit: BoxFit.cover,
      imageUrl: widget.url ?? '',
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => getInitialedAvatar(context),
    );

    if (widget.avatarSize == FmiAvatarSize.small) {
      return ClipOval(child: image);
    }
    Widget body = Stack(
      children: [
        image,
        if (isSelected && !widget.disabled)
          if (widget.useCircleShape)
            ClipOval(
              child: Container(
                width: getAvatarSize(),
                height: getAvatarSize(),
                color: Colors.black.withOpacity(FMIThemeBase.baseOpacity30),
              ),
            )
          else
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium),
              child: Container(
                width: getAvatarSize(),
                height: getAvatarSize(),
                color: Colors.black.withOpacity(FMIThemeBase.baseOpacity30),
              ),
            ),
        if (isSelected)
          Positioned.fill(
            child: Visibility(
              visible: !widget.selectedBehaviorOff!,
              child: Align(
                  alignment: Alignment.center,
                  child: FaIcon(
                    FontAwesomeIcons.solidCheck,
                    size: getIconSize(),
                    color: Theme.of(context).colorScheme.onPrimary,
                  )),
            ),
          ),
      ],
    );

    return MouseRegion(
      cursor: getMouseCursorType(),
      child: GestureDetector(
        onTap: onIconTapped,
        child: Column(
          children: [
            if (widget.url != null)
              FmiAvatarBadge(
                showBadge: widget.showBadge,
                showBadgeBorder: widget.showBadgeBorder,
                avatarSize: widget.avatarSize,
                icon: widget.badgeIcon,
                iconColor: widget.badgeIconColor,
                backgroundColor: widget.badgeBackgroundColor,
                position: widget.badgePosition,
                child: Opacity(
                    opacity: widget.disabled
                        ? FMIThemeBase.baseOpacity40
                        : FMIThemeBase.baseOpacity100,
                    child: widget.useCircleShape
                        ? ClipOval(
                            child: body,
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(
                                FMIThemeBase.baseBorderRadiusMedium),
                            child: body)),
              )
            else
              Opacity(
                opacity: widget.disabled
                    ? FMIThemeBase.baseOpacity50
                    : FMIThemeBase.baseOpacity100,
                child: FmiAvatarBadge(
                  showBadge: widget.showBadge,
                  showBadgeBorder: widget.showBadgeBorder,
                  avatarSize: widget.avatarSize,
                  icon: widget.badgeIcon,
                  iconColor: widget.badgeIconColor,
                  backgroundColor: widget.badgeBackgroundColor,
                  position: widget.badgePosition,
                  child: Stack(
                    children: [
                      getInitialedAvatar(context),
                      if (isSelected && !widget.disabled)
                        if (widget.useCircleShape)
                          ClipOval(
                            child: Container(
                              width: getAvatarSize(),
                              height: getAvatarSize(),
                              color: Colors.black
                                  .withOpacity(FMIThemeBase.baseOpacity30),
                            ),
                          )
                        else
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                                FMIThemeBase.baseBorderRadiusMedium),
                            child: Container(
                              width: getAvatarSize(),
                              height: getAvatarSize(),
                              color: Colors.black
                                  .withOpacity(FMIThemeBase.baseOpacity30),
                            ),
                          ),
                      if (isSelected)
                        Positioned.fill(
                          child: Visibility(
                            visible: !widget.selectedBehaviorOff!,
                            child: Align(
                                alignment: Alignment.center,
                                child: FaIcon(
                                  FontAwesomeIcons.solidCheck,
                                  size: getIconSize(),
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                )),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            if (widget.includeLabel)
              Padding(
                padding: const EdgeInsets.only(top: FMIThemeBase.baseGapMedium),
                child: Tooltip(
                  message: widget.displayName,
                  child: SizedBox(
                    width: FMIThemeBase.baseIconXLarge,
                    child: Column(
                      children: [
                        Text(
                          getDisplayNameFirst(widget.displayName),
                          style: widget.disabled
                              ? Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      color: Theme.of(context).disabledColor)
                              : Theme.of(context).textTheme.labelMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                        if (widget.splitTwoLine == true)
                          Text(
                            getDisplayNameLast(widget.displayName),
                            style: widget.disabled
                                ? Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        color: Theme.of(context).disabledColor)
                                : Theme.of(context).textTheme.labelMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  String getDisplayNameFirst(String displayName) {
    List<String> splitName = displayName.split(' ');
    if (widget.splitTwoLine == true) {
      return splitName[0].trim();
    }
    return displayName;
  }

  String getDisplayNameLast(String displayName) {
    var idxOf = displayName.indexOf(" ");
    if (idxOf >= 0) {
      return displayName.replaceRange(0, idxOf, "").trim();
    }
    return "";
  }

  void onIconTapped() {
    if (widget.onSelectedChanged != null && !widget.disabled) {
      setState(() {
        if (!widget.selectedBehaviorOff!) {
          isSelected = !isSelected;
        }
        widget.onSelectedChanged!(isSelected);
      });
    }
  }

  Widget getInitialedAvatar(BuildContext context) {
    if (widget.avatarSize == FmiAvatarSize.small || widget.useCircleShape) {
      return CircleAvatar(
        radius: getAvatarSize() / 2,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Text(
          widget.displayName.toInitials,
          style: getInitialsTextStyle(context),
        ),
      );
    } else {
      return Container(
        width: getAvatarSize(),
        height: getAvatarSize(),
        decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(FMIThemeBase.baseBorderRadiusMedium)))),
        child: Center(
          child: Text(
            widget.displayName.toInitials,
            style: getInitialsTextStyle(context),
          ),
        ),
      );
    }
  }

  TextStyle getInitialsTextStyle(BuildContext context) {
    TextStyle textStyle;

    switch (widget.avatarSize) {
      case FmiAvatarSize.small:
        {
          textStyle = Theme.of(context)
              .textTheme
              .labelXxSmall
              .copyWith(color: Theme.of(context).colorScheme.onPrimary);

          break;
        }
      case FmiAvatarSize.medium:
        {
          textStyle = Theme.of(context)
              .textTheme
              .labelSmall!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary);

          break;
        }
      case FmiAvatarSize.regular:
        {
          textStyle = Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary);

          break;
        }
      case FmiAvatarSize.large:
        {
          textStyle = Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary);

          break;
        }
      default:
        {
          textStyle = Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary);

          break;
        }
    }

    return textStyle;
  }

  double getIconSize() {
    double size;

    switch (widget.avatarSize) {
      case FmiAvatarSize.medium:
        {
          size = FMIThemeBase.baseIconSmall;
          break;
        }
      case FmiAvatarSize.regular:
        {
          size = FMIThemeBase.baseIconSmall;
          break;
        }
      case FmiAvatarSize.large:
        {
          size = FMIThemeBase.baseIconMedium;
          break;
        }
      default:
        {
          size = FMIThemeBase.baseIconLarge;
          break;
        }
    }

    return size;
  }

  double getAvatarSize() {
    double size;

    switch (widget.avatarSize) {
      case FmiAvatarSize.small:
        {
          size = FMIThemeBase.baseIconSmall;
          break;
        }
      case FmiAvatarSize.medium:
        {
          size = FMIThemeBase.baseImageCircleMedium;
          break;
        }
      case FmiAvatarSize.regular:
        {
          size = FMIThemeBase.baseIconLarge;
          break;
        }
      case FmiAvatarSize.large:
        {
          size = FMIThemeBase.baseImageCircle48;
          break;
        }
      default:
        {
          size = FMIThemeBase.baseImageCircleXLarge;
          break;
        }
    }

    return size;
  }

  MouseCursor getMouseCursorType() {
    MouseCursor result;

    if (widget.onSelectedChanged != null && widget.disabled) {
      result = SystemMouseCursors.forbidden;
    } else if (widget.onSelectedChanged != null && !widget.disabled) {
      result = SystemMouseCursors.click;
    } else {
      result = SystemMouseCursors.basic;
    }

    return result;
  }
}
