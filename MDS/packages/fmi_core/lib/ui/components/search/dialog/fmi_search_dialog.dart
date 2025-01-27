import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/extensions/extensions.dart';
import 'package:fmi_core/providers/interfaces/interfaces.dart';
import 'package:fmi_core/ui/components/components.dart';
import 'package:fmi_core/ui/components/search/models/search_category.dart';
import 'package:provider/provider.dart';

class FmiSearchDialog extends StatefulWidget {
  const FmiSearchDialog(
      {this.hideElevation = false,
      this.useCircleShape = false,
      this.backgroundColor,
      this.leadingIconColor,
      this.suffixIconColor,
      this.fieldTitle,
      this.fieldTitleTextStyle,
      required this.searchResults,
      required this.onChanged,
      super.key});

  final bool? hideElevation;
  final bool? useCircleShape;
  final Color? backgroundColor;
  final Color? leadingIconColor;
  final Color? suffixIconColor;
  final String? fieldTitle;
  final TextStyle? fieldTitleTextStyle;
  final SearchResults searchResults;
  final Function(String) onChanged;

  @override
  State<FmiSearchDialog> createState() => _FmiSearchDialogState();
}

class _FmiSearchDialogState extends State<FmiSearchDialog> {
  final _searchKey = GlobalKey();
  final FocusNode _focusNode = FocusNode();
  final LayerLink _layerLink = LayerLink();
  bool _isSearching = false;
  final TextEditingController _controller = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();

    _focusNode.requestFocus();
    _isSearching = true;
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  void onClear() {
    setState(() {
      _searchQuery = '';
      _controller.text = '';
    });
    widget.onChanged(_searchQuery);
  }

  void onChanged(String query) {
    widget.onChanged(query);
    setState(() {
      _searchQuery = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _isMobileLayout = context.isXSmall || context.isSmall;
    return Consumer<SearchDialogProvider>(builder: (context, provider, child) {
      List<SearchCategory> _categories = provider.categories ?? [];
      String? _optionalRedirectText = provider.optionalRedirectText ?? '';
      Function()? _optionalRedirect = provider.optionalRedirect;
      IconData? _optionalRedirectIcon = provider.optionalRedirectIcon;
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: _isMobileLayout
                  ? FMIThemeBase.basePadding8
                  : FMIThemeBase.basePadding12,
              left: _isMobileLayout
                  ? FMIThemeBase.basePadding8
                  : FMIThemeBase.basePadding12,
              right: _isMobileLayout
                  ? FMIThemeBase.basePadding8
                  : FMIThemeBase.basePadding12,
            ),
            child: Material(
              child: FmiSearchBar(
                searchKey: _searchKey,
                focusNode: _focusNode,
                layerLink: _layerLink,
                isSearching: _isSearching,
                controller: _controller,
                hideElevation: widget.hideElevation,
                useCircleShape: widget.useCircleShape,
                backgroundColor: widget.backgroundColor,
                leadingIconColor: widget.leadingIconColor,
                suffixIconColor: widget.suffixIconColor,
                fieldTitle: widget.fieldTitle ?? context.coreLocalize.search,
                fieldTitleTextStyle: widget.fieldTitleTextStyle,
                onClear: onClear,
                onChanged: onChanged,
              ),
            ),
          ),
          _searchQuery.isEmpty
              ? const Expanded(child: FmiStartSearchWidget(isFullPage: false))
              : _categories.isEmpty
                  ? Padding(
                      padding:
                          const EdgeInsets.only(top: FMIThemeBase.basePadding3),
                      child: FmiSearchNoResultWidget(
                        onNoResultRedirect:
                            widget.searchResults.onNoResultRedirect,
                        noResultText: widget.searchResults.noResultText,
                      ),
                    )
                  : Flexible(
                      child: SearchDialogResults(
                        categories: _categories,
                        optionalRedirectText: _optionalRedirectText,
                        optionalRedirect: _optionalRedirect,
                        optionalRedirectIcon: _optionalRedirectIcon,
                      ),
                    ),
        ],
      );
    });
  }
}
