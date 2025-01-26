import 'package:flutter/material.dart';
import 'package:poc/models/navigation/models.dart';
import 'package:poc/routing/app_link_location_keys.dart';
import 'package:poc/ui/components/no_tabbed_widget.dart';
import 'package:poc/ui/viewModels/models.dart';
import 'package:stacked/stacked.dart';

class ComponentView extends StatelessWidget {
  const ComponentView({Key? key}) : super(key: key);

  static MaterialPage page() {
    return const MaterialPage(
        name: AppLinkLocationKeys.components,
        key: ValueKey(AppLinkLocationKeys.components),
        child: ComponentView());
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
