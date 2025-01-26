### Fmi Search Dialog

##### Usage

Displays search bar and search results. In Small or XSmall screens, use inside showModalBottomSheet with FmiBottomSheetWrapper. In Medium and Large screens, use inside showDialog with FmiDialogWrapper. Must implement SearchDialogProvider to set categories, optionalRedirect, optionalRedirectText, and optionalRedirectIcon. Must handle dismissing the bottom sheet or dialog on result selection or redirects. Must handle using query string to supply search results to be displayed.

**Important** In order to handle screen size changes, both wrappers must be implemented. Code snippets contain examples.

##### Alternatives

- OOB Flutter Widget

##### Parameters

- hideElevation - bool, optional default false
- useCircleShape - bool, optional default false
- backgroundColor - Color, optional
- leadingIconColor - Color, optional
- suffixIconColor - Color, optional
- fieldTitle - String, optional
- fieldTitleTextStyle - TextStyle, optional
- searchResults - SearchResults, required
- onChanged - Function(String), required

##### Models

class FmiSearchBottomSheetWrapper

- child - Widget, required

class FmiDialogWrapper

- child - Widget, required

class SearchResults

- categories - List<SearchCategory>, optional
- onNoResultRedirect - Function, required
- noResultText - String, optional
- optionalRedirect - Function, optional
- optionalRedirectText - String, optional
- optionalRedirectIcon - IconData, optional

Note: To display redirect, both function and text must have values.

class SearchCategory

- title - String, required
- trailing - Widget, optional
- options - List<SearchOption>, options

class SearchOption

- title - String, required
- id - T, optional
- value - G, required
- tags - List<String>, optional
- subtitle - String, optional
- leading - Widget, optional
- onTap - Function(), optional

##### Provider

SearchDialogProvider

- categories - List<SearchCategory>, optional
- optionalRedirect - Function(), optional
- optionalRedirectText- String, optional
- optionalRedirectIcon - IconData, optional
- setCategories - List<SearchCategory> categories, optional
- setOptionalRedirect - Function() optionalRedirect, optional
- setOptionalRedirectText - String optionalRedirectText, optional
- setOptionalRedirectIcon - IconData optionalRedirectIcon, optional

`  `



