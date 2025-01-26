import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/fmi_theme_base.dart';
import 'package:fmi_core/models/employeeLookup/employee.dart';
import 'package:fmi_core/ui/ui.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoMultiEmployeeLookup extends StatefulWidget {
  const DemoMultiEmployeeLookup({Key? key}) : super(key: key);

  @override
  State<DemoMultiEmployeeLookup> createState() =>
      _DemoMultiEmployeeLookupState();
}

class _DemoMultiEmployeeLookupState extends State<DemoMultiEmployeeLookup> {
  List<Employee> mockPreSelectedEmployees = [
    Employee(
        employeeID: "0060064147",
        displayName: "BOB JANCOSKI",
        photoUrl:
            "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg"),
    Employee(
        employeeID: "0060060537",
        displayName: "CHRISTOPHER KEMP",
        photoUrl:
            "https://images.services-dev.fmi.com/publishedimages/0060060537.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentHeader(title: 'Fmi Multi Employee Lookup Widget'),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(
              title: 'Fmi Multi Employee Lookup without Pre-Existing Values'),
        ),
        const FmiMultiEmployeeLookupWidget(),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Fmi Multi Employee Lookup with Error Text'),
        ),
        const FmiMultiEmployeeLookupWidget(
          errorText: "Required, cannot be blank",
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Fmi Multi Employee Lookup with Pre-Existing Values'),
        ),
        FmiMultiEmployeeLookupWidget(
          initialValue: mockPreSelectedEmployees,
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title:
                  'Disabled Fmi Multi Employee Lookup with Pre-Existing Values'),
        ),
        FmiMultiEmployeeLookupWidget(
          initialValue: mockPreSelectedEmployees,
          enabled: false,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(
              title: 'Fmi Multi Employee Lookup with Camera Scanner'),
        ),
        const FmiMultiEmployeeLookupWidget(
          showCameraReaderButton: true,
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Fmi Multi Employee Lookup Online Support'),
        ),
        const FmiMultiEmployeeLookupWidget(
          showCameraReaderButton: true,
          endpointUrlRelativePath: "employees",
        ),
      ],
    );
  }
}
