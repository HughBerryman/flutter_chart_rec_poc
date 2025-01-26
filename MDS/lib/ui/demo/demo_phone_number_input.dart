import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoPhoneNumberInput extends StatefulWidget {
  const DemoPhoneNumberInput({Key? key}) : super(key: key);

  @override
  State<DemoPhoneNumberInput> createState() => _DemoPhoneNumberInputState();
}

class _DemoPhoneNumberInputState extends State<DemoPhoneNumberInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapLarge),
          child: ComponentHeader(title: 'Fmi Phone Number Input'),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(
              title:
                  'Fmi Phone Number Input with pre-existing value but in dial code format'),
        ),
        FmiPhoneNumberInput(initialValue: PhoneNumber(phoneNumber: "+1")),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Fmi Phone Number Input with dial code only'),
        ),
        FmiPhoneNumberInput(initialValue: PhoneNumber(dialCode: "+62")),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title:
                  'Fmi Phone Number Input with pre-existing value and correct phone number format'),
        ),
        FmiPhoneNumberInput(
            initialValue: PhoneNumber(phoneNumber: "+621500046"),
            onInputValidated: (bool validValue) {
              print(validValue);
              //optional, do something
            }),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title:
                  'Fmi Phone Number Input without auto-validate on change & Same dial code but different iso code (example : +1 but in CA)'),
        ),
        FmiPhoneNumberInput(
          initialValue: PhoneNumber(phoneNumber: "+12025550128", isoCode: "CA"),
          formatInput: false,
          onInputChanged: (PhoneNumber phoneNumber) {
            print(phoneNumber.phoneNumber);
            //optional, do something
          },
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title:
                  'Disabled Fmi Phone Number Input with pre-existing value & Same dial code but different iso code (example : +1 but in US)'),
        ),
        FmiPhoneNumberInput(
            initialValue:
                PhoneNumber(phoneNumber: "+12025550128", isoCode: "US"),
            enabled: false),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Fmi Phone Number Input with custom error text'),
        ),
        FmiPhoneNumberInput(
            initialValue: PhoneNumber(phoneNumber: "+6215000463"),
            errorText: "Some custom error text"),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Fmi Phone Number Input with ignored validation if blank'),
        ),
        FmiPhoneNumberInput(
          initialValue: PhoneNumber(phoneNumber: "+62"),
          ignoreBlank: true,
        ),
      ],
    );
  }
}
