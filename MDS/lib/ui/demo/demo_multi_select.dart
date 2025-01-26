import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/fmi_theme_base.dart';
import 'package:fmi_core/ui/ui.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoMultiSelect extends StatefulWidget {
  const DemoMultiSelect({Key? key}) : super(key: key);

  @override
  State<DemoMultiSelect> createState() => _DemoMultiSelectState();
}

class _DemoMultiSelectState extends State<DemoMultiSelect> {
  List<SampleObject> selectedItemsDemo1 = [];
  List<SampleObject> selectedItemsDemo2 = [
    SampleObject(
        photoUrl:
            "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg",
        name: 'Work Item One'),
    SampleObject(name: 'Work Item Two')
  ];
  List<SampleObject> selectedItemsDemo3 = [];
  List<SearchItem<SampleObject>> testSearchResults = [
    SearchItem(
        item: SampleObject(
            name: "Work Item One",
            photoUrl:
                "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg"),
        itemKey: "Work Item One",
        displayText: "Work Item One",
        avatarUrl:
            "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg"),
    SearchItem(
        item: SampleObject(name: "Work Item Two"),
        itemKey: "Work Item Two",
        displayText: "Work Item Two"),
    SearchItem(
        item: SampleObject(name: "Work Item Three"),
        itemKey: "Work Item Three",
        displayText: "Work Item Three")
  ];

  List<SearchItem<SampleObject>> selectedSearchItemsDemo1 = [];
  List<SearchItem<SampleObject>> selectedSearchItemsDemo2 = [
    SearchItem(
        item: SampleObject(
            name: "Work Item One",
            photoUrl:
                "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg"),
        itemKey: "Work Item One",
        displayText: "Work Item One",
        avatarUrl:
            "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg"),
    SearchItem(
        item: SampleObject(name: "Work Item Two"),
        itemKey: "Work Item Two",
        displayText: "Work Item Two"),
  ];
  List<SearchItem<SampleObject>> selectedSearchItemsDemo3 = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Multi Select'),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(
              title: "Type \"item\" in the search bar to get results."),
        ),
        SizedBox(
          height: 200,
          child: FmiMultiSelectWidget<SampleObject>(
            searchTerm: (term) async {
              return testSearchResults
                  .where((searchResult) => searchResult.displayText
                      .toLowerCase()
                      .contains(term.isEmpty ? term : term.toLowerCase()))
                  .toList();
            },
            initialSelectedItems: selectedSearchItemsDemo1,
            onSelectedItemsChanged: (selectedItems) {
              setState(() {
                selectedItemsDemo1 = selectedItems;
                selectedSearchItemsDemo1 = selectedItems
                    .map((item) => SearchItem(
                        item: item,
                        itemKey: item.name,
                        displayText: item.name,
                        avatarUrl: item.photoUrl))
                    .toList();
              });
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Fmi Multi Select with pre-existing values'),
        ),
        SizedBox(
          height: 200,
          child: FmiMultiSelectWidget<SampleObject>(
            fieldTitle: 'Add Work Items',
            searchTerm: (term) async {
              return testSearchResults
                  .where((searchResult) => searchResult.displayText
                      .toLowerCase()
                      .contains(term.isEmpty ? term : term.toLowerCase()))
                  .toList();
            },
            initialSelectedItems: selectedSearchItemsDemo2,
            onSelectedItemsChanged: (selectedItems) {
              setState(() {
                selectedItemsDemo2 = selectedItems;
                selectedSearchItemsDemo2 = selectedItems
                    .map((item) => SearchItem(
                        item: item,
                        itemKey: item.name,
                        displayText: item.name,
                        avatarUrl: item.photoUrl))
                    .toList();
              });
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(
              title:
                  "Type \"item\" in the search bar to get results.  Show all = false."),
        ),
        SizedBox(
          height: 200,
          child: FmiMultiSelectWidget<SampleObject>(
            searchTerm: (term) async {
              return testSearchResults
                  .where((searchResult) => searchResult.displayText
                      .toLowerCase()
                      .contains(term.isEmpty ? term : term.toLowerCase()))
                  .toList();
            },
            initialSelectedItems: selectedSearchItemsDemo3,
            onSelectedItemsChanged: (selectedItems) {
              setState(() {
                selectedItemsDemo3 = selectedItems;
                selectedSearchItemsDemo3 = selectedItems
                    .map((item) => SearchItem(
                        item: item,
                        itemKey: item.name,
                        displayText: item.name,
                        avatarUrl: item.photoUrl))
                    .toList();
              });
            },
            showAll: false,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Disabled Fmi Multi Select with pre-existing values'),
        ),
        SizedBox(
          height: 200,
          child: FmiMultiSelectWidget<SampleObject>(
            enabled: false,
            fieldTitle: 'Add Work Items',
            searchTerm: (term) async {
              return testSearchResults
                  .where((searchResult) => searchResult.displayText
                      .toLowerCase()
                      .contains(term.isEmpty ? term : term.toLowerCase()))
                  .toList();
            },
            initialSelectedItems: selectedSearchItemsDemo2,
            onSelectedItemsChanged: (selectedItems) {
              setState(() {
                selectedItemsDemo2 = selectedItems;
                selectedSearchItemsDemo2 = selectedItems
                    .map((item) => SearchItem(
                        item: item,
                        itemKey: item.name,
                        displayText: item.name,
                        avatarUrl: item.photoUrl))
                    .toList();
              });
            },
          ),
        ),
      ],
    );
  }
}

class SampleObject {
  String? photoUrl;
  String name;

  SampleObject({this.photoUrl, required this.name});
}
