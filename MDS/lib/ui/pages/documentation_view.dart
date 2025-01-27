import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:poc/enums/demos_helper.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:poc/models/navigation/models.dart';
import 'package:poc/ui/components/components.dart';
import 'package:poc/ui/viewModels/models.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stacked/stacked.dart';

class DocumentationView extends StatefulWidget {
  const DocumentationView({Key? key}) : super(key: key);

  static MaterialPage page() {
    return const MaterialPage(child: DocumentationView());
  }

  @override
  State<DocumentationView> createState() => _DocumentationViewState();
}

class _DocumentationViewState extends State<DocumentationView>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late ItemScrollController itemScrollController;
  late ItemPositionsListener itemPositionsListener;
  int _tabIndex = 0;
  int _indexSelected = 0;
  AppStateManager appStateManager = GetIt.instance.get<AppStateManager>();
  @override
  void initState() {
    itemScrollController = ItemScrollController();
    itemPositionsListener = ItemPositionsListener.create();
    itemPositionsListener.itemPositions.addListener(() {
      setState(() {
        if (itemPositionsListener.itemPositions.value.isNotEmpty) {
          _indexSelected = itemPositionsListener.itemPositions.value
              .where((element) => element.itemTrailingEdge > 0)
              .first
              .index;
        }
      });
    });
    appStateManager.addListener(() {
      if (itemScrollController.isAttached) {
        itemScrollController.jumpTo(index: 0);
      }
    });
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          _tabIndex = _tabController.index;
        });
        if (itemScrollController.isAttached) {
          itemScrollController.jumpTo(index: 0);
        }
      }
    });
    _indexSelected = 0;
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    itemPositionsListener.itemPositions.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: ViewModelBuilder<SelectedPageViewModel>.reactive(
        viewModelBuilder: () => SelectedPageViewModel(),
        onViewModelReady: (viewModel) => viewModel.initialize(),
        builder: (context, viewModel, child) => viewModel.selectedPage != null
            ? Scaffold(
                body: Scaffold(
                body: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: context.outerGutter),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      viewModel.selectedPage?.hasOOB == true
                          ? Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: FMIThemeBase.basePadding4),
                                    height:
                                        FMIThemeBase.baseContainerDimension70,
                                    child: FmiTabBar(
                                        forceElevated: true,
                                        // displayScrollBehavior:
                                        //     ScrollConfiguration.of(context)
                                        //         .copyWith(scrollbars: false),
                                        tabController: _tabController,
                                        tabs: const [
                                          Tab(text: 'OOB'),
                                          Tab(text: 'Fmi Core')
                                        ],
                                        tabBarViews: [
                                          Container(),
                                          Container(),
                                        ]),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: getTabContent(
                                                context, viewModel)),
                                        const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    FMIThemeBase.basePadding4)),
                                        getTopicList(viewModel, context)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Expanded(
                              child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child:
                                        getDefaultContent(context, viewModel)),
                                const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: FMIThemeBase.basePadding4)),
                                getTopicList(viewModel, context)
                              ],
                            )),
                    ],
                  ),
                ),
              ))
            : Container(),
      ),
    );
  }

  ScrollablePositionedList getDefaultContent(
      BuildContext context, SelectedPageViewModel viewModel) {
    return ScrollablePositionedList.builder(
        padding: const EdgeInsets.symmetric(
          vertical: FMIThemeBase.basePaddingXxLarge,
        ),
        itemPositionsListener: itemPositionsListener,
        itemScrollController: itemScrollController,
        shrinkWrap: true,
        itemCount: viewModel.selectedPage?.codeContents?.length ?? 0,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: FMIThemeBase.basePadding6),
            child: Column(
              children: [
                (index == 0)
                    ? Align(
                        alignment: Alignment.centerLeft,
                        child: Text(viewModel.selectedPage!.name.toTitleCase(),
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface)),
                      )
                    : Container(),
                (index < viewModel.selectedPage!.designContents!.length)
                    ? Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: FMIThemeBase.basePadding4),
                          child: getDemo(viewModel
                              .selectedPage!.designContents?[index].component),
                        ),
                      )
                    : Container(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: FMIThemeBase.basePadding10),
                    child: getDemo(
                        viewModel.selectedPage!.codeContents?[index].component),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: viewModel.selectedPage?.designContents != null &&
                          index < viewModel.selectedPage!.designContents!.length
                      ? MarkdownDisplayWidget(
                          file: viewModel
                              .selectedPage!.designContents![index].content)
                      : Container(),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: viewModel.selectedPage?.codeContents != null
                      ? MarkdownDisplayWidget(
                          file: viewModel
                              .selectedPage!.codeContents![index].content)
                      : Container(),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding2),
                ),
              ],
            ),
          );
        }));
  }

  ScrollablePositionedList getTabContent(
      BuildContext context, SelectedPageViewModel viewModel) {
    int itemCount = 0;
    if (_tabIndex == 0) {
      itemCount = viewModel.selectedPage?.oobCodeContents?.length ?? 0;
    } else {
      itemCount = viewModel.selectedPage?.codeContents?.length ?? 0;
    }

    return ScrollablePositionedList.builder(
      padding:
          const EdgeInsets.symmetric(vertical: FMIThemeBase.basePaddingXxLarge),
      itemPositionsListener: itemPositionsListener,
      itemScrollController: itemScrollController,
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: FMIThemeBase.basePadding6),
          child: Column(
            children: [
              (index == 0)
                  ? Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding10),
                        child: Text(viewModel.selectedPage!.name.toTitleCase(),
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface)),
                      ),
                    )
                  : Container(),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: FMIThemeBase.basePadding10),
                  child: (_tabIndex == 1)
                      ? getDemo(viewModel
                          .selectedPage!.codeContents?[index].component)
                      : getDemo(viewModel
                          .selectedPage!.oobCodeContents?[index].component),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: (_tabIndex == 1)
                    ? viewModel.selectedPage?.designContents != null &&
                            index <
                                viewModel.selectedPage!.designContents!.length
                        ? MarkdownDisplayWidget(
                            file: viewModel
                                .selectedPage!.designContents![index].content)
                        : Container()
                    : (viewModel.selectedPage?.oobDesignContents != null &&
                            index <
                                viewModel
                                    .selectedPage!.oobDesignContents!.length)
                        ? MarkdownDisplayWidget(
                            file: viewModel.selectedPage!
                                .oobDesignContents![index].content)
                        : Container(),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: (_tabIndex == 1)
                    ? viewModel.selectedPage?.codeContents != null
                        ? MarkdownDisplayWidget(
                            file: viewModel
                                .selectedPage!.codeContents![index].content)
                        : Container()
                    : viewModel.selectedPage?.oobCodeContents != null
                        ? MarkdownDisplayWidget(
                            file: viewModel
                                .selectedPage!.oobCodeContents![index].content)
                        : Container(),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    top: FMIThemeBase.basePaddingXLarge,
                    bottom: FMIThemeBase.basePaddingXLarge),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget getTopicList(SelectedPageViewModel viewModel, BuildContext context) {
    List<ContentSourceModel> codeContents = [];
    if (viewModel.selectedPage!.hasOOB == true && _tabIndex == 0) {
      codeContents = viewModel.selectedPage!.oobCodeContents!;
    } else {
      codeContents = viewModel.selectedPage!.codeContents!;
    }

    if (codeContents.length <= 1) {
      return Container();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding2),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePaddingXLarge,
                  left: FMIThemeBase.basePadding6,
                  bottom: FMIThemeBase.basePadding7),
              child: Text('Topics',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary)),
            ),
            SizedBox(
              width: FMIThemeBase.baseContainerDimension200,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: codeContents.length,
                  itemBuilder: (context, index) {
                    String componentName =
                        codeContents[index].componentName ?? '';
                    return InkWell(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(
                              FMIThemeBase.baseBorderRadiusLarge),
                          bottomLeft: Radius.circular(
                              FMIThemeBase.baseBorderRadiusLarge)),
                      onTap: () {
                        if (itemScrollController.isAttached) {
                          itemScrollController.scrollTo(
                            index: index,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInCubic,
                          );
                        }
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(
                                    FMIThemeBase.baseBorderRadiusXLarge),
                                bottomLeft: Radius.circular(
                                    FMIThemeBase.baseBorderRadiusXLarge)),
                            color: _indexSelected == index
                                ? Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer
                                : Theme.of(context).colorScheme.surface),
                        height: FMIThemeBase.baseContainerDimension50,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: FMIThemeBase.basePadding4),
                          child: Text(
                            componentName,
                            style: Theme.of(context).textTheme.labelLarge,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
