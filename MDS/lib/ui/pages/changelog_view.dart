import 'package:flutter/material.dart';
import 'package:poc/models/models.dart';
import 'package:poc/routing/app_link_location_keys.dart';
import 'package:poc/ui/components/no_tabbed_widget.dart';
import 'package:poc/ui/viewModels/models.dart';
import 'package:stacked/stacked.dart';

class ChangelogView extends StatelessWidget {
  const ChangelogView({Key? key}) : super(key: key);

  static MaterialPage page() {
    return const MaterialPage(
        name: AppLinkLocationKeys.changelog,
        key: ValueKey(AppLinkLocationKeys.changelog),
        child: ChangelogView());
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SelectedPageViewModel>.reactive(
        viewModelBuilder: () => SelectedPageViewModel(),
        onViewModelReady: (viewModel) => viewModel.initialize(),
        builder: (context, viewModel, child) => viewModel.selectedPage != null
            ? NoTabbedWidget(page: viewModel.selectedPage as PageSourceModel)
            : Container());
  }
}
