##### Examples

```dart                                   
FmiMultiSelectList<String>(
  searchTerm: (term) async {
    return testSearchResults
      .where((searchResult) => searchResult.displayText
      .toLowerCase()
      .contains(term.isEmpty ? term : term.toLowerCase()))
      .toList();
  },
  onSelectedItemsChanged: (selectedItems){
    setState(() {
      this.selectedItems = selectedItems;
    });
  },
),
```

