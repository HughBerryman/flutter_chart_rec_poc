import 'package:flutter/material.dart';
import 'package:poc/ui/demo/demo.dart';

enum RadioColor { red, green, blue }

class DemoRadioFlutter extends StatefulWidget {
  const DemoRadioFlutter({Key? key}) : super(key: key);

  @override
  State<DemoRadioFlutter> createState() => _DemoRadioFlutterState();
}

class _DemoRadioFlutterState extends State<DemoRadioFlutter> {
  RadioColor? color = RadioColor.red;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Radio Button'),
        const ComponentSubheader(title: 'Column of Radio Buttons'),
        ListTile(
          title: const Text('Red'),
          leading: Radio(
              value: RadioColor.red,
              groupValue: color,
              onChanged: (RadioColor? value) {
                setState(() {
                  color = value;
                });
              }),
        ),
        ListTile(
          title: const Text('Green'),
          leading: Radio(
              value: RadioColor.green,
              groupValue: color,
              onChanged: (RadioColor? value) {
                setState(() {
                  color = value;
                });
              }),
        ),
        ListTile(
          title: const Text('Blue'),
          leading: Radio(
              value: RadioColor.blue,
              groupValue: color,
              onChanged: (RadioColor? value) {
                setState(() {
                  color = value;
                });
              }),
        ),
        const ComponentSubheaderLink(
            linkText: 'Radio Flutter Documentation',
            url: 'https://api.flutter.dev/flutter/material/Radio-class.html')
      ],
    );
  }
}
