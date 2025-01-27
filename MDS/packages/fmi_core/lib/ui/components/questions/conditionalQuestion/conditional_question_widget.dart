import 'package:flutter/material.dart';

import '../../../../fmi_core.dart';
import 'package:collection/collection.dart';

class ConditionalQuestionWidget<T, G> extends StatefulWidget {
  const ConditionalQuestionWidget(
      {Key? key,
      required this.buttons,
      required this.onButtonPressed,
      this.title,
      this.trailing,
      this.question,
      this.initialBadgeText,
      this.defaultBadgeText,
      this.initialButtonPressed,
      this.initialDialogData,
      this.isEditable = true,
      this.conditionalQuestionDialogFactoryBase,
      this.defaultColor = FmiToggleButtonColorOptions.primary,
      this.type = FmiToggleButtonType.outline})
      : super(key: key);

  // required fields
  final List<ConditionalQuestionButton<G>> buttons;
  final void Function(
          ConditionalQuestionButton? conditionalQuestionButton, T? dialogResult)
      onButtonPressed;

  // optional fields
  final String? initialBadgeText;
  final String? defaultBadgeText;
  final String? title;
  final Widget? trailing;
  final String? question;
  final ConditionalQuestionButton? initialButtonPressed;
  final T? initialDialogData;
  final bool isEditable;
  final ConditionalQuestionDialogFactoryBase<T, G>?
      conditionalQuestionDialogFactoryBase;
  final FmiToggleButtonColorOptions defaultColor;
  final FmiToggleButtonType type;

  @override
  State<ConditionalQuestionWidget<T, G>> createState() =>
      _ConditionalQuestionWidgetState<T, G>();
}

