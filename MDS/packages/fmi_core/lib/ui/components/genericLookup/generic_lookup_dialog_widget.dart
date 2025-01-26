import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import 'package:stacked/stacked.dart';

class GenericLookupDialogWidget extends StatefulWidget {
  const GenericLookupDialogWidget({
    Key? key,
    required this.title,
    required this.lookupItems,
    required this.options,
    required this.dataSource,
    this.supportOnline = false,
    this.onItemSelected,
  }) : super(key: key);

  final String title;
  final Function(GenericTableItem? selectedItem)? onItemSelected;
  final PageSetGenericLookupModel? lookupItems;
  final GenericLookupDataOptions options;
  final bool supportOnline;
  final String dataSource;

  @override
  State<GenericLookupDialogWidget> createState() =>
      _GenericLookupDialogWidgetState();
}

class _GenericLookupDialogWidgetState extends State<GenericLookupDialogWidget> {
  bool isBackButtonVisible = false;
  String searchTermDomain = "";
  String _selectedSearchTerm = "";
  List<SearchedTerm> _searchedTerms = [];
  List<SearchedTerm> _filteredSearchTerms = [];
  FloatingSearchBarController controller = FloatingSearchBarController();

  final SearchedTermRepository _searchedTermRepository =
      GetIt.instance<SearchedTermRepository>();
  final GenericService _genericService = GetIt.instance.get<GenericService>();

  late ValueNotifier<List<GenericTableItems>> _filteredItemsNotifier;
  final int _page = 1;
  bool _isBusy = false;
  bool _hasInternet = false;
  PageSetGenericLookupModel _genericTableModel =
      PageSetGenericLookupModel(tableItems: [], more: false);
  List<GenericTableItems> filteredItems = [];

  @override
  void initState() {
    super.initState();
    searchTermDomain = widget.dataSource;
    _filteredItemsNotifier = ValueNotifier<List<GenericTableItems>>([]);

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
    } finally {
      setState(() {
        _isBusy = false;
      });
    }
  }

  @override
  void dispose() {
    _filteredItemsNotifier.dispose();
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
    return ViewModelBuilder<OfflineDetectableViewModel>.reactive(
        viewModelBuilder: () => OfflineDetectableViewModel(),
        onViewModelReady: (viewModel) => viewModel.initialize(),
        builder: (context, viewModel, child) {
          if (viewModel.hasInternet) {
            _hasInternet = true;
          } else {
            _hasInternet = false;
          }

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
                          : ValueListenableBuilder(
                              valueListenable: _filteredItemsNotifier,
                              builder: (context, filteredItems, child) {
                                return SingleSelectionItemSearchResultsListWidget(
                                  allItems: widget.lookupItems!.tableItems,
                                  filteredItems: filteredItems,
                                  searchTerm: _selectedSearchTerm,
                                  options: widget.options,
                                  dataSource: widget.dataSource,
                                  supportOnline: widget.supportOnline,
                                  onItemSelected: (selectedItem) {
                                    widget.onItemSelected!(selectedItem);
                                    Navigator.pop(context);
                                  },
                                );
                              })),
                  transition: CircularFloatingSearchBarTransition(),
                  physics: const BouncingScrollPhysics(),
                  clearQueryOnClose: false,
                  hint: context.coreLocalize.searchTerm,
                  actions: [
                    FloatingSearchBarAction.searchToClear(size: FMIThemeBase.baseIcon20),
                  ],
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  onQueryChanged: (query) async {
                    setState(() {
                      _filteredSearchTerms = filterSearchTerms(filter: query);
                    });
                  },
                  onSubmitted: (query) async {
                    await addSearchTerm(query);
                    setState(() {
                      _selectedSearchTerm = query;
                      getLookupItems(query);
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
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                                onTap: () async {
                                  await addSearchTerm(controller.query);
                                  setState(() {
                                    _selectedSearchTerm = controller.query;
                                    getLookupItems(controller.query);
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
                                            controller.query =
                                                _selectedSearchTerm;
                                            getLookupItems(controller.query);
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
        });
  }

  void getLookupItems(String searchQuery) async {
    try {
      setState(() {
        _isBusy = true;
      });

      List<String>? queries = widget.options.query;
      filteredItems = [];

      if (_hasInternet) {
        if (!widget.supportOnline) {
          if (widget.lookupItems != null) {
            for (var itemList in widget.lookupItems!.tableItems) {
              for (var item in itemList.columns) {
                if (queries != null) {
                  if (queries.contains(item.id) &&
                      item.value
                          .toLowerCase()
                          .contains(searchQuery.toLowerCase())) {
                    filteredItems.add(itemList);
                  }
                } else {
                  filteredItems = widget.lookupItems!.tableItems;
                }
              }
            }

            GenericLookupDataSource.page = 1;
            GenericLookupDataSource.total = filteredItems.length;
            GenericLookupDataSource.more =
                filteredItems.length > widget.options.queryPageSize!;
          }
        } else if (widget.supportOnline) {
          _genericTableModel = await _genericService.getDataSource(
              widget.dataSource,
              _selectedSearchTerm,
              _page,
              widget.options.queryPageSize);
          for (var items in _genericTableModel.tableItems) {
            filteredItems.add(items);
          }

          GenericLookupDataSource.page = 1;
          GenericLookupDataSource.total = _genericTableModel.total;
          GenericLookupDataSource.more = _genericTableModel.more;
        }
      } else {
        if (widget.lookupItems != null) {
          for (var itemList in widget.lookupItems!.tableItems) {
            for (var item in itemList.columns) {
              if (queries != null) {
                if (queries.contains(item.id) &&
                    item.value
                        .toLowerCase()
                        .contains(searchQuery.toLowerCase())) {
                  filteredItems.add(itemList);
                }
              } else {
                filteredItems = widget.lookupItems!.tableItems;
              }
            }
          }

          GenericLookupDataSource.page = 1;
          GenericLookupDataSource.total = filteredItems.length;
          GenericLookupDataSource.more =
              filteredItems.length > widget.options.queryPageSize!;
        }
      }

      setState(() {
        _filteredItemsNotifier.value =
            filteredItems.take(widget.options.queryPageSize!).toList();
      });
    } finally {
      setState(() {
        _isBusy = false;
      });
    }
  }
}
