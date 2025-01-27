import 'package:flutter/material.dart';
import 'package:poc/enums/enums.dart';
import 'package:poc/models/navigation/page_source_model.dart';
import 'package:poc/ui/demo/demo.dart';
import 'package:poc/ui/viewModels/models.dart';
import 'package:stacked/stacked.dart';

class DemoDetailedView extends StatelessWidget {
  const DemoDetailedView({Key? key}) : super(key: key);

  static MaterialPage page() {
    return const MaterialPage(child: DemoDetailedView());
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SelectedPageViewModel>.reactive(
        viewModelBuilder: () => SelectedPageViewModel(),
        onViewModelReady: (viewModel) => viewModel.initialize(),
        builder: (context, viewModel, child) => getView(viewModel));
  }

  Widget getView(SelectedPageViewModel viewModel) {
    if (viewModel.selectedPage == null) {
      return Container();
    } else if (viewModel.selectedPage?.view == AssignedView.demoChartView) {
      return DemoChartWidgets(page: viewModel.selectedPage as PageSourceModel);
    } else if (viewModel.selectedPage?.view == AssignedView.demoFlutterView) {
      return DemoFlutterWidgets(
          page: viewModel.selectedPage as PageSourceModel);
    } else if (viewModel.selectedPage?.view == AssignedView.demoScaffoldView) {
      return DemoScaffold(page: viewModel.selectedPage as PageSourceModel);
    } else {
      return Container();
    }
  }
}
