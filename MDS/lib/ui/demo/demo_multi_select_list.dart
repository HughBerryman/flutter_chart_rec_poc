import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/fmi_theme_base.dart';
import 'package:fmi_core/ui/ui.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoMultiSelectList extends StatefulWidget {
  const DemoMultiSelectList({Key? key}) : super(key: key);

  @override
  State<DemoMultiSelectList> createState() => _DemoMultiSelectListState();
}

class _DemoMultiSelectListState extends State<DemoMultiSelectList> {
  List<String> selectedItems = [];
  List<SearchItem<String>> testSearchResults = [
    SearchItem(
        item: "Item One",
        itemKey: "Item One",
        displayText: "Item One",
        avatarUrl:
            "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg"),
    SearchItem(item: "Item Two", itemKey: "Item Two", displayText: "Item Two"),
    SearchItem(
        item: "Item Three", itemKey: "Item Three", displayText: "Item Three")
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Multi Select List'),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(
              title: "Type \"item\" in the search bar to get results."),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: Text("Selected Items: ${selectedItems.toString()}"),
        ),
        SizedBox(
          height: 300,
          child: FmiMultiSelectList<String>(
            searchTerm: (term) async {
              return testSearchResults
                  .where((searchResult) => searchResult.displayText
                      .toLowerCase()
                      .contains(term.isEmpty ? term : term.toLowerCase()))
                  .toList();
            },
            onSelectedItemsChanged: (selectedItems) {
              setState(() {
                this.selectedItems = selectedItems;
              });
            },
          ),
        ),
      ],
    );
  }
}
