import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FmiIconButton extends StatefulWidget {
  const FmiIconButton(
      {Key? key,
      required this.label,
      this.icon,
      required this.onClicked,
      this.onSelectedChanged,
      this.initialIsSelected = false,
      this.disabled = false,
      this.includeLabel = false,
      this.svgIcon,
      this.iconColor = IconColors.primary,
      this.size = IconButtonSize.large,
      this.fullSize = false})
      : super(key: key);

  final String label;
  final IconData? icon;
  final FASafeIcons? svgIcon;
  final VoidCallback onClicked;
  final Function(bool isSelected)? onSelectedChanged;
  final bool initialIsSelected;
  final bool disabled;
  final bool includeLabel;
  final bool? fullSize;
  final IconColors? iconColor;
  final IconButtonSize size;

  @override
  State<FmiIconButton> createState() => _FmiIconButtonState();
}

class _FmiIconButtonState extends State<FmiIconButton> {
  late bool isSelected;

  @override
  void initState() {
    isSelected = widget.initialIsSelected;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (widget.fullSize!)
            ? getFullSizeIconButton()
            : Opacity(
                opacity: widget.disabled
                    ? FMIThemeBase.baseOpacity40
                    : FMIThemeBase.baseOpacity100,
                child: Stack(
                  children: [
                    Container(
                      height: (widget.size == IconButtonSize.small)
                          ? FMIThemeBase.baseIconLarge
                          : FMIThemeBase.baseIconXLarge,
                      width: (widget.size == IconButtonSize.small)
                          ? FMIThemeBase.baseIconLarge
                          : FMIThemeBase.baseIconXLarge,
                      decoration: ShapeDecoration(
                          shape: const CircleBorder(),
                          color: getColor(
                              context, ColorComponent.shapeDecoration)),
                      child: IconButton(
                          alignment: Alignment.center,
                          mouseCursor: getMouseCursorType(),
                          onPressed: widget.onClicked,
                          icon: Stack(
                            children: [
                              Center(
                                child: Opacity(
                                  opacity: (isSelected)
                                      ? FMIThemeBase.baseOpacity40
                                      : FMIThemeBase.baseOpacity100,
                                  child: getIcon(),
                                ),
                              ),
                              if (isSelected)
                                Center(
                                  child: FaIcon(FontAwesomeIcons.solidCheck,
                                      size: getIconSize(widget.size),
                                      color: getColor(
                                          context, ColorComponent.iconColor)),
                                )
                            ],
                          ),
                          iconSize: getIconSize(widget.size),
                          padding: EdgeInsets.all(getIconPadding(widget.size)),
                          color:
                              getColor(context, ColorComponent.iconButtonColor),
                          hoverColor: widget.disabled
                              ? Colors.transparent
                              : Theme.of(context).hoverColor,
                          focusColor: widget.disabled
                              ? Colors.transparent
                              : Theme.of(context).focusColor,
                          splashColor: widget.disabled
                              ? Colors.transparent
                              : Theme.of(context).splashColor,
                          highlightColor: widget.disabled
                              ? Colors.transparent
                              : Theme.of(context).highlightColor),
                    ),
                  ],
                ),
              ),
        if (widget.includeLabel)
          SizedBox(
            width: FMIThemeBase.baseContainerDimension72,
            child: Padding(
              padding: const EdgeInsets.only(top: FMIThemeBase.basePadding3),
              child: Tooltip(
                message: widget.label,
                child: Text(
                  widget.label,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: widget.disabled
                      ? Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: Theme.of(context).disabledColor)
                      : Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
          )
      ],
    );
  }

