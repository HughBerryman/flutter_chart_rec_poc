import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiWarningTextFieldWidget extends StatefulWidget {
  const FmiWarningTextFieldWidget({
    Key? key,
    this.controller,
    this.initValue,
    this.focusNode,
    this.decoration = const FmiEnhancedInputDecoration(),
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    @Deprecated(
      'Use `contextMenuBuilder` instead. '
      'This feature was deprecated after v3.3.0-0.5.pre.',
    )
    this.toolbarOptions,
    this.showCursor,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection,
    this.selectionControls,
    this.onTap,
    this.mouseCursor,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints = const <String>[],
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.scribbleEnabled = true,
    this.enableIMEPersonalizedLearning = true,
    this.contextMenuBuilder = _defaultContextMenuBuilder,
    this.warningValidator,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? initValue;
  final FocusNode? focusNode;
  final FmiEnhancedInputDecoration? decoration;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool readOnly;
  @Deprecated(
    'Use `contextMenuBuilder` instead. '
    'This feature was deprecated after v3.3.0-0.5.pre.',
  )
  final ToolbarOptions? toolbarOptions;
  final bool? showCursor;
  final bool autofocus;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final Function(String)? onSubmitted;
  final Function(String, Map<String, dynamic>)? onAppPrivateCommand;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final ui.BoxHeightStyle selectionHeightStyle;
  final ui.BoxWidthStyle selectionWidthStyle;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final DragStartBehavior dragStartBehavior;
  final bool? enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final Function()? onTap;
  final MouseCursor? mouseCursor;
  final Widget? Function(
    BuildContext, {
    required int currentLength,
    required bool isFocused,
    required int? maxLength,
  })? buildCounter;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;
  final Clip clipBehavior;
  final String? restorationId;
  final bool scribbleEnabled;
  final bool enableIMEPersonalizedLearning;
  final EditableTextContextMenuBuilder? contextMenuBuilder;

  static Widget _defaultContextMenuBuilder(
      BuildContext context, EditableTextState editableTextState) {
    return AdaptiveTextSelectionToolbar.editableText(
      editableTextState: editableTextState,
    );
  }

  final String? Function(String)? warningValidator;

  @override
  State<FmiWarningTextFieldWidget> createState() =>
      _FmiWarningTextFieldWidgetState();
}

class _FmiWarningTextFieldWidgetState extends State<FmiWarningTextFieldWidget> {
  final TextEditingController _textEditingController = TextEditingController();
  String? _warningText;
  bool _isEnabled = false;

  @override
  void initState() {
    if (widget.initValue != null) {
      _textEditingController.text = widget.initValue!;
    }
    _warningText = widget.decoration?.warningText;
    super.initState();
  }

  InputDecoration? rebuildInputDecoration() {
    InputDecoration? result = widget.decoration;

    if (_warningText != null) {
      result = widget.decoration?.copyWith(
        helperText: _warningText,
        helperStyle: widget.decoration?.warningStyle ??
            TextStyle(
              fontSize: Theme.of(context).textTheme.labelSmall?.fontSize,
              color: Theme.of(context).colorScheme.fmiBaseThemeWarningOnWarning,
            ),
        floatingLabelStyle: TextStyle(
          fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
          color: Theme.of(context)
              .colorScheme
              .fmiBaseThemeWarningOnWarningContainer,
        ),
        filled: true,
        fillColor: widget.decoration?.fillWarningColor ??
            Theme.of(context)
                .colorScheme
                .fmiBaseThemeWarningWarningContainer
                .withOpacity(FMIThemeBase.baseOpacity40),
        enabledBorder: widget.decoration?.enabledWarningBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                  color:
                      Theme.of(context).colorScheme.fmiBaseThemeWarningWarning),
            ),
        focusedBorder: widget.decoration?.focusedWarningBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                  color:
                      Theme.of(context).colorScheme.fmiBaseThemeWarningWarning,
                  width: FMIThemeBase.baseBorderWidthDefault),
            ),
        border: widget.decoration?.warningBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                  color:
                      Theme.of(context).colorScheme.fmiBaseThemeWarningWarning),
            ),
      );
    }

    return result;
  }

  void checkWarningValidator(String value) {
    if (widget.warningValidator != null) {
      setState(() {
        _warningText =
            widget.warningValidator!(value) ?? widget.decoration?.warningText;
      });
    }
  }

  void onChangedState(String value) {
    checkWarningValidator(value);

    if (widget.onChanged != null) {
      widget.onChanged!(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    InputDecoration? inputDecoration = rebuildInputDecoration();
    _isEnabled = widget.enabled ?? true;

    return MouseRegion(
      cursor:
          _isEnabled ? SystemMouseCursors.text : SystemMouseCursors.forbidden,
      child: IgnorePointer(
        ignoring: !_isEnabled,
        child: Theme(
          data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
          child: TextField(
            key: widget.key,
            controller: widget.controller ?? _textEditingController,
            focusNode: widget.focusNode,
            decoration: inputDecoration,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            textCapitalization: widget.textCapitalization,
            style: widget.style,
            strutStyle: widget.strutStyle,
            textAlign: widget.textAlign,
            textAlignVertical: widget.textAlignVertical,
            textDirection: widget.textDirection,
            readOnly: widget.readOnly,
            showCursor: widget.showCursor,
            autofocus: widget.autofocus,
            obscuringCharacter: widget.obscuringCharacter,
            obscureText: widget.obscureText,
            autocorrect: widget.autocorrect,
            smartDashesType: widget.smartDashesType,
            smartQuotesType: widget.smartQuotesType,
            enableSuggestions: widget.enableSuggestions,
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            expands: widget.expands,
            maxLength: widget.maxLength,
            maxLengthEnforcement: widget.maxLengthEnforcement,
            onChanged: (value) => onChangedState(value),
            onEditingComplete: widget.onEditingComplete,
            onSubmitted: widget.onSubmitted,
            onAppPrivateCommand: widget.onAppPrivateCommand,
            inputFormatters: widget.inputFormatters,
            enabled: widget.enabled,
            cursorWidth: widget.cursorWidth,
            cursorHeight: widget.cursorHeight,
            cursorRadius: widget.cursorRadius,
            cursorColor: _warningText != null
                ? Theme.of(context).colorScheme.fmiBaseThemeWarningWarning
                : widget.cursorColor,
            selectionHeightStyle: widget.selectionHeightStyle,
            selectionWidthStyle: widget.selectionWidthStyle,
            keyboardAppearance: widget.keyboardAppearance,
            scrollPadding: widget.scrollPadding,
            dragStartBehavior: widget.dragStartBehavior,
            enableInteractiveSelection: widget.enableInteractiveSelection,
            selectionControls: widget.selectionControls,
            onTap: widget.onTap,
            mouseCursor: widget.mouseCursor,
            buildCounter: widget.buildCounter,
            scrollController: widget.scrollController,
            scrollPhysics: widget.scrollPhysics,
            autofillHints: widget.autofillHints,
            clipBehavior: widget.clipBehavior,
            restorationId: widget.restorationId,
            scribbleEnabled: widget.scribbleEnabled,
            enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
            contextMenuBuilder: widget.contextMenuBuilder,
          ),
        ),
      ),
    );
  }
}
