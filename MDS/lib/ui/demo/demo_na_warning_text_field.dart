import 'package:flutter/material.dart';
import 'package:poc/ui/demo/demo.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoNaWarningTextField extends StatelessWidget {
  const DemoNaWarningTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ComponentHeader(title: 'Fmi NA Warning TextField'),
        SizedBox(height: FMIThemeBase.baseGapMedium),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: FMIThemeBase.baseGapSmall,
                  bottom: FMIThemeBase.baseGap11,
                ),
                child: FmiNaWarningTextFieldWidget(
                  decoration: FmiEnhancedInputDecoration(
                    labelText: 'Normal state Without NA Selection',
                  ),
                  showNotAvailableButton: false,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: FMIThemeBase.baseGapSmall,
                  bottom: FMIThemeBase.baseGap11,
                ),
                child: FmiNaWarningTextFieldWidget(
                  decoration: FmiEnhancedInputDecoration(
                    labelText: 'Normal state With NA Selection',
                  ),
                  showNotAvailableButton: true,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
