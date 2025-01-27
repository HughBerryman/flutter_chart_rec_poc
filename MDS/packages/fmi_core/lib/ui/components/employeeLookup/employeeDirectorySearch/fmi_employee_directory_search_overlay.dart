import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiEmployeeDirectorySearchOverlay extends StatelessWidget {
  const FmiEmployeeDirectorySearchOverlay(
      {required this.employeeResults,
      this.endpointUrlRelativePath,
      this.useBadgeSystem = false,
      required this.onEmployeeSelected,
      this.onTrailingSelected,
      this.searchTerm = '',
      this.showTrailing = true,
      this.maxResultsListHeight,
      super.key});

  final List<Employee> employeeResults;
  final String? endpointUrlRelativePath;
  final Function(Employee selectedEmployee) onEmployeeSelected;
  final Function(Employee selectedEmployee)? onTrailingSelected;
  final String searchTerm;
  final bool showTrailing;
  final bool? useBadgeSystem;
  final double? maxResultsListHeight;

  @override
  Widget build(BuildContext context) {
    bool _isEmpty = searchTerm.isEmpty || employeeResults.isEmpty;
    return FmiSearchOverlay(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!_isEmpty)
          Padding(
            padding: const EdgeInsets.only(
                left: FMIThemeBase.basePadding6,
                top: FMIThemeBase.basePadding6,
                right: FMIThemeBase.basePadding6),
            child: Text(
              context.coreLocalize.results,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ),
        Padding(
          padding: _isEmpty
              ? const EdgeInsets.only(
                  top: FMIThemeBase.basePadding10,
                  bottom: FMIThemeBase.basePadding10,
                )
              : EdgeInsets.zero,
          child: Container(
            constraints: BoxConstraints(
                maxHeight: maxResultsListHeight ??
                    FMIThemeBase.baseContainerDimension400),
            child: SingleSelectionEmployeeSearchResultsListWidget(
              searchTerm: searchTerm,
              employeeResults: employeeResults,
              endpointUrlRelativePath: endpointUrlRelativePath,
              onEmployeeSelected: onEmployeeSelected,
              onTrailingSelected: onTrailingSelected,
              useBadgeSystem: useBadgeSystem,
              isFloatingSearchBar: false,
              isFullPage: false,
              showTrailing: showTrailing,
            ),
          ),
        ),
      ],
    ));
  }
}
