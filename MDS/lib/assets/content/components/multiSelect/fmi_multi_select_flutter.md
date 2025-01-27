##### Examples

```dart 
class SampleObject {
  String? photoUrl;
  String name;

  SampleObject({this.photoUrl, required this.name});
}
```

```dart 
FmiMultiSelectWidget<SampleObject>(
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
)
```

```dart                                   
FmiMultiSelectWidget<SampleObject>(
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
```

```dart 
FmiMultiSelectWidget<SampleObject>(
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
```

`  `