import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:poc/ui/demo/demo.dart';
import 'package:intl/intl.dart';

class DemoDateRangePicker extends StatefulWidget {
  const DemoDateRangePicker({super.key});

  @override
  _DemoDateRangePickerState createState() => _DemoDateRangePickerState();
}

class _DemoDateRangePickerState extends State<DemoDateRangePicker> {
  DateTimeRange? _selectedDateRange;
  final DateFormat _dateFormat = DateFormat('yyyy-MM-dd');

  Future<void> _selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      initialDateRange: _selectedDateRange ??
          DateTimeRange(
            start: DateTime.now(),
            end: DateTime.now().add(const Duration(days: 7)),
          ),
    );
    if (picked != null && picked != _selectedDateRange) {
      setState(() {
        _selectedDateRange = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Default Date Range Picker'),
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding2)),
        Text(
          _selectedDateRange == null
              ? 'Selected Date Range: Not selected'
              : "Selected Range: ${_dateFormat.format(_selectedDateRange!.start.toLocal())} - ${_dateFormat.format(_selectedDateRange!.end.toLocal())}",
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding12),
          child: FilledButton(
            onPressed: () => _selectDateRange(context),
            child: const Text('Open Date Range Picker'),
          ),
        ),
      ],
    );
  }
}
