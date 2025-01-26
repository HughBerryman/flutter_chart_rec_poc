import 'package:flutter/material.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoCheckbox extends StatefulWidget {
  const DemoCheckbox({Key? key}) : super(key: key);

  @override
  State<DemoCheckbox> createState() => _DemoCheckboxState();
}

class _DemoCheckboxState extends State<DemoCheckbox> {
  bool isChecked = false;
  bool isCheckedTwo = false;
  bool isCheckedThree = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Checkbox'),
        const ComponentSubheader(title: 'Column of Checkboxes'),
        ListTile(
          title: const Text('Checkbox One'),
          leading: Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              }),
        ),
        ListTile(
          title: const Text('Checkbox Two'),
          leading: Checkbox(
              value: isCheckedTwo,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedTwo = value!;
                });
              }),
        ),
        ListTile(
          title: const Text('Checkbox Three'),
          leading: Checkbox(
              value: isCheckedThree,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedThree = value!;
                });
              }),
        ),
        const ListTile(
          title: Text('Disabled'),
          leading: Checkbox(value: false, onChanged: null),
        ),
        const ListTile(
          title: Text('Disabled Selected'),
          leading: Checkbox(value: true, onChanged: null),
        ),
        const ComponentSubheaderLink(
            linkText: 'Checkbox Flutter Documentation',
            url: 'https://api.flutter.dev/flutter/material/Checkbox-class.html')
      ],
    );
  }
}
