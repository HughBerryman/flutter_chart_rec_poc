import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/component_header.dart';

class DemoEmployeeDirectorySearch extends StatelessWidget {
  const DemoEmployeeDirectorySearch({super.key});

  void _showDialogEmployeeTapped(
      BuildContext context, Employee selectedEmployee) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text('Employee selected: ${selectedEmployee.employeeID}'),
        );
      },
    );
  }

  void _showDialogTrailingTapped(
      BuildContext context, Employee selectedEmployee) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text('Trailing selected: ${selectedEmployee.employeeID}'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double? _maxHeight =
        _height < FMIThemeBase.baseContainerDimension450 ? _height * 0.7 : null;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.basePadding2),
          child: ComponentHeader(title: 'Fmi Employee Directory Search'),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: FMIThemeBase.basePadding2, top: FMIThemeBase.basePadding8),
          child: FmiEmployeeDirectorySearch(
            maxResultsListHeight: _maxHeight,
            onTapEmployee: (selectedEmployee) {
              _showDialogEmployeeTapped(context, selectedEmployee);
            },
            onTapTrailing: (selectedEmployee) {
              _showDialogTrailingTapped(context, selectedEmployee);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: FMIThemeBase.basePadding4,
              horizontal: FMIThemeBase.basePadding4),
          child: FmiEmployeeDirectorySearch(
            maxResultsListHeight: _maxHeight,
            useCircleShape: true,
            hideElevation: true,
            backgroundColor: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceInverseAltSurface,
            suffixIconColor: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceInverseOnAltSurface,
            leadingIconColor: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceInverseOnAltSurface,
            onTapEmployee: (selectedEmployee) {
              _showDialogEmployeeTapped(context, selectedEmployee);
            },
            onTapTrailing: (selectedEmployee) {
              _showDialogTrailingTapped(context, selectedEmployee);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: FMIThemeBase.basePadding4,
              horizontal: FMIThemeBase.basePadding4),
          child: FmiEmployeeDirectorySearch(
            maxResultsListHeight: _maxHeight,
            useBorder: true,
            hideElevation: true,
            onTapEmployee: (selectedEmployee) {
              _showDialogEmployeeTapped(context, selectedEmployee);
            },
            onTapTrailing: (selectedEmployee) {
              _showDialogTrailingTapped(context, selectedEmployee);
            },
          ),
        )
      ],
    );
  }
}
