import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'demo.dart';

class DemoRadio extends StatefulWidget {
  const DemoRadio({Key? key}) : super(key: key);
  @override
  State<DemoRadio> createState() => _DemoRadioState();
}

class _DemoRadioState extends State<DemoRadio> {
  String? radioValueOne;
  String? radioValueTwo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Radio Button Group'),
        SizedBox(
          height: FMIThemeBase.baseBorderRadiusRound * 1.5,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vertical',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                    RadioButtonGroupWidget(
                      radioOptions: const ['Option 1', 'Option 2', 'Option 3'],
                      onSelectionChanged: (value) {
                        setState(() {
                          radioValueOne = value;
                        });
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: FMIThemeBase.basePaddingSmall),
                      child: Text(
                        radioValueOne != null
                            ? 'Chosen option: $radioValueOne'
                            : 'Choose an option',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(
                      right: FMIThemeBase.basePaddingXLarge * 3)),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Horizontal',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                    RadioButtonGroupWidget(
                      isHorizontal: true,
                      radioOptions: const [
                        'Option 1',
                        'Option 2',
                        'Option 3',
                      ],
                      onSelectionChanged: (value) {
                        setState(() {
                          radioValueTwo = value;
                        });
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        radioValueTwo != null
                            ? 'Chosen option: $radioValueTwo'
                            : 'Choose an option',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
