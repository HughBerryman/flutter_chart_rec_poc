import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoTimePicker extends StatefulWidget {
  const DemoTimePicker({super.key});

  @override
  State<DemoTimePicker> createState() => _DemoTimePickerState();
}

class _DemoTimePickerState extends State<DemoTimePicker> {
  TimeOfDay? selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Default Time Picker'),
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
        Text(
          'Selected Time: ${selectedTime?.format(context) ?? "Not selected"}',
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding12),
          child: FilledButton(
            onPressed: () => _selectTime(context),
            child: const Text('Open Time Picker'),
          ),
        ),
      ],
    );
  }
}
