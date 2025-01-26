import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/models/navigation/category_source_model.dart';
import 'package:poc/routing/app_route_parser.dart';
import 'package:poc/ui/components/components.dart';
import 'package:poc/ui/viewModels/models.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  static MaterialPage page() {
    return const MaterialPage(child: HomeView());
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeView> {
  final routeParser = AppRouteParser();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onViewModelReady: (viewModel) => viewModel.initialize(),
        builder: (context, viewModel, child) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: Row(
              children: [
                Container(
                  color: Theme.of(context).colorScheme.surface,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(
                            FMIThemeBase.baseBorderRadiusXLarge),
                        bottomRight: Radius.circular(
                            FMIThemeBase.baseBorderRadiusXLarge)),
                    child: Drawer(
                        child: viewModel.isBusy
                            ? const CircularProgressIndicator()
                            : NavMenuWidget(
                                categories: viewModel.categories
                                    as List<CategorySourceModel>,
                                onPageTapped: viewModel.pageTapped,
                              )),
                  ),
                ),
                Expanded(
                  child: Router(
                    backButtonDispatcher: ChildBackButtonDispatcher(
                        Router.of(context).backButtonDispatcher!),
                    routeInformationParser: null,
                    routerDelegate: viewModel.appRouter,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
