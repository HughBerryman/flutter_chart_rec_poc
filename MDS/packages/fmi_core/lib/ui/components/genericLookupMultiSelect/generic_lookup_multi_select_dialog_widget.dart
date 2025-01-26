import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class GenericLookupMultiSelectDialogWidget extends StatefulWidget {
  const GenericLookupMultiSelectDialogWidget({
    Key? key,
    required this.title,
    required this.lookupItems,
    required this.options,
    required this.dataSource,
    this.supportOnline = false,
    this.onSave,
    this.initialValue,
  }) : super(key: key);

  final String title;
  final PageSetGenericLookupModel? lookupItems;
  final GenericLookupMultiSelectDataOptions options;
  final bool supportOnline;
  final String dataSource;
  final Function(List<GenericTableItem>? selectedItem)? onSave;
  final List<GenericTableItem>? initialValue;

  @override
  State<GenericLookupMultiSelectDialogWidget> createState() =>
      _GenericLookupMultiSelectDialogWidgetState();
}

class _GenericLookupMultiSelectDialogWidgetState
    extends State<GenericLookupMultiSelectDialogWidget> {
  List<GenericTableItem>? selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ClosableAppBar(
          title: widget.title,
          onClose: () {
            Navigator.pop(context);
          },
          onSave: () {
            widget.onSave!(selectedItems);
            Navigator.pop(context);
          },
        ),
        body: MultiSelectTableWidget(
          dataSource: widget.dataSource,
          options: widget.options,
          initialSelectedItems: widget.initialValue,
          lookupItems: widget.lookupItems,
          searchDomain: widget.dataSource,
          supportOnline: widget.supportOnline,
          onChanged: (result) {
            setState(() {
              selectedItems = result;
            });
          },
        ));
  }
}
