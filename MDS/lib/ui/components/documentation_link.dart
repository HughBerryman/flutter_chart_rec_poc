import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/models/app_state_manager.dart';

class DocumentationLink extends StatelessWidget {
  const DocumentationLink({
    Key? key,
    required this.appStateManager,
    required this.categorySource,
    required this.pageSource,
  }) : super(key: key);

  final AppStateManager appStateManager;
  final String categorySource;
  final String pageSource;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: FMIThemeBase.baseLineHeights9,
      child: InkWell(
        onTap: () {
          appStateManager.pageTapped(appStateManager
              .getCategorySource(categorySource)
              .getPageSource(pageSource));
        },
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            const Icon(
              Icons.arrow_right,
            ),
            Text(
              'Go to documentation',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color:
                      Theme.of(context).colorScheme.fmiButtonTextLabelEnabled),
            ),
          ],
        ),
      ),
    );
  }
}