class _ConditionalQuestionWidgetState<T, G>
    extends State<ConditionalQuestionWidget<T, G>> {
  ConditionalQuestionButton? selectedButton;
  ConditionalQuestionButton? previouslySelectedButton;
  String? badgeText;
  T? previousDialogData;
  T? dialogData;

  @override
  void initState() {
    selectedButton = widget.initialButtonPressed;
    previousDialogData = widget.initialDialogData;
    dialogData = widget.initialDialogData;
    badgeText = widget.initialBadgeText ?? widget.defaultBadgeText;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> buttonWidgets = getButtons();
    Widget headerContent = getHeader();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if ((widget.title != null && widget.title!.isNotEmpty) ||
            (widget.question != null && widget.question!.isNotEmpty))
          Padding(
            padding: const EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                badgeText != null && badgeText != ""
                    ? Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: () {
                            if (widget.isEditable) {
                              // Get button based on selected button type to get the condition data
                              var button = widget.buttons.firstWhereOrNull(
                                  (element) => element.showDialog);
                              if (selectedButton != null &&
                                  selectedButton!.showDialog) {
                                button = selectedButton
                                    as ConditionalQuestionButton<G>?;
                              }

                              if (button != null) {
                                setState(() {
                                  previouslySelectedButton = button;
                                  previousDialogData = dialogData;
                                  dialogData = dialogData;
                                  badgeText = widget.defaultBadgeText;
                                });
                                // set value as badge indicator for show/hide the condition plus(+) button
                                button.buttonType =
                                    ConditionalQuestionButtonType.unknown;
                                // launch dialog after setstate the conditions
                                launchDialog(button);
                              }
                            }
                          },
                          child: FmiBadge(
                              alignment: AlignmentPosition.topRight,
                              size: BadgeSize.medium,
                              backgroundColor: BadgeColor.danger,
                              text: badgeText,
                              child: headerContent),
                        ),
                      )
                    : headerContent,
                Padding(
                  padding:
                      const EdgeInsets.only(top: FMIThemeBase.baseGapMedium),
                  child: Row(
                    children: buttonWidgets,
                  ),
                )
              ],
            ),
          )
      ],
    );
  }

  void buttonSelected(ConditionalQuestionButton<G> conditionalQuestionButton) {
    if (!widget.isEditable &&
        conditionalQuestionButton.showDialog &&
        previousDialogData != null &&
        selectedButton != null &&
        selectedButton!.value == conditionalQuestionButton.value) {
      launchDialog(conditionalQuestionButton);
    } else if (selectedButton == null) {
      if (conditionalQuestionButton.showDialog) {
        launchDialog(conditionalQuestionButton);
      } else {
        setState(() {
          selectedButton = conditionalQuestionButton;
          previouslySelectedButton = null;
          dialogData = null;
          previousDialogData = null;
          badgeText = widget.defaultBadgeText;
        });

        widget.onButtonPressed(selectedButton, dialogData);
      }
    } else if (selectedButton != null &&
        selectedButton!.value == conditionalQuestionButton.value) {
      setState(() {
        selectedButton = null;
        previouslySelectedButton = conditionalQuestionButton;
        previousDialogData = dialogData;
        dialogData = null;
        badgeText = widget.defaultBadgeText;
      });

      widget.onButtonPressed(selectedButton, dialogData);
    } else if (selectedButton != null &&
        selectedButton!.value != conditionalQuestionButton.value) {
      if (conditionalQuestionButton.showDialog) {
        setState(() {
          selectedButton = null;
          dialogData = null;
          previousDialogData = null;
          previouslySelectedButton = null;
          badgeText = widget.defaultBadgeText;
        });

        widget.onButtonPressed(selectedButton, dialogData);

        launchDialog(conditionalQuestionButton);
      } else {
        setState(() {
          selectedButton = conditionalQuestionButton;
          previouslySelectedButton = null;
          dialogData = null;
          previousDialogData = null;
          badgeText = widget.defaultBadgeText;
        });

        widget.onButtonPressed(selectedButton, dialogData);
      }
    }
  }

  void launchDialog(ConditionalQuestionButton<G> conditionalQuestionButton) {
    if (widget.conditionalQuestionDialogFactoryBase != null) {
      BaseConditionalQuestionDialog dialog =
          widget.conditionalQuestionDialogFactoryBase!.createDialog(
              saveDialogResult,
              conditionalQuestionButton,
              previousDialogData,
              widget.isEditable);

      Navigator.push(context, MaterialPageRoute(builder: (context) => dialog));
    }
  }

  void saveDialogResult(ConditionalQuestionButton conditionalQuestionButton,
      String? badgeText, T dialogResult) {
    setState(() {
      dialogData = dialogResult;
      this.badgeText = badgeText;

      if (conditionalQuestionButton.buttonType !=
          ConditionalQuestionButtonType.unknown) {
        // set the data when clicked the condtion button
        selectedButton = conditionalQuestionButton;
        previousDialogData = null;
        previouslySelectedButton = null;
      }
    });

    widget.onButtonPressed(selectedButton, dialogData);
  }

  Widget getHeader() {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (widget.title != null && widget.title!.isNotEmpty)
                    Flexible(
                      child: Text(
                        widget.title!,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                  if (widget.trailing != null)
                    Padding(
                      padding: const EdgeInsets.only(
                          left: FMIThemeBase.basePaddingSmall),
                      child: widget.trailing!,
                    ),
                ],
              ),
              if (widget.question != null && widget.question!.isNotEmpty)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        widget.question!,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    )
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> getButtons() {
    List<Widget> buttonWidgets = [];
    for (ConditionalQuestionButton<G> button in widget.buttons) {
      Widget buttonWidget;
      bool allowClickWhenDisabledOverride = false;

      if (button.showDialog && dialogData != null) {
        allowClickWhenDisabledOverride = true;
      }

      switch (button.buttonType) {
        case ConditionalQuestionButtonType.success:
          {
            buttonWidget = Expanded(
              child: FmiToggleButton(
                  onPressed: () => buttonSelected(button),
                  leadingIcon: button.leadingIconData,
                  text: button.text,
                  icon: button.iconData,
                  type: widget.type,
                  color: FmiToggleButtonColorOptions.success,
                  enabled: widget.isEditable,
                  isToggled: selectedButton != null &&
                      button.value == selectedButton?.value,
                  allowClickWhenDisabledOverride:
                      allowClickWhenDisabledOverride),
            );

            break;
          }
        case ConditionalQuestionButtonType.danger:
          {
            buttonWidget = Expanded(
                child: FmiToggleButton(
                    onPressed: () => buttonSelected(button),
                    leadingIcon: button.leadingIconData,
                    text: button.text,
                    icon: button.iconData,
                    type: widget.type,
                    color: FmiToggleButtonColorOptions.error,
                    enabled: widget.isEditable,
                    isToggled: selectedButton != null &&
                        button.value == selectedButton?.value,
                    allowClickWhenDisabledOverride:
                        allowClickWhenDisabledOverride));

            break;
          }
        default:
          {
            buttonWidget = Expanded(
              child: FmiToggleButton(
                  onPressed: () => buttonSelected(button),
                  leadingIcon: button.leadingIconData,
                  text: button.text,
                  icon: button.iconData,
                  type: widget.type,
                  color: widget.defaultColor,
                  enabled: widget.isEditable,
                  isToggled: selectedButton != null &&
                      button.value == selectedButton?.value,
                  allowClickWhenDisabledOverride:
                      allowClickWhenDisabledOverride),
            );

            break;
          }
      }

      buttonWidgets.add(buttonWidget);
    }

    return buttonWidgets;
  }
}
