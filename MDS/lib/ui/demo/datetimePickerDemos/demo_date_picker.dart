import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoDatePicker extends StatefulWidget {
  const DemoDatePicker({super.key});

  @override
  _DemoDatePickerState createState() => _DemoDatePickerState();
}

class _DemoDatePickerState extends State<DemoDatePicker> {
  DateTime? selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return child!;
      },
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Default Date Picker'),
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
        Text(
          'Selected Date: ${selectedDate?.toLocal() ?? "Not selected"}',
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding12),
          child: FilledButton(
            onPressed: () => _selectDate(context),
            child: const Text('Open Date Picker'),
          ),
        ),
      ],
    );
  }
}
