import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// T generic represents the dialog result type
/// G generic represent dialog options passed to the dialog
class FmiDialogIconButton<T, G> extends StatefulWidget {
  const FmiDialogIconButton(
      {Key? key,
      this.label,
      this.icon,
      this.onSelectedChanged,
      this.initialIsSelected = false,
      this.disabled = false,
      this.initialDialogData,
      this.baseDialogIconButtonFactory,
      this.dialogOptions,
      this.svgIcon,
      this.iconColor = IconColors.primary})
      : super(key: key);

  final String? label;
  final IconData? icon;
  final Function(bool isSelected, T? dialogResult)? onSelectedChanged;
  final bool initialIsSelected;
  final bool disabled;
  final G? dialogOptions;
  final T? initialDialogData;
  final BaseFmiDialogFactory<T, G>? baseDialogIconButtonFactory;
  final FASafeIcons? svgIcon;
  final IconColors? iconColor;

  @override
  State<FmiDialogIconButton<T, G>> createState() =>
      _FmiDialogIconButtonState<T, G>();
}

class _FmiDialogIconButtonState<T, G> extends State<FmiDialogIconButton<T, G>> {
  late bool isSelected;
  T? dialogData;

  @override
  void initState() {
    isSelected = widget.initialIsSelected;
    dialogData = widget.initialDialogData;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Opacity(
          opacity: widget.disabled ? FMIThemeBase.baseOpacity40 : FMIThemeBase.baseOpacity100,
          child: Container(
            height: FMIThemeBase.baseIconXLarge,
            width: FMIThemeBase.baseIconXLarge,
            decoration: ShapeDecoration(
                shape: const CircleBorder(),
                color: getColor(context, ColorComponent.shapeDecoration)),
            child: IconButton(
                mouseCursor: getMouseCursorType(),
                onPressed: onPressed,
                icon: Stack(
                  children: [
                    Opacity(
                        opacity: (isSelected) ? FMIThemeBase.baseOpacity60 : FMIThemeBase.baseOpacity100,
                        child: getIcon()),
                    if (isSelected)
                      FaIcon(
                        FontAwesomeIcons.solidCheck,
                        size: FMIThemeBase.baseIconLarge,
                        color: getColor(context, ColorComponent.iconColor),
                      )
                  ],
                ),
                iconSize: FMIThemeBase.baseIconLarge,
                padding:
                    const EdgeInsets.all(FMIThemeBase.basePadding7),
                color: getColor(context, ColorComponent.iconButtonColor),
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
        ),
        if (widget.label != null)
          SizedBox(
            width: FMIThemeBase.baseContainerDimension72,
            child: Padding(
              padding: const EdgeInsets.only(top: FMIThemeBase.baseGapMedium),
              child: Tooltip(
                message: widget.label,
                child: Text(
                  widget.label!,
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

  MouseCursor getMouseCursorType() {
    MouseCursor result = widget.disabled && dialogData == null
        ? SystemMouseCursors.forbidden
        : SystemMouseCursors.click;

    return result;
  }

  void onPressed() {
    if (widget.disabled) {
      if (dialogData != null) {
        launchDialog();
      }

      return;
    }

    if (isSelected) {
      // Enabled and already selected
      // Update to unselected
      // Dispatch null dialog data since unselected
      setState(() {
        isSelected = false;
      });

      if (widget.onSelectedChanged != null) {
        widget.onSelectedChanged!(isSelected, null);
      }
    } else {
      // Enabled and not yet selected
      // Dispatch dialog
      // Dialog on save can update selection and dispatch event to consumer
      launchDialog();
    }
  }

  launchDialog() {
    if (widget.baseDialogIconButtonFactory != null) {
      BaseFmiDialog<T, G> dialog = widget.baseDialogIconButtonFactory!
          .createDialog(saveDialogResult, widget.dialogOptions, dialogData,
              !widget.disabled);

      Navigator.push(context, MaterialPageRoute(builder: (context) => dialog));
    }
  }

  void saveDialogResult(T dialogResult) {
    if (widget.disabled) {
      return;
    }

    setState(() {
      isSelected = true;
      dialogData = dialogResult;
    });

    if (widget.onSelectedChanged != null) {
      widget.onSelectedChanged!(isSelected, dialogData);
    }
  }

  Widget getIcon() {
    if (widget.svgIcon != null) {
      return SvgPicture.asset(
        getSvgPath(widget.svgIcon!),
        package: 'fmi_core',
        fit: BoxFit.fitWidth,
      );
    } else if (widget.icon != null) {
      return FaIcon(widget.icon);
    } else {
      return const FaIcon(FontAwesomeIcons.exclamation);
    }
  }

  Color getColor(BuildContext context, ColorComponent colorComponent) {
    Color? retColor;
    switch (widget.iconColor) {
      case IconColors.primary:
        if (colorComponent == ColorComponent.shapeDecoration) {
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
}
