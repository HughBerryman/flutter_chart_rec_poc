import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:poc/models/models.dart';
import 'package:poc/ui/components/components.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoScaffold extends StatefulWidget {
  const DemoScaffold({super.key, required this.page});
  final PageSourceModel page;
  @override
  State<DemoScaffold> createState() => _DemoScaffoldState();
}

class _DemoScaffoldState extends State<DemoScaffold> {
  final AppStateManager appStateManager = GetIt.instance.get<AppStateManager>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Scaffold'),
      ),
      body: Center(
        child: Column(children: [
          const ComponentHeader(title: 'Scaffold'),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
            child: Text(
              'With FmiAppBarTop, FmiNavigationRail, and FmiBottomNavigationBar',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
              textAlign: TextAlign.center,
            ),
          ),
          const DemoScaffoldExOne(),
          const DemoScaffoldExTwo(),
          DocumentationLink(
              appStateManager: appStateManager,
              categorySource: 'components',
              pageSource: 'scaffold')
        ]),
      ),
    );
  }
}
