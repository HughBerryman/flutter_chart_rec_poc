import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/enums/enums.dart';
import 'package:poc/routing/app_link_location_keys.dart';
import 'package:poc/ui/components/components.dart';
import 'package:poc/ui/viewModels/models.dart';
import 'package:stacked/stacked.dart';

class FoundationView extends StatelessWidget {
  const FoundationView({Key? key}) : super(key: key);

  static MaterialPage page() {
    return const MaterialPage(
        name: AppLinkLocationKeys.foundations,
        key: ValueKey(AppLinkLocationKeys.foundations),
        child: FoundationView());
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
                padding: EdgeInsets.symmetric(
                    vertical: FMIThemeBase.basePaddingXxLarge,
                    horizontal: context.outerGutter),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePaddingXLarge),
                        child: Text(viewModel.selectedPage!.name,
                            style: Theme.of(context).textTheme.displayMedium),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: viewModel.selectedPage?.designContents != null
                            ? MarkdownDisplayWidget(
                                file: viewModel
                                    .selectedPage!.designContents![0].content)
                            : Container(),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: FMIThemeBase.basePadding10),
                          child: getDemo(viewModel
                              .selectedPage!.designContents?[0].component),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: viewModel.selectedPage?.codeContents != null
                            ? MarkdownDisplayWidget(
                                file: viewModel
                                    .selectedPage!.codeContents![0].content)
                            : Container(),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: FMIThemeBase.basePadding10),
                          child: getDemo(viewModel
                              .selectedPage!.codeContents?[0].component),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: FMIThemeBase.basePaddingXLarge,
                            bottom: FMIThemeBase.basePaddingXLarge),
                      ),
                    ],
                  ),
                ),
              )))
            : Container(),
      ),
    );
  }
}
