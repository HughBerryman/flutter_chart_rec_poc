### Fmi Search Single Select

##### Usage

Displays search bar with first 10 api searches. On focus, displays up to 10 local searches. On query string, displays search suggestions based on the suggestion title as well as tags if present. On selection, returns selected search result.
Use-case: Function onSelected will redirect the user to new page. Value would contain information for navigation redirect, exp route name, url, etc. Function onNoResultRedirect should redirect user to knowledge base help page.

##### Alternatives

- OOB Flutter Widget

##### Parameters

- localSearchDomain - String, required
- fieldTitle - String, optional
- fieldTitleTextStyle - TextStyle, optional
- apiSearchTitle - String, optional
- expandedSearchOptionTitle - String, optional
- onSelected - Function(SearchOption selectedOption), required
- apiSearches - List<SearchOption>?, optional
- searchSuggestions - List<SearchOption>, required
- onNoResultRedirect - Function, required
- noResultText - String, optional
- hideElevation - bool, optional default false
- useCircleShape - bool, optional default false
- onFocusChanged - Function(bool isFocused), optional
- backgroundColor - Color, optional
- leadingIconColor - Color, optional
- suffixIconColor - Color, optional
- isCondensed - bool, optional default false
- maxHeightOverlay - double, optional default MediaQuery.of(context).size.height * 0.4

##### Models

class SearchOption

- title - String, required
- id - T, optional
- value - G, required
- tags - List<String>, optional

`  `
