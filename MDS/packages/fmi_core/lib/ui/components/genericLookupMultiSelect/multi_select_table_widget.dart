import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import 'package:stacked/stacked.dart';

class MultiSelectTableWidget extends StatefulWidget {
  const MultiSelectTableWidget({
    Key? key,
    this.initialSelectedItems,
    this.onChanged,
    this.searchDomain,
    this.lookupItems,
    required this.options,
    required this.dataSource,
    this.supportOnline = false,
  }) : super(key: key);

  final List<GenericTableItem>? initialSelectedItems;
  final Function(List<GenericTableItem>?)? onChanged;
  final String? searchDomain;
  final PageSetGenericLookupModel? lookupItems;
  final GenericLookupMultiSelectDataOptions options;
  final bool supportOnline;
  final String dataSource;

  @override
  State<MultiSelectTableWidget> createState() => _MultiSelectTableWidgetState();
}

class _MultiSelectTableWidgetState extends State<MultiSelectTableWidget> {
  List<GenericTableItem> selectedItems = [];
  List<GenericTableItem> filteredItemsExcludingSelectedItems = [];
  List<GenericTableItems> filteredItems = [];
  bool isBackButtonVisible = false;
  bool _isBusy = false;
  final int _page = 1;
  bool _hasInternet = false;
  String _selectedSearchTerm = "";
  String _searchTerm = "";

  bool includeSearchHistory = false;
  List<SearchedTerm> _searchedTerms = [];
  List<SearchedTerm> _filteredSearchTerms = [];

  FloatingSearchBarController controller = FloatingSearchBarController();

  final SearchedTermRepository _searchedTermRepository =
      GetIt.instance<SearchedTermRepository>();
  final GenericService _genericService = GetIt.instance.get<GenericService>();

  late ValueNotifier<List<GenericTableItems>> _filteredItemsNotifier;
  late GenericLookupDataOptions _mapOptions;
  PageSetGenericLookupModel _genericTableModel =
      PageSetGenericLookupModel(tableItems: [], more: false);

  @override
  void initState() {
    super.initState();

    if (widget.initialSelectedItems != null) {
      selectedItems = List.from(widget.initialSelectedItems!);
    }

    includeSearchHistory = widget.searchDomain != null;
    _filteredItemsNotifier = ValueNotifier<List<GenericTableItems>>([]);

    _mapOptions = GenericLookupDataOptions(
        display: widget.options.display,
        id: widget.options.id,
        value: widget.options.value,
        query: widget.options.query);

    asyncInit();
  }

