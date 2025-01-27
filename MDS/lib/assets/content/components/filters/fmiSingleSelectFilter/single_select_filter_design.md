### Fmi Dialog Filter Single Select Button

##### Usage

Used as a filter button that when clicked opens a single select list of filter options.

##### Parameters

* label - String, required
* icon - IconData, required
* onChanged - Function(FilterOption<T,G>?), required
* options - List<FilterOption<T, G>>, required
* initialSelected - FilterOption<T, G>?, optional

##### Models

class FilterOption<T, G>

* title - String, required
* id - T, required
* value - G, required
* leading - Widget, optional

`  `