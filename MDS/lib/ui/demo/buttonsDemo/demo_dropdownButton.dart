import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoDropdownButton extends StatefulWidget {
  const DemoDropdownButton({Key? key}) : super(key: key);
  @override
  State<DemoDropdownButton> createState() => _DemoDropdownButtonState();
}

class _DemoDropdownButtonState extends State<DemoDropdownButton> {
  String? dropdownValue1;
  String? dropdownValue2 = 'Item 4';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Dropdown Button Default'),
        Wrap(
          runAlignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          runSpacing: FMIThemeBase.basePadding12,
          spacing: FMIThemeBase.basePadding12,
          children: [
            DropdownButton(
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
                    dropdownValue1 = newValue!;
                  });
                }),
            DropdownButton(
                value: dropdownValue1,
                hint: const Text('Select an item - disabled'),
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
            DropdownButton(
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
            DropdownButton(
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
          ],
        ),
      ],
    );
  }
}
