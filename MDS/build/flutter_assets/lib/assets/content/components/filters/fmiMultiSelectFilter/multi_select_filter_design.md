### Fmi Dialog Filter Multi Select Button

##### Usage

Used as a filter button that when clicked opens a multi select list of filter options.  Leading parameter can be used for FmiAvatar.  Recommended implementation FmiAvatarSize.large, selectedBehaviorOff = true, wrapped with Ignore Pointer.  See dart code for example. 

##### Parameters

* label - String, required
* icon - IconData, required
* onSave - Function(List<FilterOption<T, G>>), required
* options - List<FilterOption<T, G>>, required 
* initialSelected - List<FilterOption<T, G>>, required

##### Models

class FilterOption<T, G>

* title - String, required
* id - T, required
* value - G, required
* leading - Widget, optional

`  `