import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/extensions/extensions.dart';
import 'package:fmi_core/ui/components/search/models/search_category.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchDialogResults extends StatefulWidget {
  const SearchDialogResults(
      {required this.categories,
      this.optionalRedirect,
      this.optionalRedirectText,
      this.optionalRedirectIcon,
      super.key});

  final List<SearchCategory> categories;
  final Function()? optionalRedirect;
  final String? optionalRedirectText;
  final IconData? optionalRedirectIcon;

  @override
  State<SearchDialogResults> createState() => _SearchDialogResultsState();
}

class _SearchDialogResultsState extends State<SearchDialogResults> {
  bool _optionsGreaterThan4 = false;
  bool _showAll = false;
  final int _condensedOptionsInt = 4;

  @override
  initState() {
    super.initState();

    _optionsGreaterThan4 = _hasCategoryWithMoreThanFourOptions();
  }

  @override
  void didUpdateWidget(SearchDialogResults oldWidget) {
    super.didUpdateWidget(oldWidget);

    _optionsGreaterThan4 = _hasCategoryWithMoreThanFourOptions();
  }

  bool _hasCategoryWithMoreThanFourOptions() {
    for (var category in widget.categories) {
      if (category.options.length > _condensedOptionsInt) {
        return true;
      }
    }

    return false;
  }

  void _showResults() {
    setState(() {
      _showAll = !_showAll;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _isMobileLayout = context.isSmall || context.isXSmall;
    double _height = _isMobileLayout
        ? FMIThemeBase.baseContainerDimension450
        : context.isMedium
            ? FMIThemeBase.baseContainerDimension300
            : FMIThemeBase.baseContainerDimension460;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: _height),
      child: Padding(
        padding: const EdgeInsets.only(
            top: FMIThemeBase.basePadding10, bottom: FMIThemeBase.basePadding8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.categories.length,
                  itemBuilder: (context, index) {
                    var category = widget.categories[index];
                    return Column(
                      children: [
                        Padding(
                          padding: _isMobileLayout
                              ? EdgeInsets.only(
                                  left: FMIThemeBase.basePadding8,
                                  top: index == 0
                                      ? FMIThemeBase.basePadding0
                                      : FMIThemeBase.basePadding8,
                                  right: FMIThemeBase.basePadding8,
                                  bottom: FMIThemeBase.basePadding4,
                                )
                              : EdgeInsets.only(
                                  left: FMIThemeBase.basePadding12,
                                  top: index == 0
                                      ? FMIThemeBase.basePadding0
                                      : FMIThemeBase.basePadding8,
                                  right: FMIThemeBase.basePadding12,
                                  bottom: FMIThemeBase.basePadding4,
                                ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  category.title.toUpperCase(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary),
                                ),
                              ),
                              if (category.trailing != null) category.trailing!
                            ],
                          ),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: _showAll
                                ? category.options.length
                                : category.options.length < _condensedOptionsInt
                                    ? category.options.length
                                    : _condensedOptionsInt,
                            itemBuilder: (context, optionIndex) {
                              var option = category.options[optionIndex];
                              return Material(
                                child: InkWell(
                                  onTap: option.onTap,
                                  child: Padding(
                                    padding: _isMobileLayout
                                        ? const EdgeInsets.only(
                                            left: FMIThemeBase.basePadding8,
                                            top: FMIThemeBase.basePadding4,
                                            right: FMIThemeBase.basePadding8,
                                            bottom: FMIThemeBase.basePadding4)
                                        : const EdgeInsets.only(
                                            left: FMIThemeBase.basePadding12,
                                            top: FMIThemeBase.basePadding4,
                                            right: FMIThemeBase.basePadding12,
                                            bottom: FMIThemeBase.basePadding4),
                                    child: Row(
                                      children: [
                                        if (option.leading != null)
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right:
                                                    FMIThemeBase.basePadding8),
                                            child: option.leading!,
                                          ),
                                        Expanded(
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  option.title,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium
                                                      ?.copyWith(
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .onSurface),
                                                ),
                                                if (option.subtitle != null)
                                                  Text(
                                                    option.subtitle!,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium
                                                        ?.copyWith(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .onSurface),
                                                  ),
                                              ]),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })
                      ],
                    );
                  }),
              if (_optionsGreaterThan4)
                Padding(
                  padding: const EdgeInsets.only(
                      top: FMIThemeBase.basePadding4,
                      bottom: FMIThemeBase.basePadding4),
                  child: TextButton(
                      onPressed: _showResults,
                      child: Text(
                        _showAll
                            ? context.coreLocalize.showLessResults
                            : context.coreLocalize.showMoreResults,
                      )),
                ),
              if (widget.optionalRedirect != null &&
                  widget.optionalRedirectText != null &&
                  widget.optionalRedirectText!.isNotEmpty)
                Padding(
                    padding: const EdgeInsets.only(
                        top: FMIThemeBase.basePadding4,
                        bottom: FMIThemeBase.basePadding4),
                    child: widget.optionalRedirectIcon != null
                        ? Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextButton.icon(
                                onPressed: widget.optionalRedirect,
                                icon: FaIcon(
                                  widget.optionalRedirectIcon,
                                ),
                                label: Text(
                                  widget.optionalRedirectText!,
                                )),
                          )
                        : TextButton(
                            onPressed: widget.optionalRedirect,
                            child: Text(
                              widget.optionalRedirectText!,
                            ))),
            ],
          ),
        ),
      ),
    );
  }
}
