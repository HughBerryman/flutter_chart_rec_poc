import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoEmployeeInfoWidget extends StatelessWidget {
  const DemoEmployeeInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Employee _mockEmployee1 = Employee(
        employeeID: '0060060537',
        displayName: 'CHRISTOPHER KEMP',
        jobTitle: 'Bus Solution Architect III Systems',
        email: 'test@email.com',
        firstName: 'Christopher',
        lastName: 'Kemp',
        workLocationDescription: 'Phoenix',
        mobilePhone: '+1-555-123-1234',
        photoUrl:
            'https://images.services-dev.fmi.com/publishedimages/0060060537.jpg');

    final Employee _mockEmployee2 = Employee(
      employeeID: "0060060537",
      displayName: "CHRISTOPHER KEMP",
      jobTitle: 'Bus Solution Architect III Systems',
    );

    final Employee _mockEmployee3 = Employee(
      employeeID: "0060060537",
      displayName: "CHRISTOPHER KEMP",
      email: 'test@email.com',
    );

    final Employee _mockEmployee4 = Employee(
        employeeID: "0060060537",
        displayName: 'CHRISTOPHER KEMP',
        photoUrl:
            'https://images.services-dev.fmi.com/publishedimages/0060060537.jpg');

    void _showDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const PlaceholderDialog();
          });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Employee Info Widget'),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(title: 'Employee Summary'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(employee: _mockEmployee1),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(title: 'Detailed Summary - showDetails'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(showDetails: true, employee: _mockEmployee1),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(title: 'Employee Summary'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(employee: _mockEmployee2),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(title: 'Detailed Summary - showDetails'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(showDetails: true, employee: _mockEmployee2),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(title: 'Employee Summary - onTap'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(
            employee: _mockEmployee3, onTap: () => _showDialog(context)),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(
            title: 'Detailed Summary - showDetails, onTap'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(
            showDetails: true,
            employee: _mockEmployee3,
            onTap: () => _showDialog(context)),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(title: 'Employee Summary - onTap'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(
            employee: _mockEmployee4, onTap: () => _showDialog(context)),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(
            title: 'Detailed Summary - showDetails, onTap'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(
            showDetails: true,
            employee: _mockEmployee4,
            onTap: () => _showDialog(context)),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(title: 'Employee Summary - onTap, trailing'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(
          employee: _mockEmployee1,
          onTap: () => _showDialog(context),
          padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
          trailing: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const AlertDialog(
                    content: Text('Trailing Pressed'),
                  );
                },
              );
            },
            color: Theme.of(context).colorScheme.primary,
            icon: const FaIcon(FontAwesomeIcons.solidPlus),
          ),
        ),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(
            title: 'Detailed Summary - showDetails, onTap, trailing'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(
          showDetails: true,
          employee: _mockEmployee1,
          onTap: () => _showDialog(context),
          padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
          trailing: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const AlertDialog(
                    content: Text('Trailing Pressed'),
                  );
                },
              );
            },
            color: Theme.of(context).colorScheme.primary,
            icon: const FaIcon(FontAwesomeIcons.solidPlus),
          ),
        ),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(title: 'Employee Summary - onTap'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(
            padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
            employee: _mockEmployee1,
            onTap: () => _showDialog(context)),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(
            title: 'Detailed Summary - showDetails, onTap'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(
            showDetails: true,
            padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
            employee: _mockEmployee1,
            onTap: () => _showDialog(context)),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(title: 'Employee Summary- useDisplayName '),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(employee: _mockEmployee1, useDisplayName: false),
        const SizedBox(height: FMIThemeBase.baseGap8),
        const ComponentSubheader(
            title: 'Detailed Summary - showDetails, useDisplayName'),
        const SizedBox(height: FMIThemeBase.baseGap5),
        FmiEmployeeInfoWidget(
            showDetails: true, employee: _mockEmployee1, useDisplayName: false),
      ],
    );
  }
}
