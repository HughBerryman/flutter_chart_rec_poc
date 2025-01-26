### Fmi Multi Select List 

##### Usage

Allows user to search and select multiple items from a list. The selected items then turn into input chips with the option to remove selected items through a clickable X icon.

**Important**
* onSelectedItemsChanged must handle updating the initialSelectedItems parameter and mapping List<T> to List<SearchItem<T>>

##### Alternatives

* FMI Multi Employee Lookup

##### Parameters

* searchTerm - Future<List<SearchItem<T>>> Function(String term), required
* initialSelectedItems - List<SearchItem<T>>, optional
* onSelectedItemsChanged - Function(List<T>), optional
* listItemIcon - IconData, optional
* searchDomain - String?, optional
* showAll - bool, default true

`  `