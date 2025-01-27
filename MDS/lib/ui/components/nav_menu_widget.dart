import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:poc/enums/enums.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:poc/models/models.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NavMenuWidget extends StatefulWidget {
  final List<CategorySourceModel> categories;
  final Function onPageTapped;
  const NavMenuWidget(
      {Key? key, required this.categories, required this.onPageTapped})
      : super(key: key);

  @override
  State<NavMenuWidget> createState() => _NavMenuWidgetState();
}

class _NavMenuWidgetState extends State<NavMenuWidget> {
  AppStateManager appStateManager = GetIt.instance.get<AppStateManager>();
  late ItemScrollController itemScrollController;
  late ItemPositionsListener itemPositionsListener;
  ScrollController scrollController = ScrollController();
  CategorySourceModel? selectedCategory;
  PageSourceModel? selectedPage;
  int selectedPageIndex = 0;
  late int selectedCategoryIndex;
  bool isSelectedFromClick = false;
  List<dynamic> tiles = [];

  @override
  void initState() {
    for (int i = 0; i < widget.categories.length; i++) {
      tiles.add(widget.categories[i]);
      for (int j = 0; j < widget.categories[i].pages.length; j++) {
        tiles.add(widget.categories[i].pages[j]);
      }
    }
    itemScrollController = ItemScrollController();
    itemPositionsListener = ItemPositionsListener.create();
    selectedPage = appStateManager.selectedPage;
    if (selectedPage != null) {
      WidgetsBinding.instance
          .addPostFrameCallback((_) => scrollToPage(selectedPage));
    }
    appStateManager.addListener(() {
      setState(() {
        selectedPage = appStateManager.selectedPage!;
        selectedPageIndex = getSelectedIndex(selectedPage!);
      });

      if (selectedPageIndex - 2 >= 0) {
        selectedPageIndex -= 2;
      } else if (selectedPageIndex == 1) {
        selectedPageIndex = 0;
      }

      if (itemScrollController.isAttached && isSelectedFromClick == false) {
        itemScrollController.scrollTo(
            index: selectedPageIndex,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInCubic);
      }
      isSelectedFromClick = false;
    });

    super.initState();
  }

  scrollToPage(PageSourceModel? page) {
    selectedPageIndex = getSelectedIndex(page!);
    double alignment = 0.3;
    if (itemScrollController.isAttached) {
      if (selectedPageIndex < 5) {
        alignment = 1;
      }
      itemScrollController.scrollTo(
          index: selectedPageIndex,
          alignment: alignment,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInCubic);
    }
  }

  Color getCurrentNavMenuHighlight(PageSourceModel page) {
    if (page == appStateManager.selectedPage) {
      return Theme.of(context).colorScheme.surface;
    } else {
      return Theme.of(context)
          .colorScheme
          .fmiBaseThemeAltSurfaceInverseAltSurface;
    }
  }

  int getSelectedIndex(PageSourceModel page) {
    for (int i = 0; i < tiles.length; i++) {
      if (tiles[i] is PageSourceModel) {
        if (tiles[i] == page) {
          return i;
        }
      }
    }
    return -1;
  }

  Widget getTile(dynamic source) {
    if (source is CategorySourceModel) {
      return Container(
        padding: const EdgeInsets.only(top: FMIThemeBase.basePaddingXxLarge),
        color: Theme.of(context)
            .colorScheme
            .fmiBaseThemeAltSurfaceInverseAltSurface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePadding4,
                  bottom: FMIThemeBase.basePadding4,
                  left: FMIThemeBase.basePadding8),
              child: Text(
                source.name,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.only(right: FMIThemeBase.basePadding12),
        color: Theme.of(context)
            .colorScheme
            .fmiBaseThemeAltSurfaceInverseAltSurface,
        child: InkWell(
          borderRadius:
              BorderRadius.circular(FMIThemeBase.baseBorderRadiusXLarge),
          onTap: () {
            isSelectedFromClick = true;
            widget.onPageTapped(source);
          },
          child: Container(
            alignment: Alignment.centerLeft,
            height: FMIThemeBase.baseContainerDimension48,
            decoration: BoxDecoration(
                color: getCurrentNavMenuHighlight(source as PageSourceModel),
                borderRadius: const BorderRadius.only(
                    topRight:
                        Radius.circular(FMIThemeBase.baseBorderRadiusRound),
                    bottomRight:
                        Radius.circular(FMIThemeBase.baseBorderRadiusRound))),
            child: Padding(
              padding: const EdgeInsets.only(left: FMIThemeBase.basePadding8),
              child: Text(
                source.name,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    List<SearchOption> searchSuggestions = [];
    searchSuggestions = widget.categories
        .expand((category) => category.pages)
        .map((page) =>
            SearchOption(title: page.name, value: page, id: page.category))
        .toList();

    Set<String> titleSet = {};
    for (SearchOption searchOption in searchSuggestions) {
      String append = '';
      if (titleSet.contains(searchOption.title)) {
        var option = searchSuggestions
            .firstWhere((element) => element.title == searchOption.title);

        if (searchOption.id == CategoryTag.changelog) {
          append = '- Components';
          option.title = '${option.title} - Demos';
        } else {
          append = '- Demos';
          option.title = '${option.title} - Components';
        }
        searchOption.title = '${searchOption.title} $append';
      } else {
        titleSet.add(searchOption.title);
      }
    }

    return Container(
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            child: ScrollablePositionedList.builder(
                padding: EdgeInsets.zero,
                itemPositionsListener: itemPositionsListener,
                itemScrollController: itemScrollController,
                shrinkWrap: true,
                itemCount: tiles.length,
                itemBuilder: ((context, index) {
                  if (index == 0) {
                    return Container(
                      color: Theme.of(context)
                          .colorScheme
                          .fmiBaseThemeAltSurfaceInverseAltSurface,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: FMIThemeBase.basePadding8,
                                right: FMIThemeBase.basePadding8,
                                bottom: FMIThemeBase.basePadding6,
                                top: FMIThemeBase.basePadding12),
                            child: SvgPicture.asset(
                              'assets/images/MDS-Logo.svg',
                              width: FMIThemeBase.baseContainerDimension275,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: FMIThemeBase.basePadding8,
                                bottom: FMIThemeBase.basePadding12),
                            child: Text(
                              'Mineral Design System',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .fmiBaseThemeAltSurfaceInverseOnAltSurface),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: FMIThemeBase.basePadding8,
                                right: FMIThemeBase.basePadding8,
                                top: FMIThemeBase.basePadding5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    FMIThemeBase.baseBorderRadiusRound)),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  bottom: FMIThemeBase.basePadding4),
                              color: Theme.of(context)
                                  .colorScheme
                                  .fmiBaseThemeAltSurfaceInverseAltSurface,
                              child: FmiSearchSingleSelect(
                                  useCircleShape: true,
                                  hideElevation: true,
                                  noResultText: 'for Changelog',
                                  localSearchDomain: '',
                                  fieldTitle: 'Search MDS',
                                  onSelected: ((selectedOption) {
                                    widget.onPageTapped(selectedOption.value!);
                                  }),
                                  searchSuggestions: searchSuggestions,
                                  onNoResultRedirect: () => widget.onPageTapped(
                                      widget.categories.first.pages.first)),
                            ),
                          ),
                          getTile(tiles[index])
                        ],
                      ),
                    );
                  }
                  return getTile(tiles[index]);
                })),
          ),
        ],
      ),
    );
  }
}
