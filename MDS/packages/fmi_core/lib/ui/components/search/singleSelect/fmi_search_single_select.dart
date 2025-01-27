import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:collection/collection.dart';
import 'package:animations/animations.dart';

class FmiSearchSingleSelect extends StatefulWidget {
  const FmiSearchSingleSelect({
    Key? key,
    required this.localSearchDomain,
    this.fieldTitle,
    this.fieldTitleTextStyle,
    this.apiSearchTitle,
    this.expandedSearchOptionTitle,
    required this.onSelected,
    this.apiSearches,
    required this.searchSuggestions,
    required this.onNoResultRedirect,
    this.noResultText,
    this.hideElevation = false,
    this.useCircleShape = false,
    this.onFocusChanged,
    this.backgroundColor,
    this.leadingIconColor,
    this.suffixIconColor,
    this.isCondensed = false,
    this.maxHeightOverlay,
  }) : super(key: key);

  final String localSearchDomain;
  final String? fieldTitle;
  final TextStyle? fieldTitleTextStyle;
  final String? apiSearchTitle;
  final String? expandedSearchOptionTitle;
  final Function(SearchOption selectedOption) onSelected;
  final List<SearchOption>? apiSearches;
  final List<SearchOption> searchSuggestions;
  final Function onNoResultRedirect;
  final String? noResultText;
  final bool? hideElevation;
  final bool? useCircleShape;
  final Function(bool isFocused)? onFocusChanged;
  final Color? backgroundColor;
  final Color? leadingIconColor;
  final Color? suffixIconColor;
  final bool? isCondensed;
  final double? maxHeightOverlay;

  @override
  State<FmiSearchSingleSelect> createState() => _FmiSearchSingleSelectState();
}

