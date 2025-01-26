import 'package:flutter/material.dart';
import 'package:poc/ui/demo/demo.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoWarningTextField extends StatelessWidget {
  const DemoWarningTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ComponentHeader(title: 'Fmi Warning TextField'),
        SizedBox(height: FMIThemeBase.baseGapMedium),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: FMIThemeBase.baseGapSmall,
                  bottom: FMIThemeBase.baseGap11,
                ),
                child: FmiWarningTextFieldWidget(
                  decoration: FmiEnhancedInputDecoration(
                    labelText: 'Normal state',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: FMIThemeBase.baseGapSmall,
                ),
                child: FmiWarningTextFieldWidget(
                  decoration: FmiEnhancedInputDecoration(
                    labelText: 'Warning state',
                    warningText: 'WARNING',
                  ),
                ),
              ),
            ),
            Expanded(
              child: FmiWarningTextFieldWidget(
                decoration: FmiEnhancedInputDecoration(
                  labelText: 'Error state',
                  errorText: 'ERROR',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
