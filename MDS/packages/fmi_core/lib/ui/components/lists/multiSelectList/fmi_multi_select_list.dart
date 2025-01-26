import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

class FmiMultiSelectList<T> extends StatefulWidget {
  const FmiMultiSelectList(
      {Key? key,
      required this.searchTerm,
      this.initialSelectedItems,
      this.onSelectedItemsChanged,
      this.listItemIcon,
      this.searchDomain,
      this.showAll = true,
      this.onLoadMore})
      : super(key: key);

  final Future<List<SearchItem<T>>> Function(String term) searchTerm;
  final List<SearchItem<T>>? initialSelectedItems;
  final Function(List<T>)? onSelectedItemsChanged;
  final IconData? listItemIcon;
  final String? searchDomain;
  final bool showAll;
  final Function()? onLoadMore;

  @override
  State<FmiMultiSelectList<T>> createState() => _FmiMultiSelectListState<T>();
}

class _FmiMultiSelectListState<T> extends State<FmiMultiSelectList<T>> {
  List<SearchItem<T>> selectedItems = [];
  List<SearchItem<T>> filteredItemsExcludingSelectedItems = [];
  List<SearchItem<T>> filteredItems = [];
  bool isBackButtonVisible = false;
  bool _isBusy = false;
  String _selectedSearchTerm = "";
  String _selectedOldSearchTerm = "";

  bool includeSearchHistory = false;
  List<SearchedTerm> _searchedTerms = [];
  List<SearchedTerm> _filteredSearchTerms = [];

  FloatingSearchBarController controller = FloatingSearchBarController();

  final SearchedTermRepository _searchedTermRepository =
      GetIt.instance<SearchedTermRepository>();

  @override
  void initState() {
    super.initState();

    if (widget.initialSelectedItems != null) {
      selectedItems = List.from(widget.initialSelectedItems!);
    }

    includeSearchHistory = widget.searchDomain != null;

    asyncInit();
  }

  void asyncInit() async {
    try {
      setState(() {
        _isBusy = true;
      });
      if (widget.showAll) {
        await showAll();
      }
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

  Future showAll() async {
    List<SearchItem<T>> results = await widget.searchTerm("");
    setState(() {
      setData(results);
    });
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

    return Theme(
      data: Theme.of(context).copyWith(
          inputDecorationTheme:
              Theme.of(context).inputDecorationTheme.copyWith(filled: false)),
      child: FloatingSearchBar(
          automaticallyImplyBackButton: isBackButtonVisible,
          closeOnBackdropTap: true,
          onFocusChanged: (isFocused) {
            setState(() {
              isBackButtonVisible = isFocused;
            });
          },
          controller: controller,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              if (selectedItems.isNotEmpty)
                Column(children: [
                  ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.baseGapMedium),
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
                                      selectedItem.displayText,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  avatar: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FmiAvatar(
                                        url: selectedItem.avatarUrl,
                                        displayName: selectedItem.displayText,
                                        avatarSize: FmiAvatarSize.medium,
                                      ),
                                    ],
                                  ),
                                  onDeleted: () {
                                    setState(() {
                                      selectedItems.remove(selectedItem);
                                      if (widget.onSelectedItemsChanged !=
                                          null) {
                                        widget.onSelectedItemsChanged!(
                                            selectedItems
                                                .map((selectedItem) =>
                                                    selectedItem.item)
                                                .toList());
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
                ]),
              Expanded(
                flex: getFlexValue(),
                child: SearchResultsListWidget<T>(
                    listItemIcon:
                        widget.listItemIcon ?? FontAwesomeIcons.solidUser,
                    isBusy: _isBusy,
                    searchTerm: _selectedSearchTerm,
                    searchResults: filteredItemsExcludingSelectedItems,
                    onLoadMore: widget.onLoadMore != null
                        ? () {
                            widget.onLoadMore!();
                            search(_selectedSearchTerm);
                          }
                        : null,
                    onResultSelected: (selectedResult) {
                      setState(() {
                        selectedItems.add(selectedResult);
                        if (widget.onSelectedItemsChanged != null) {
                          widget.onSelectedItemsChanged!(selectedItems
                              .map((selectedItem) => selectedItem.item)
                              .toList());
                        }
                      });
                      search(_selectedSearchTerm);
                    }),
              ),
            ],
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
            if (query.isEmpty && widget.showAll) {
              showAll();
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
              borderRadius:
                  BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium),
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
                          style: Theme.of(context).textTheme.titleMedium?.apply(
                              color: Theme.of(context).colorScheme.onSurface),
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
                                    await deleteSearchTerm(filteredSearchTerm);
                                    setState(() {});
                                  },
                                ),
                                onTap: () async {
                                  await addSearchTerm(filteredSearchTerm.term);

                                  setState(() {
                                    _selectedSearchTerm =
                                        filteredSearchTerm.term;
                                    controller.query = _selectedSearchTerm;
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
  }

  void search(String query) async {
    try {
      setState(() {
        _isBusy = true;
        if (_selectedOldSearchTerm != _selectedSearchTerm) {
          _selectedOldSearchTerm = _selectedSearchTerm;
          setData([]);
        }
      });

      List<SearchItem<T>> results = await widget.searchTerm(query);
      setState(() {
        setData(results);
      });
    } finally {
      setState(() {
        _isBusy = false;
      });
    }
  }

  void setData(List<SearchItem<T>> data) {
    filteredItems = data;
    filteredItemsExcludingSelectedItems = data
        .where((filteredItem) => !selectedItems.any(
            (selectedItem) => selectedItem.itemKey == filteredItem.itemKey))
        .toList();
  }
}