class _FmiSearchSingleSelectState extends State<FmiSearchSingleSelect>
    with SingleTickerProviderStateMixin {
  final int _maxApiSearches = 10;
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  List<SearchOption> _displaySuggestions = [];
  final List<SearchOption> _apiSearches = [];
  String _searchQuery = '';
  OverlayEntry? _overlayEntry;
  final _layerLink = LayerLink();
  final _searchKey = GlobalKey();
  bool _isSearching = false;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        showOverlay();

        setState(() {
          _isSearching = true;
        });

        if (widget.onFocusChanged != null) {
          widget.onFocusChanged!(true);
        }
      } else {
        hideOverlay();

        setState(() {
          _isSearching = false;
        });

        if (widget.onFocusChanged != null) {
          widget.onFocusChanged!(false);
        }
      }
    });

    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 350),
        reverseDuration: const Duration(milliseconds: 350));

    if (widget.apiSearches != null) {
      for (var apiSearch in widget.apiSearches!) {
        var searchSuggestion = widget.searchSuggestions.firstWhereOrNull(
            (suggestion) =>
                suggestion.title.toLowerCase() ==
                apiSearch.title.toLowerCase());
        if (searchSuggestion != null) {
          _apiSearches.add(apiSearch);
        }
      }
    }

    widget.searchSuggestions.sort((a, b) => a.title.compareTo(b.title));
  }

  @override
  void dispose() {
    if (_animationController.isAnimating) {
      _animationController.stop();
    }

    _animationController.dispose();
    _controller.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  void showOverlay() {
    final overlay = Overlay.of(context);
    final renderBox =
        _searchKey.currentContext!.findRenderObject() as RenderBox;
    final size = renderBox.size;
    _animationController.forward();

    var textFieldWidthPadding =
        FMIThemeBase.basePadding6 + FMIThemeBase.basePadding6;
    var textFieldHeightPadding = widget.isCondensed!
        ? FMIThemeBase.basePadding2 + FMIThemeBase.basePadding2
        : FMIThemeBase.basePadding4 + FMIThemeBase.basePadding4;

    _overlayEntry = OverlayEntry(
        builder: (context) => Positioned(
              width: size.width + textFieldWidthPadding,
              child: CompositedTransformFollower(
                  link: _layerLink,
                  showWhenUnlinked: false,
                  offset: Offset(
                      0,
                      size.height +
                          textFieldHeightPadding +
                          FMIThemeBase.basePadding4),
                  child: buildOverlay()),
            ));
    overlay.insert(_overlayEntry!);
  }

  void hideOverlay() {
    if (!mounted) {
      return;
    }

    setState(() {
      _searchQuery = '';
      _controller.text = '';
    });

    _animationController.reverse().whenComplete(() {
      setState(() {
        _overlayEntry?.remove();
        _overlayEntry = null;
        _displaySuggestions = [];
      });
    });
  }

  void onClear() {
    _focusNode.unfocus();
  }

  Widget buildOverlay() => FadeScaleTransition(
        animation: _animationController,
        child: Material(
            elevation: FMIThemeBase.baseElevationDouble20,
            clipBehavior: Clip.antiAlias,
            borderRadius:
                BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge),
            child: TextFieldTapRegion(
              child: FmiSearchSingleSelectOverlay(
                localSearchDomain: widget.localSearchDomain,
                query: _searchQuery,
                apiSearchTitle: widget.apiSearchTitle,
                apiSearches: widget.apiSearches,
                expandedSearchOptionTitle: widget.expandedSearchOptionTitle,
                onSelected: onSelectedLocal,
                searchSuggestions: widget.searchSuggestions,
                displaySuggestions: _displaySuggestions,
                onNoResultRedirect: onNoResultRedirect,
                noResultText: widget.noResultText,
                maxHeightOverlay: widget.maxHeightOverlay,
              ),
            )),
      );

  void onSelectedApi(SearchOption selectedOption) {
    widget.onSelected(selectedOption);
    onClear();
  }

  void onSelectedLocal(SearchOption selectedOption) {
    widget.onSelected(selectedOption);
    onClear();
  }

  void onNoResultRedirect() {
    widget.onNoResultRedirect();
    onClear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FmiSearchBar(
          searchKey: _searchKey,
          focusNode: _focusNode,
          layerLink: _layerLink,
          isSearching: _isSearching,
          onClear: onClear,
          onChanged: searchField,
          controller: _controller,
          backgroundColor: widget.backgroundColor,
          hideElevation: widget.hideElevation,
          useCircleShape: widget.useCircleShape,
          leadingIconColor: widget.leadingIconColor,
          suffixIconColor: widget.suffixIconColor,
          fieldTitle: widget.fieldTitle ?? context.coreLocalize.search,
          fieldTitleTextStyle: widget.fieldTitleTextStyle,
          isCondensed: widget.isCondensed,
        ),
        Visibility(
          visible: !(context.isXSmall || context.isSmall),
          child: _apiSearches.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.only(
                      top: FMIThemeBase.basePaddingXLarge, bottom: 40),
                  child: FmiSearchOptions(
                    maxSearchOptions: _maxApiSearches,
                    searchOptions: _apiSearches,
                    onSelected: onSelectedApi,
                    defaultChipTheme: false,
                  ),
                )
              : Container(),
        ),
      ],
    );
  }

  void searchField(String query) {
    try {
      if (query.isEmpty) {
        setState(() {
          _searchQuery = query;
          _displaySuggestions = [];
        });
      } else {
        setState(() {
          _searchQuery = query;
          _displaySuggestions = widget.searchSuggestions
              .where((suggestion) =>
                  suggestion.title
                      .toLowerCase()
                      .contains(query.toLowerCase()) ||
                  (suggestion.tags?.any((element) => element
                          .toLowerCase()
                          .contains(query.toLowerCase())) ??
                      false))
              .toList();
        });
      }

      _overlayEntry!.markNeedsBuild();
    } catch (e) {
      debugPrint("ERROR: $e");
    }
  }
}
