import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoChoiceChips extends StatefulWidget {
  const DemoChoiceChips({Key? key}) : super(key: key);

  @override
  State<DemoChoiceChips> createState() => _DemoChoiceChipsState();
}

class _DemoChoiceChipsState extends State<DemoChoiceChips> {
  int? _valueDemo1 = 1;
  int? _valueDemo2 = 1;
  int? _valueDemo3 = 1;
  int? _valueDemo4 = 1;
  int? _valueDemo5 = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Choice Chip'),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding8),
          child: ChipSubheader(
              title:
                  'Default - Recommended on Lighter Backgrounds like "Surface"'),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
          child: Text('Recommended',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold)),
        ),
        DemoChoiceWidget(
          onSelected: (int? index) => {
            setState(() {
              _valueDemo1 = index;
            })
          },
          value: _valueDemo1,
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
          child: Text('Not Recommended',
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        ChipBackgroundContainer(
          child: DemoChoiceWidget(
            onSelected: (int? index) => {
              setState(() {
                _valueDemo2 = index;
              })
            },
            value: _valueDemo2,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding8),
          child: ChipSubheader(
              title:
                  'FmiChipTheme.transparent(context) - Recommended on Darker Backgrounds like "InverseAltSurface"'),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
          child: Text('Recommended',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold)),
        ),
        ChipBackgroundContainer(
          child: Theme(
            data: FmiChipTheme.transparent(context),
            child: DemoChoiceWidget(
              onSelected: (int? index) => {
                setState(() {
                  _valueDemo3 = index;
                })
              },
              value: _valueDemo3,
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
          child: Text(
            'Not Recommended',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Theme(
          data: FmiChipTheme.transparent(context),
          child: DemoChoiceWidget(
            onSelected: (int? index) => {
              setState(() {
                _valueDemo4 = index;
              })
            },
            value: _valueDemo4,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding8),
          child: ChipSubheader(title: 'FmiChipTheme.defaultNoBorder(context)'),
        ),
        Theme(
          data: FmiChipTheme.defaultNoBorder(context),
          child: DemoChoiceWidget(
            onSelected: (int? index) => {
              setState(() {
                _valueDemo5 = index;
              })
            },
            value: _valueDemo5,
          ),
        ),
      ],
    );
  }
}
