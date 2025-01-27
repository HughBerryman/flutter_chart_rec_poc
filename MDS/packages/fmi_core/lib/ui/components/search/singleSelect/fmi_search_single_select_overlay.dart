import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:collection/collection.dart';

class FmiSearchSingleSelectOverlay extends StatefulWidget {
  const FmiSearchSingleSelectOverlay(
      {Key? key,
      required this.localSearchDomain,
      this.apiSearchTitle,
      this.apiSearches,
      this.expandedSearchOptionTitle,
      required this.onSelected,
      required this.searchSuggestions,
      this.displaySuggestions,
      required this.query,
      required this.onNoResultRedirect,
      this.noResultText,
      this.maxHeightOverlay})
      : super(key: key);

  final String localSearchDomain;
  final String? apiSearchTitle;
  final List<SearchOption>? apiSearches;
  final String? expandedSearchOptionTitle;
  final Function(SearchOption) onSelected;
  final List<SearchOption> searchSuggestions;
  final List<SearchOption>? displaySuggestions;
  final String query;
  final Function onNoResultRedirect;
  final String? noResultText;
  final double? maxHeightOverlay;

  @override
  State<FmiSearchSingleSelectOverlay> createState() =>
      _FmiSearchSingleSelectOverlayState();
}

class _FmiSearchSingleSelectOverlayState
    extends State<FmiSearchSingleSelectOverlay> {
  bool _isBusy = false;
  List<SearchedTerm> _searchedTerms = [];
  final SearchedTermRepository _searchedTermRepository =
      GetIt.instance<SearchedTermRepository>();
  final ValueNotifier<List<SearchOption>> _suggestionNotifier =
      ValueNotifier<List<SearchOption>>([]);
  List<SearchOption> _localSearchOptions = [];

  @override
  void initState() {
    super.initState();
    _suggestionNotifier.value = widget.displaySuggestions ?? [];
    asyncInit();
  }

  @override
  void didUpdateWidget(FmiSearchSingleSelectOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.displaySuggestions != oldWidget.displaySuggestions) {
      _suggestionNotifier.value = widget.searchSuggestions;
    }
  }

  void asyncInit() async {
    try {
      setState(() {
        _isBusy = true;
      });
      _searchedTerms = await _searchedTermRepository
          .getSearchedTermsByDomain(widget.localSearchDomain);
      _searchedTerms.sort((a, b) {
        return a.timestamp.compareTo(b.timestamp);
      });

      for (var term in _searchedTerms) {
        var searchSuggestion = widget.searchSuggestions.firstWhereOrNull(
            (suggestion) =>
                suggestion.title.toLowerCase() == term.term.toLowerCase());
        if (searchSuggestion != null) {
          _localSearchOptions.add(searchSuggestion);
        } else {
          _searchedTermRepository.deleteSearchedTerm(term);
          _searchedTerms.remove(term);
        }
      }
    } finally {
      setState(() {
        _isBusy = false;
      });
    }
  }

  void onSelected(SearchOption selectedOption) {
    var exists = _localSearchOptions.contains(selectedOption);

    if (!exists) {
      if (_localSearchOptions.length >= 10) {
        SearchedTerm deleteRecord = _searchedTerms[0];
        _searchedTermRepository.deleteSearchedTerm(deleteRecord);
        _localSearchOptions
            .removeWhere((local) => local.title == deleteRecord.term);
        _searchedTerms.remove(deleteRecord);
      }
      var searchedTerm = SearchedTerm(
          domain: widget.localSearchDomain,
          term: selectedOption.title,
          timestamp: DateTime.now());
      _searchedTermRepository.upsertSearchedTerm(searchedTerm);
    }

    widget.onSelected(selectedOption);
  }

  @override
  Widget build(BuildContext context) {
    return _isBusy
        ? const Center(child: CircularProgressIndicator())
        : ValueListenableBuilder(
            valueListenable: _suggestionNotifier,
            builder: (context, model, child) {
              return buildBody(context);
            });
  }

  Widget buildBody(BuildContext context) {
    return FmiSearchOverlay(
        child: Container(
      constraints: BoxConstraints(
          maxHeight: widget.maxHeightOverlay ??
              MediaQuery.of(context).size.height * 0.4),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if ((widget.displaySuggestions == null ||
                  widget.displaySuggestions!.isEmpty) &&
              widget.query.isEmpty) ...[
            if ((context.isXSmall || context.isSmall) &&
                widget.apiSearches != null &&
                widget.apiSearches!.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.only(
                    top: FMIThemeBase.basePadding10,
                    right: FMIThemeBase.basePadding6,
                    bottom: FMIThemeBase.basePadding6,
                    left: FMIThemeBase.basePadding6),
                child:
                    Text(widget.apiSearchTitle ?? context.coreLocalize.popular),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: FMIThemeBase.basePadding6,
                  right: FMIThemeBase.basePadding6,
                ),
                child: FmiSearchOptions(
                    searchOptions: widget.apiSearches!,
                    onSelected: widget.onSelected),
              )
            ],
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePadding10,
                  right: FMIThemeBase.basePadding6,
                  bottom: FMIThemeBase.basePadding6,
                  left: FMIThemeBase.basePadding6),
              child: Text(widget.expandedSearchOptionTitle ??
                  context.coreLocalize.recent),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: FMIThemeBase.basePadding6,
                  right: FMIThemeBase.basePadding6,
                  bottom: FMIThemeBase.basePadding12),
              child: _localSearchOptions.isNotEmpty
                  ? FmiSearchOptions(
                      searchOptions: _localSearchOptions,
                      onSelected: widget.onSelected)
                  : Text(context.coreLocalize.noRecentResults),
            )
          ] else if ((widget.displaySuggestions == null ||
                  widget.displaySuggestions!.isEmpty) &&
              widget.query.isNotEmpty) ...[
            Padding(
                padding: const EdgeInsets.only(
                    top: FMIThemeBase.basePadding10,
                    right: FMIThemeBase.basePadding4,
                    bottom: FMIThemeBase.basePadding6,
                    left: FMIThemeBase.basePadding4),
                child: Center(
                  child: FmiSearchNoResultWidget(
                    onNoResultRedirect: widget.onNoResultRedirect,
                    noResultText: widget.noResultText,
                  ),
                )),
          ] else ...[
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePadding10,
                  right: FMIThemeBase.basePadding6,
                  left: FMIThemeBase.basePadding6),
              child: Text(widget.expandedSearchOptionTitle ??
                  context.coreLocalize.results),
            ),
            Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
              child: FmiSearchOptions(
                  searchOptions: widget.displaySuggestions!,
                  onSelected: onSelected),
            )
          ]
        ]),
      ),
    ));
  }
}