  void asyncInit() async {
    try {
      setState(() {
        _isBusy = true;
      });
      if (includeSearchHistory) {
        _searchedTerms = await _searchedTermRepository
            .getSearchedTermsByDomain(widget.searchDomain!);
        _filteredSearchTerms = filterSearchTerms(filter: null);
      }
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
    if (includeSearchHistory == false) {
      return;
    }

    List<SearchedTerm> matchingSearchedTerms =
        _searchedTerms.where((element) => element.term == term).toList();

    if (matchingSearchedTerms.isNotEmpty) {
      SearchedTerm matchingSearchedTerm = matchingSearchedTerms[0];
      matchingSearchedTerm.timestamp = DateTime.now();
      await _searchedTermRepository.upsertSearchedTerm(matchingSearchedTerm);
    } else {
      SearchedTerm newSearchedTerm = SearchedTerm(
          term: term, timestamp: DateTime.now(), domain: widget.searchDomain!);

      await _searchedTermRepository.upsertSearchedTerm(newSearchedTerm);
    }

    await refreshSearchTerms();
  }

  Future deleteSearchTerm(SearchedTerm searchedTerm) async {
    if (includeSearchHistory == false) {
      return;
    }

    await _searchedTermRepository.deleteSearchedTerm(searchedTerm);

    await refreshSearchTerms();
  }

  Future refreshSearchTerms() async {
    if (includeSearchHistory == false) {
      return;
    }

    _searchedTerms = await _searchedTermRepository
        .getSearchedTermsByDomain(widget.searchDomain!);
    _filteredSearchTerms = filterSearchTerms(filter: controller.query);
  }

  @override
  Widget build(BuildContext context) {
    int getFlexValue() {
      if (context.isXSmall || context.isSmall) {
        if (selectedItems.length < 2) {
          return 5;
        } else if (selectedItems.length < 4) {
          return 4;
        } else if (selectedItems.length < 6) {
          return 3;
        } else if (selectedItems.length < 8) {
          return 2;
        } else {
          return 1;
        }
      } else if (context.isMedium) {
        if (selectedItems.length < 3) {
          return 5;
        } else if (selectedItems.length < 6) {
          return 4;
        } else if (selectedItems.length < 9) {
          return 3;
        } else if (selectedItems.length < 12) {
          return 2;
        } else {
          return 1;
        }
      } else {
        if (selectedItems.length < 5) {
          return 5;
        } else if (selectedItems.length < 10) {
          return 4;
        } else if (selectedItems.length < 15) {
          return 3;
        } else if (selectedItems.length < 20) {
          return 2;
        } else {
          return 1;
        }
      }
    }

    double maxHeight = (MediaQuery.of(context).size.height * 0.8);

    return ViewModelBuilder<OfflineDetectableViewModel>.reactive(
        viewModelBuilder: () => OfflineDetectableViewModel(),
        onViewModelReady: (viewModel) => viewModel.initialize(),
        builder: (context, viewModel, child) {
          if (viewModel.hasInternet) {
            _hasInternet = true;
          } else {
            _hasInternet = false;
          }

          return Theme(
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
                body: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: maxHeight,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (selectedItems.isNotEmpty)
                          const SizedBox(height: 60),
                        Flexible(
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(
                                    FMIThemeBase.baseGapMedium),
                                child: Wrap(
                                  alignment: WrapAlignment.start,
                                  spacing: FMIThemeBase.baseGapMedium,
                                  children: [
                                    for (var selectedItem in selectedItems)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: FMIThemeBase.baseGapMedium),
                                        child: InputChip(
                                          label: Padding(
                                            padding: const EdgeInsets.all(
                                                FMIThemeBase.basePaddingSmall),
                                            child: Text(
                                              selectedItem.value,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          avatar: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              FmiAvatar(
                                                displayName: selectedItem.value,
                                                avatarSize:
                                                    FmiAvatarSize.medium,
                                              ),
                                            ],
                                          ),
                                          onDeleted: () {
                                            setState(() {
                                              selectedItems
                                                  .remove(selectedItem);
                                              if (widget.onChanged != null) {
                                                widget
                                                    .onChanged!(selectedItems);
                                              }
                                            });
                                            search(_selectedSearchTerm);
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: getFlexValue(),
                          child: _isBusy
                              ? const Center(child: CircularProgressIndicator())
                              : ValueListenableBuilder(
                                  valueListenable: _filteredItemsNotifier,
                                  builder: (context, filteredItems, child) {
                                    return SingleSelectionItemSearchResultsListWidget(
                                      allItems: widget.lookupItems!.tableItems,
                                      filteredItems: filteredItems,
                                      searchTerm: _selectedSearchTerm,
                                      options: _mapOptions,
                                      dataSource: widget.dataSource,
                                      supportOnline: widget.supportOnline,
                                      onItemSelected: (result) {
                                        setState(() {
                                          selectedItems.add(result);
                                        });
                                        widget.onChanged!(selectedItems);
                                        search(_selectedSearchTerm);
                                      },
                                      useTopPadding: (selectedItems.isNotEmpty
                                          ? true
                                          : false),
                                    );
                                  }),
                        ),
                      ],
                    ),
                  ),
                ),
                transition: CircularFloatingSearchBarTransition(),
                physics: const BouncingScrollPhysics(),
                clearQueryOnClose: false,
                hint: context.coreLocalize.searchTerm,
                actions: [
                  FloatingSearchBarAction.searchToClear(
                      size: FMIThemeBase.baseIcon20),
                ],
                backgroundColor: Theme.of(context).colorScheme.surface,
                onQueryChanged: (query) {
                  if (includeSearchHistory) {
                    setState(() {
                      _filteredSearchTerms = filterSearchTerms(filter: query);
                    });
                  }
                },
                onSubmitted: (query) async {
                  if (includeSearchHistory) {
                    await addSearchTerm(query);
                  }

                  setState(() {
                    _selectedSearchTerm = query;
                    search(query);
                  });
                  controller.close();
                },
                builder: (context, transition) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(
                        FMIThemeBase.baseBorderRadiusMedium),
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
                                if (includeSearchHistory) {
                                  await addSearchTerm(controller.query);
                                }

                                setState(() {
                                  _selectedSearchTerm = controller.query;
                                  search(_selectedSearchTerm);
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
                                          search(_selectedSearchTerm);
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
                }),
          );
        });
  }

  void search(String searchQuery) async {
    try {
      setState(() {
        _isBusy = true;
      });

      List<String>? queries = widget.options.query;
      filteredItems = [];

      if (_hasInternet) {
        if (!widget.supportOnline) {
          if (widget.lookupItems != null) {
            var genericLookupData =
                filterLookupItems(widget.lookupItems!.tableItems);
            for (var itemList in genericLookupData) {
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
          if (_searchTerm != _selectedSearchTerm) {
            _searchTerm = _selectedSearchTerm;
            _genericTableModel = await _genericService.getDataSource(
                widget.dataSource,
                _selectedSearchTerm,
                _page,
                widget.options.queryPageSize,
                queryParameter: widget.options.queryParameter);
          }

          var genericLookupData =
              filterLookupItems(_genericTableModel.tableItems);

          for (var items in genericLookupData) {
            filteredItems.add(items);
          }

          GenericLookupDataSource.page = 1;
          GenericLookupDataSource.total = _genericTableModel.total;
          GenericLookupDataSource.more = _genericTableModel.more;
        }
      } else {
        if (widget.lookupItems != null) {
          var genericLookupData =
              filterLookupItems(widget.lookupItems!.tableItems);
          for (var itemList in genericLookupData) {
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
        _filteredItemsNotifier.value = filteredItems
            .take(widget.options.queryPageSize!)
            .cast<GenericTableItems>()
            .toList();
      });
    } finally {
      setState(() {
        _isBusy = false;
      });
    }
  }

  List<GenericTableItems> filterLookupItems(List<GenericTableItems> items) {
    return items
        .where((filteredItem) => !selectedItems.any((selectedItem) =>
            filteredItem.columns
                .any((column) => column.value == selectedItem.id)))
        .toList();
  }
}
