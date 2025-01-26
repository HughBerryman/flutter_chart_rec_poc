import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/fmi_theme_base.dart';
import 'package:fmi_core/models/employeeLookup/employee.dart';
import 'package:fmi_core/ui/ui.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoEmployeeLookup extends StatefulWidget {
  const DemoEmployeeLookup({Key? key}) : super(key: key);

  @override
  State<DemoEmployeeLookup> createState() => _DemoEmployeeLookupState();
}

class _DemoEmployeeLookupState extends State<DemoEmployeeLookup> {
  Employee mockEmployee = Employee(
      employeeID: "0060060537",
      displayName: "CHRISTOPHER KEMP",
      photoUrl:
          "https://images.services-dev.fmi.com/publishedimages/0060060537.jpg");

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentHeader(title: 'Employee Lookup Widget'),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(
              title: 'Employee Lookup without Pre-Existing Values'),
        ),
        const EmployeeLookupWidget(),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(title: 'Employee Lookup with Error Text'),
        ),
        const EmployeeLookupWidget(
          errorText: "Required, cannot be blank",
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Employee Lookup with Pre-Existing Values'),
        ),
        EmployeeLookupWidget(initialValue: mockEmployee),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Disabled Employee Lookup with Pre-Existing Values'),
        ),
        EmployeeLookupWidget(
          initialValue: mockEmployee,
          enabled: false,
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4)),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child:
              ComponentSubheader(title: 'Employee Lookup with Camera Scanner'),
        ),
        const EmployeeLookupWidget(
          showCameraReaderButton: true,
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4))
      ],
    );
  }
}
