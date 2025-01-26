import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

class EmployeeLookupDialogWidget extends StatefulWidget {
  const EmployeeLookupDialogWidget(
      {Key? key,
      required this.title,
      required this.onEmployeeSelected,
      this.endpointUrlRelativePath})
      : super(key: key);

  final String title;
  final Function(Employee? selectedEmployee) onEmployeeSelected;
  final String? endpointUrlRelativePath;

  @override
  State<EmployeeLookupDialogWidget> createState() =>
      _EmployeeLookupDialogWidgetState();
}

class _EmployeeLookupDialogWidgetState extends State<EmployeeLookupDialogWidget>
    with EmployeeLookupMixin {
  bool isBackButtonVisible = false;
  bool _isBusy = false;
  String searchTermDomain = Domains.employeeSearchDomain;

  List<SearchedTerm> _searchedTerms = [];
  List<SearchedTerm> _filteredSearchTerms = [];

  String _selectedSearchTerm = "";

  FloatingSearchBarController controller = FloatingSearchBarController();

  final EmployeeService _employeeService =
      GetIt.instance.get<EmployeeService>();
  final SearchedTermRepository _searchedTermRepository =
      GetIt.instance<SearchedTermRepository>();

  List<Employee> _regionalEmployees = [];
  List<Employee> _filteredEmployees = [];

  bool _isOnlineMode = false;

  @override
  void initState() {
    super.initState();
    _isOnlineMode = getOnlineStatus(
        endpointUrlRelativePath: widget.endpointUrlRelativePath);

    asyncInit();
  }

  void asyncInit() async {
    try {
      setState(() {
        _isBusy = true;
      });
      _searchedTerms = await _searchedTermRepository
          .getSearchedTermsByDomain(searchTermDomain);
      _filteredSearchTerms = filterSearchTerms(filter: null);
      if (!_isOnlineMode) {
        _regionalEmployees = await _employeeService.getEmployees();
      }
    } finally {
      setState(() {
        _isBusy = false;
      });
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  List<SearchedTerm> filterSearchTerms({required String? filter}) {
    List<SearchedTerm> filteredSearchTerms = [..._searchedTerms];

    if (filter != null && filter.isNotEmpty) {
      filteredSearchTerms = filteredSearchTerms
          .where((searchedTerm) => searchedTerm.term.startsWith(filter))
          .toList();
    }

    filteredSearchTerms.sort((a, b) {
      return b.timestamp.compareTo(a.timestamp);
    });

    return filteredSearchTerms;
  }

  Future addSearchTerm(String term) async {
    List<SearchedTerm> matchingSearchedTerms =
        _searchedTerms.where((element) => element.term == term).toList();

    if (matchingSearchedTerms.isNotEmpty) {
      SearchedTerm matchingSearchedTerm = matchingSearchedTerms[0];
      matchingSearchedTerm.timestamp = DateTime.now();
      await _searchedTermRepository.upsertSearchedTerm(matchingSearchedTerm);
    } else {
      SearchedTerm newSearchedTerm = SearchedTerm(
          term: term, timestamp: DateTime.now(), domain: searchTermDomain);

      await _searchedTermRepository.upsertSearchedTerm(newSearchedTerm);
    }

    await refreshSearchTerms();
  }

  Future deleteSearchTerm(SearchedTerm searchedTerm) async {
    await _searchedTermRepository.deleteSearchedTerm(searchedTerm);

    await refreshSearchTerms();
  }

  Future refreshSearchTerms() async {
    _searchedTerms = await _searchedTermRepository
        .getSearchedTermsByDomain(searchTermDomain);
    _filteredSearchTerms = filterSearchTerms(filter: controller.query);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ClosableAppBar(
          title: widget.title,
          onClose: () {
            Navigator.pop(context);
          },
        ),
        body: Theme(
          data: Theme.of(context).copyWith(
              inputDecorationTheme: Theme.of(context)
                  .inputDecorationTheme
                  .copyWith(filled: false)),
          child: FloatingSearchBar(
            automaticallyImplyBackButton: isBackButtonVisible,
            closeOnBackdropTap: true,
            onFocusChanged: (isFocused) {
              setState(() {
                isBackButtonVisible = isFocused;
              });
            },
            controller: controller,
            body: FloatingSearchBarScrollNotifier(
              child: _isBusy
                  ? const Center(child: CircularProgressIndicator())
                  : SingleSelectionEmployeeSearchResultsListWidget(
                      employeeResults: _filteredEmployees,
                      searchTerm: _selectedSearchTerm,
                      endpointUrlRelativePath: widget.endpointUrlRelativePath,
                      onEmployeeSelected: (selectedEmployee) {
                        widget.onEmployeeSelected(selectedEmployee);

                        Navigator.pop(context);
                      },
                    ),
            ),
            transition: CircularFloatingSearchBarTransition(),
            physics: const BouncingScrollPhysics(),
            clearQueryOnClose: false,
            hint: context.coreLocalize.searchTerm,
            actions: [
              FloatingSearchBarAction.searchToClear(size: FMIThemeBase.baseIcon20),
            ],
            backgroundColor: Theme.of(context).colorScheme.surface,
            onQueryChanged: (query) {
              setState(() {
                _filteredSearchTerms = filterSearchTerms(filter: query);
              });
            },
            onSubmitted: (query) async {
              await addSearchTerm(query);
              setState(() {
                _selectedSearchTerm = query;
                getEmployees(query);
              });
              controller.close();
            },
            builder: (context, transition) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium),
                child: Material(
                  color: Theme.of(context).colorScheme.surface,
                  elevation: FMIThemeBase.baseElevationDouble4,
                  child: Builder(
                    builder: (context) {
                      if (_filteredSearchTerms.isEmpty &&
                          controller.query.isEmpty) {
                        return Container(
                          height: FMIThemeBase.baseContainerDimension48,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            context.coreLocalize.searchStart,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        );
                      } else if (_filteredSearchTerms.isEmpty) {
                        return ListTile(
                          title: Text(
                            controller.query,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.apply(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface),
                          ),
                          leading: Icon(
                            FontAwesomeIcons.magnifyingGlass,
                            size: FMIThemeBase.baseIconSmall,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          onTap: () async {
                            await addSearchTerm(controller.query);

                            setState(() {
                              _selectedSearchTerm = controller.query;
                              getEmployees(_selectedSearchTerm);
                            });
                            controller.close();
                          },
                        );
                      } else {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: _filteredSearchTerms
                              .map(
                                (filteredSearchTerm) => ListTile(
                                  title: Text(
                                    filteredSearchTerm.term,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.apply(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSurface),
                                  ),
                                  leading: const Icon(
                                      FontAwesomeIcons.clockRotateLeft,
                                      size: FMIThemeBase.baseIcon20),
                                  trailing: IconButton(
                                    icon: const Icon(
                                      FontAwesomeIcons.xmark,
                                      size: FMIThemeBase.baseIcon20,
                                    ),
                                    onPressed: () async {
                                      await deleteSearchTerm(
                                          filteredSearchTerm);
                                      setState(() {});
                                    },
                                  ),
                                  onTap: () async {
                                    await addSearchTerm(
                                        filteredSearchTerm.term);

                                    setState(() {
                                      _selectedSearchTerm =
                                          filteredSearchTerm.term;
                                      controller.query = _selectedSearchTerm;
                                      getEmployees(_selectedSearchTerm);
                                    });
                                    controller.close();
                                  },
                                ),
                              )
                              .toList(),
                        );
                      }
                    },
                  ),
                ),
              );
            },
          ),
        ));
  }

  void getEmployees(String query) async {
    try {
      setState(() {
        _isBusy = true;
      });

      List<Employee> filteredEmployees =
          getFilteredEmployees(query, _regionalEmployees);

      setState(() {
        _filteredEmployees = filteredEmployees;
      });
    } finally {
      setState(() {
        _isBusy = false;
      });
    }
  }
}
