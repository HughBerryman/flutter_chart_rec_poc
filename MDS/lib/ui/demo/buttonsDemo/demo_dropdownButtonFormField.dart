import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoDropdownButtonFormField extends StatefulWidget {
  const DemoDropdownButtonFormField({Key? key}) : super(key: key);
  @override
  State<DemoDropdownButtonFormField> createState() =>
      _DemoDropdownButtonFormFieldState();
}

class _DemoDropdownButtonFormFieldState
    extends State<DemoDropdownButtonFormField> {
  String? dropdownValue1;
  String? dropdownValue2 = 'Item 4';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Dropdown Button Form Field'),
        Wrap(
          runAlignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          runSpacing: FMIThemeBase.basePadding12,
          spacing: FMIThemeBase.basePadding12,
          children: [
            DropdownButtonFormField(
                value: dropdownValue1,
                hint: const Text('Select an item'),
                items: <String>[
                  'Item 1',
                  'Item 2',
                  'Item 3',
                  'Item 4',
                  'Item 5'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue2 = newValue!;
                  });
                }),
            DropdownButtonFormField(
                value: dropdownValue1,
                hint: const Text('Select an item'),
                disabledHint: const Text('Disabled Hint'),
                items: <String>[
                  'Item 1',
                  'Item 2',
                  'Item 3',
                  'Item 4',
                  'Item 5'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: null),
            DropdownButtonFormField(
                value: dropdownValue2,
                hint: const Text('Select an item'),
                items: <String>[
                  'Item 1',
                  'Item 2',
                  'Item 3',
                  'Item 4',
                  'Item 5'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue2 = newValue!;
                  });
                }),
            DropdownButtonFormField(
                value: dropdownValue2,
                hint: const Text('Select an item'),
                items: <String>[
                  'Item 1',
                  'Item 2',
                  'Item 3',
                  'Item 4',
                  'Item 5'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: null),
            Theme(
              data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
              child: DropdownButtonFormField(
                  value: dropdownValue1,
                  hint: const Text('Select an item'),
                  items: <String>[
                    'Item 1',
                    'Item 2',
                    'Item 3',
                    'Item 4',
                    'Item 5'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue2 = newValue!;
                    });
                  }),
            ),
            Theme(
              data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
              child: DropdownButtonFormField(
                  value: dropdownValue1,
                  hint: const Text('Select an item'),
                  disabledHint: const Text('Disabled Hint'),
                  items: <String>[
                    'Item 1',
                    'Item 2',
                    'Item 3',
                    'Item 4',
                    'Item 5'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: null),
            ),
            Theme(
              data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
              child: DropdownButtonFormField(
                  value: dropdownValue2,
                  hint: const Text('Select an item'),
                  items: <String>[
                    'Item 1',
                    'Item 2',
                    'Item 3',
                    'Item 4',
                    'Item 5'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue2 = newValue!;
                    });
                  }),
            ),
            Theme(
              data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
              child: DropdownButtonFormField(
                  value: dropdownValue2,
                  hint: const Text('Select an item'),
                  items: <String>[
                    'Item 1',
                    'Item 2',
                    'Item 3',
                    'Item 4',
                    'Item 5'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: null),
            ),
          ],
        ),
      ],
    );
  }
}
