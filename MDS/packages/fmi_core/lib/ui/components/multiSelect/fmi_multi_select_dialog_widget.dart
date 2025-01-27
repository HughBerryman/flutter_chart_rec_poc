import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiMultiSelectDialogWidget<T> extends StatefulWidget {
  const FmiMultiSelectDialogWidget(
      {Key? key,
      required this.title,
      required this.searchTerm,
      this.initialSelectedItems,
      required this.onSelectedItemsChanged,
      this.listItemIcon,
      this.searchDomain,
      this.showAll = true})
      : super(key: key);

  final String title;
  final Future<List<SearchItem<T>>> Function(String term) searchTerm;
  final List<SearchItem<T>>? initialSelectedItems;
  final Function(List<T>) onSelectedItemsChanged;
  final IconData? listItemIcon;
  final String? searchDomain;
  final bool showAll;

  @override
  State<FmiMultiSelectDialogWidget<T>> createState() =>
      _FmiMultiSelectDialogWidgetState();
}

class _FmiMultiSelectDialogWidgetState<T>
    extends State<FmiMultiSelectDialogWidget<T>> {
  List<T> selectedItems = [];

  @override
  void initState() {
    if (widget.initialSelectedItems != null) {
      selectedItems = widget.initialSelectedItems!.map((e) => e.item).toList();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ClosableAppBar(
          title: widget.title,
          onClose: () {
            Navigator.pop(context);
          },
          onSave: () {
            setState(() {});
            widget.onSelectedItemsChanged(selectedItems);
            Navigator.pop(context);
          },
        ),
        body: FmiMultiSelectList<T>(
          searchDomain: widget.searchDomain,
          searchTerm: widget.searchTerm,
          initialSelectedItems: widget.initialSelectedItems,
          onSelectedItemsChanged: (items) {
            selectedItems = items;
          },
          listItemIcon: widget.listItemIcon,
          showAll: widget.showAll,
        ));
  }
}
