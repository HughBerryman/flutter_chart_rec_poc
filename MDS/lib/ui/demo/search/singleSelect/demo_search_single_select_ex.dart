import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:poc/models/app_state_manager.dart';

class DemoSearchSingleSelectEx extends StatefulWidget {
  const DemoSearchSingleSelectEx({super.key});

  @override
  State<DemoSearchSingleSelectEx> createState() =>
      _DemoSearchSingleSelectExState();
}

class _DemoSearchSingleSelectExState extends State<DemoSearchSingleSelectEx> {
  final AppStateManager appStateManager = GetIt.instance.get<AppStateManager>();

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
    SearchOption(title: 'Api 1', value: 'animation'),
    SearchOption(title: 'Ap 2', value: 'dashboard cards'),
    SearchOption(title: 'Api Result 3', value: 'app bar top'),
    SearchOption(title: 'A 4', value: 'avatar'),
    SearchOption(title: 'Api R 5', value: 'badges'),
    SearchOption(title: 'A 6', value: 'bottom navigation bar'),
    SearchOption(title: 'Api 7', value: 'buttons'),
    SearchOption(title: 'Ap 8', value: 'cards'),
    SearchOption(title: 'Api Result 9', value: 'closeable app bar'),
    SearchOption(title: 'A 10', value: 'conditional question'),
    SearchOption(title: 'Option 11', value: 'multi select'),
    SearchOption(title: 'Opt 12', value: 'people card'),
    SearchOption(title: 'O 13', value: 'photo attachment'),
    SearchOption(title: 'Option Result 14', value: 'radio'),
    SearchOption(title: 'Option Res 15', value: 'sample layout'),
    SearchOption(title: 'Opt Res 16', value: 'scaffold'),
    SearchOption(title: 'Option 17', value: 'scorecard'),
    SearchOption(title: 'Opt 18', value: 'signature'),
    SearchOption(title: 'O 19', value: 'tab bar'),
    SearchOption(title: 'Option Result 20', value: 'task card'),
    SearchOption(title: 'Option Res 21', value: 'team card'),
    SearchOption(title: 'Option 22', value: 'timeline'),
    SearchOption(title: 'Opt 23', value: 'toggle button'),
    SearchOption(title: 'O 24', value: 'warning textfield na'),
    SearchOption(title: 'Op 25', value: 'warning textfield'),
    SearchOption(title: 'Option Res 26', value: 'skeleton loader'),
    SearchOption(title: 'Option Result 27', value: 'sample charts'),
    SearchOption(title: 'Option R 28', value: 'phone number input'),
    SearchOption(title: 'Opt 29', value: 'navigation rail'),
    SearchOption(title: 'O 30', value: 'multi dialog'),
    SearchOption(
        title: 'Tagged Choice',
        tags: ["Option 31", "Api 31", "Res 31"],
        value: 'tag'),
    SearchOption(
        title: 'Another tagged choice',
        tags: ["Option 32", "Api 32", "Money"],
        value: 'money'),
    SearchOption(title: 'Option Result 33', value: 'breakpoints'),
    SearchOption(title: 'Option Res 34', value: 'data grid'),
    SearchOption(title: 'Opt Res 35', value: 'data table'),
    SearchOption(title: 'Option 36', value: 'mine'),
    SearchOption(title: 'Opt 37', value: 'material'),
    SearchOption(title: 'O 38', value: 'chip'),
    SearchOption(title: 'Option Result 39', value: 'selectable text'),
    SearchOption(title: 'Option Res 40', value: 'select'),
    SearchOption(title: 'Option 41', value: 'dropdown button'),
    SearchOption(title: 'Opt 42', value: 'fab'),
    SearchOption(title: 'O 43', value: 'expansion panel'),
    SearchOption(title: 'Op 44', value: 'listtile'),
    SearchOption(title: 'Option Res 45', value: 'progress indicator'),
    SearchOption(title: 'Option Result 46', value: 'lazy loading'),
    SearchOption(title: 'Option R 47', value: 'pie chart'),
    SearchOption(title: 'Opt 48', value: 'icon button'),
    SearchOption(title: 'O 49', value: 'bottom sheet'),
  ];

  bool toggleElevation = false;
  bool toggleCircleShape = false;
  bool toggleIsCondensed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(FMIThemeBase.baseContainerDimension72),
          child: FmiAppBarTop(
            title: 'Title',
            iconItems: [
              AppBarTopComponent(
                  label: const Text('Escape Demo'),
                  component: FilledButton(
                      child: const Text('Click to Escape Demo'),
                      onPressed: () {
                        Navigator.pop(context);
                      }))
            ],
          )),
      body: Container(
        color: Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceAltSurface,
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
                  child: FmiSearchSingleSelect(
                    fieldTitle: 'Enter Search Query',
                    fieldTitleTextStyle: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface),
                    hideElevation: toggleElevation,
                    useCircleShape: toggleCircleShape,
                    isCondensed: toggleIsCondensed,
                    localSearchDomain: 'ewsSelfServiceHubDomain',
                    apiSearches: apiSearches,
                    searchSuggestions: searchSuggestions,
                    onSelected: ((selectedOption) {
                      // Recommended: Redirect based on selected option.
                      Navigator.pop(context);
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            content: Text('Option was selected.'),
                          );
                        },
                      );
                    }),
                    onNoResultRedirect: () {
                      // Recommended: Redirect to knowledge base.
                      Navigator.pop(context);
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            content: Text('No result redirect was selected.'),
                          );
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(FMIThemeBase.basePadding4),
                  child: FilledButton(
                      style: (!toggleElevation)
                          ? ButtonStyleHelper.getSecondaryFilledButtonStyle(
                              context)
                          : null,
                      onPressed: () => setState(() {
                            toggleElevation = !toggleElevation;
                          }),
                      child: const Text('Toggle Elevation')),
                ),
                Padding(
                  padding: const EdgeInsets.all(FMIThemeBase.basePadding4),
                  child: FilledButton(
                      style: (toggleCircleShape)
                          ? ButtonStyleHelper.getSecondaryFilledButtonStyle(
                              context)
                          : null,
                      onPressed: () => setState(() {
                            toggleCircleShape = !toggleCircleShape;
                          }),
                      child: const Text('Toggle Circle Shape')),
                ),
                Padding(
                  padding: const EdgeInsets.all(FMIThemeBase.basePadding4),
                  child: FilledButton(
                      style: (toggleIsCondensed)
                          ? ButtonStyleHelper.getSecondaryFilledButtonStyle(
                              context)
                          : null,
                      onPressed: () => setState(() {
                            toggleIsCondensed = !toggleIsCondensed;
                          }),
                      child: const Text('Toggle Is Condensed')),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
