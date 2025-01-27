import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiSearchBar extends StatefulWidget {
  const FmiSearchBar(
      {required this.searchKey,
      required this.focusNode,
      required this.layerLink,
      required this.isSearching,
      required this.onClear,
      required this.onChanged,
      required this.controller,
      this.backgroundColor,
      this.hideElevation = false,
      this.useCircleShape = false,
      this.useBorder = false,
      this.enabled = true,
      this.leadingIconColor,
      this.suffixIconColor,
      this.fieldTitle,
      this.fieldTitleTextStyle,
      this.isCondensed = false,
      super.key});

  final GlobalKey searchKey;
  final FocusNode focusNode;
  final LayerLink layerLink;
  final bool isSearching;
  final Function() onClear;
  final Function(String) onChanged;
  final TextEditingController controller;
  final Color? backgroundColor;
  final bool? hideElevation;
  final bool? useCircleShape;
  final bool? useBorder;
  final bool enabled;
  final Color? leadingIconColor;
  final Color? suffixIconColor;
  final String? fieldTitle;
  final TextStyle? fieldTitleTextStyle;
  final bool? isCondensed;

  @override
  State<FmiSearchBar> createState() => _FmiSearchBarState();
}

class _FmiSearchBarState extends State<FmiSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color:
              widget.backgroundColor ?? Theme.of(context).colorScheme.surface,
          boxShadow: (widget.hideElevation!)
              ? null
              : [
                  BoxShadow(
                    color: Theme.of(context)
                        .shadowColor
                        .withOpacity(FMIThemeBase.baseOpacity20),
                    spreadRadius: FMIThemeBase.baseElevation20Spread.toDouble(),
                    blurRadius: FMIThemeBase.baseElevation50Blur.toDouble(),
                  )
                ],
          borderRadius: (widget.useCircleShape!)
              ? BorderRadius.circular(FMIThemeBase.baseBorderRadiusRound)
              : BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge)),
      child: buildSearchBarColumn(context),
    );
  }

  Column buildSearchBarColumn(BuildContext context) {
    return Column(
      children: [
        Theme(
            data: (widget.useBorder!)
                ? FmiInputDecorationTheme.defaultOutlineBorderTheme(context)
                : FmiInputDecorationTheme.searchTheme(context),
            child: CompositedTransformTarget(
              link: widget.layerLink,
              child: Padding(
                padding: (widget.useBorder!)
                    ? const EdgeInsets.symmetric(
                        horizontal: FMIThemeBase.basePadding2,
                        vertical: FMIThemeBase.basePadding1)
                    : widget.focusNode.hasFocus
                        ? const EdgeInsets.only(
                            left: FMIThemeBase.basePadding6,
                            top: FMIThemeBase.basePadding2,
                            bottom: FMIThemeBase.basePadding2)
                        : const EdgeInsets.symmetric(
                            horizontal: FMIThemeBase.basePadding6,
                            vertical: FMIThemeBase.basePadding2),
                child: TextField(
                    key: widget.searchKey,
                    enabled: widget.enabled,
                    textInputAction: TextInputAction.none,
                    textAlignVertical: TextAlignVertical.center,
                    onChanged: (value) {
                      EasyDebounce.debounce(
                          'search',
                          const Duration(milliseconds: 500),
                          () => widget.onChanged(value));
                    },
                    focusNode: widget.focusNode,
                    controller: widget.controller,
                    decoration: InputDecoration(
                        enabled: widget.enabled,
                        prefixIcon: Padding(
                          padding: (widget.useBorder!)
                              ? const EdgeInsets.only(
                                  left: FMIThemeBase.basePadding4,
                                  right: FMIThemeBase.basePadding4)
                              : const EdgeInsets.only(
                                  right: FMIThemeBase.basePadding4),
                          child: FaIcon(
                            FontAwesomeIcons.magnifyingGlass,
                            size: FMIThemeBase.baseIconSmall,
                            color: widget.leadingIconColor ??
                                Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        prefixIconConstraints: const BoxConstraints(
                            minWidth: FMIThemeBase.baseIconSmall,
                            minHeight: FMIThemeBase.baseIconSmall),
                        isCollapsed: true,
                        contentPadding: widget.isCondensed!
                            ? const EdgeInsets.symmetric(
                                vertical: FMIThemeBase.basePadding6)
                            : const EdgeInsets.symmetric(
                                vertical: FMIThemeBase.basePadding8),
                        fillColor: widget.backgroundColor ??
                            Theme.of(context).colorScheme.surface,
                        label: widget.focusNode.hasFocus
                            ? null
                            : Text(
                                widget.fieldTitle ??
                                    context.coreLocalize.searchEmployees,
                                style: widget.fieldTitleTextStyle ??
                                    Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSurface)),
                        suffixIcon: widget.isSearching
                            ? IconButton(
                                onPressed: widget.onClear,
                                icon: const FaIcon(FontAwesomeIcons.xmark),
                                iconSize: FMIThemeBase.baseIconSmall,
                                color: widget.suffixIconColor ??
                                    Theme.of(context).colorScheme.secondary)
                            : null)),
              ),
            )),
      ],
    );
  }
}
