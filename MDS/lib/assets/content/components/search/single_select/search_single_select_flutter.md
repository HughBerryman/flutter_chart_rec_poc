##### Examples

```dart

final List<SearchOption> apiSearches = [
    SearchOption(title: 'Api 1', id: '1', value: 'animation'),
    SearchOption(title: 'Ap 2', id: '2', value: 'dashboard cards'),
    SearchOption(title: 'Api Result 3', id: '3', value: 'app bar top'),
    SearchOption(title: 'A 4', id: '4', value: 'avatar'),
    SearchOption(title: 'Api R 5', id: '5', value: 'badges'),
    SearchOption(title: 'A 6', id: '6', value: 'bottom navigation bar'),
    SearchOption(title: 'Api 7', id: '7', value: 'buttons'),
    SearchOption(title: 'Ap 8', id: '8', value: 'cards'),
    SearchOption(title: 'Api Result 9', id: '9', value: 'closeable app bar'),
    SearchOption(title: 'A 10', id: '10', value: 'conditional question')
  ];

final List<SearchOption> searchSuggestions = [
    SearchOption(title: 'Api 1', id: '1', value: 'animation'),
    SearchOption(title: 'Ap 2', id: '2', value: 'dashboard cards'),
    SearchOption(title: 'Api Result 3', id: '3', value: 'app bar top'),
    SearchOption(title: 'A 4', id: '4', value: 'avatar'),
    SearchOption(title: 'Api R 5', id: '5', value: 'badges'),
    SearchOption(title: 'A 6', id: '6', value: 'bottom navigation bar'),
    SearchOption(title: 'Api 7', id: '7', value: 'buttons'),
    SearchOption(title: 'Ap 8', id: '8', value: 'cards'),
    SearchOption(title: 'Api Result 9', id: '9', value: 'closeable app bar'),
    SearchOption(title: 'A 10', id: '10', value: 'conditional question'),
    SearchOption(title: 'Option 11', id: '11', value: 'multi select'),
    SearchOption(title: 'Opt 12', id: '12', value: 'people card'),
    SearchOption(title: 'O 13', id: '13', value: 'photo attachment'),
    SearchOption(title: 'Option Result 14', id: '14', value: 'radio'),
    SearchOption(title: 'Option Res 15', id: '15', value: 'sample layout'),
    SearchOption(title: 'Opt Res 16', id: '16', value: 'scaffold'),
    SearchOption(title: 'Option 17', id: '17', value: 'scorecard'),
    SearchOption(title: 'Opt 18', id: '18', value: 'signature'),
    SearchOption(title: 'O 19', id: '19', value: 'tab bar'),
    SearchOption(title: 'Option Result 20', id: '20', value: 'task card'),
    SearchOption(title: 'Option Res 21', id: '21', value: 'team card'),
    SearchOption(title: 'Option 22', id: '22', value: 'timeline'),
    SearchOption(title: 'Opt 23', id: '23', value: 'toggle button'),
    SearchOption(title: 'O 24', id: '24', value: 'warning textfield na'),
    SearchOption(title: 'Op 25', id: '25', value: 'warning textfield'),
    SearchOption(title: 'Option Res 26', id: '26', value: 'skeleton loader'),
    SearchOption(title: 'Option Result 27', id: '27', value: 'sample charts'),
    SearchOption(title: 'Option R 28', id: '28', value: 'phone number input'),
    SearchOption(title: 'Opt 29', id: '29', value: 'navigation rail'),
    SearchOption(title: 'O 30', id: '30', value: 'multi dialog'),
    SearchOption(
        title: 'Tagged Choice',
        tags: ["Option 31", "Api 31", "Res 31"],
        value: 'tag'),
    SearchOption(title: 'Another tagged choice', tags: ["Option 32", "Api 32", "Money"], value: 'money'),
  ];

FmiSearchSingleSelect(
  fieldTitle: 'Enter Search Query',
  fieldTitleTextStyle: Theme.of(context).textTheme.titleMedium?
                      .copyWith(color: Theme.of(context).colorScheme.onSurface),
  hideElevation: true,
  useCircleShape: true,
  localSearchDomain: 'selfServiceHubDomain',
  apiSearches: apiSearches,
  searchSuggestions: searchSuggestions,
  onSelected: ((selectedOption) {
    // Recommended: Redirect based on selected option.
  }),
  onNoResultRedirect: () {
    // Recommended: Redirect to knowledge base.
  },
  
)

```