  Opacity getFullSizeIconButton() {
    return Opacity(
      opacity: widget.disabled
          ? FMIThemeBase.baseOpacity40
          : FMIThemeBase.baseOpacity100,
      child: InkWell(
        borderRadius:
            BorderRadius.circular(FMIThemeBase.baseBorderRadiusXSmall),
        hoverColor:
            widget.disabled ? Colors.transparent : Theme.of(context).hoverColor,
        focusColor:
            widget.disabled ? Colors.transparent : Theme.of(context).focusColor,
        splashColor: widget.disabled
            ? Colors.transparent
            : Theme.of(context).splashColor,
        highlightColor: widget.disabled
            ? Colors.transparent
            : Theme.of(context).highlightColor,
        onTap: widget.onClicked,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: (widget.size == IconButtonSize.small)
                  ? FMIThemeBase.baseIconLarge
                  : FMIThemeBase.baseIconXLarge,
              width: (widget.size == IconButtonSize.small)
                  ? FMIThemeBase.baseIconLarge
                  : FMIThemeBase.baseIconXLarge,
              child: getIcon(),
            ),
            if (isSelected)
              FaIcon(FontAwesomeIcons.solidCheck,
                  size: getIconSize(widget.size),
                  color: getColor(context, ColorComponent.iconColor))
          ],
        ),
      ),
    );
  }

  void onIconTapped() {
    if (widget.onSelectedChanged != null && !widget.disabled) {
      setState(() {
        isSelected = !isSelected;
        widget.onSelectedChanged!(isSelected);
      });
    }
  }

  MouseCursor getMouseCursorType() {
    MouseCursor result;

    if (widget.onSelectedChanged != null && widget.disabled) {
      result = SystemMouseCursors.forbidden;
    } else if (widget.onSelectedChanged != null && !widget.disabled) {
      result = SystemMouseCursors.click;
    } else {
      result = SystemMouseCursors.none;
    }

    return result;
  }

  Widget getIcon() {
    if (widget.svgIcon != null) {
      return SvgPicture.asset(
        getSvgPath(widget.svgIcon!),
        package: 'fmi_core',
        fit: BoxFit.fitWidth,
      );
    } else if (widget.icon != null) {
      return Icon(widget.icon);
    } else {
      return const Icon(FontAwesomeIcons.ban);
    }
  }

  Color getColor(BuildContext context, ColorComponent colorComponent) {
    Color? retColor;
    switch (widget.iconColor) {
      case IconColors.primary:
        if (colorComponent == ColorComponent.shapeDecoration) {
          if (widget.fullSize!) {
            return Colors.transparent;
          }
          retColor = (isSelected && !widget.disabled)
              ? Theme.of(context)
                  .colorScheme
                  .primary
                  .withOpacity(FMIThemeBase.baseOpacity60)
              : Theme.of(context).colorScheme.primaryContainer;
        } else if (colorComponent == ColorComponent.iconColor) {
          retColor = Theme.of(context).colorScheme.onPrimary;
        } else if (colorComponent == ColorComponent.iconButtonColor) {
          if (!isSelected) {
            retColor = Theme.of(context).colorScheme.onPrimaryContainer;
          } else {
            retColor = Theme.of(context)
                .colorScheme
                .onPrimaryContainer
                .withOpacity(FMIThemeBase.baseOpacity60);
          }
        }
        break;
      case IconColors.warning:
        if (colorComponent == ColorComponent.shapeDecoration) {
          if (widget.fullSize!) {
            return Colors.transparent;
          }
          retColor = (isSelected && !widget.disabled)
              ? Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeWarningWarningContainer
              : Theme.of(context).colorScheme.fmiBaseThemeWarningWarning;
        } else if (colorComponent == ColorComponent.iconColor) {
          retColor = Theme.of(context).colorScheme.onPrimary;
        } else if (colorComponent == ColorComponent.iconButtonColor) {
          if (!isSelected) {
            retColor = Theme.of(context).colorScheme.onPrimaryContainer;
          } else {
            retColor = Theme.of(context)
                .colorScheme
                .onPrimaryContainer
                .withOpacity(FMIThemeBase.baseOpacity60);
          }
        }
        break;
      case null:
        retColor = Theme.of(context).colorScheme.primaryContainer;
    }
    return retColor!;
  }

  double getIconPadding(IconButtonSize iconButtonSize) {
    double size;

    switch (iconButtonSize) {
      case IconButtonSize.small:
        {
          size = FMIThemeBase.basePadding3;
          break;
        }
      case IconButtonSize.large:
        {
          size = FMIThemeBase.basePadding7;
          break;
        }
    }

    return size;
  }

  double getIconSize(IconButtonSize iconButtonSize) {
    double size;

    switch (iconButtonSize) {
      case IconButtonSize.small:
        {
          size = FMIThemeBase.baseIconSmall;
          break;
        }
      case IconButtonSize.large:
        {
          size = FMIThemeBase.baseIconLarge;
          break;
        }
    }

    return size;
  }
}
