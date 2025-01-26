import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoDataGrid extends StatefulWidget {
  const DemoDataGrid({super.key});

  @override
  State<DemoDataGrid> createState() => _DemoDataGridState();
}

class _DemoDataGridState extends State<DemoDataGrid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: "Data Grid"),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePaddingLarge,
                  bottom: FMIThemeBase.basePaddingLarge),
              child: FilledButton(
                child: const Text("Open Data Grid Demo"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DataGridDemo()));
                },
              ),
            )
          ],
        )
      ],
    );
  }
}

class DataGridDemo extends StatefulWidget {
  const DataGridDemo({super.key});

  @override
  State<DataGridDemo> createState() => _DataGridDemoState();
}

class _DataGridDemoState extends State<DataGridDemo> {
  final AppStateManager appStateManager = GetIt.instance.get<AppStateManager>();

  final List<bool> _selections = List.from([true, false, false]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Data Grid'),
          automaticallyImplyLeading: false,
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            color: Theme.of(context)
                .colorScheme
                .primary
                .withOpacity(FMIThemeBase.baseOpacity10),
            constraints: BoxConstraints.loose(
                const Size.fromWidth(FMIThemeBase.baseContainerDimension980)),
            padding: const EdgeInsets.all(FMIThemeBase.basePaddingXLarge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Text(
                      'Toggle between DataGrid, ListDataGrid, ConditionalDataGrid',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: FMIThemeBase.basePaddingLarge),
                      child: ToggleButtons(
                          children: const [
                            Icon(Icons.grid_on),
                            Icon(Icons.list),
                            Icon(Icons.style)
                          ],
                          onPressed: (int index) {
                            setState(() {
                              if (_selections[index] == true) {
                                return;
                              }
                              _selections[index] = !_selections[index];
                              for (int i = 0; i < _selections.length; i++) {
                                if (i != index) {
                                  _selections[i] = false;
                                }
                              }
                            });
                          },
                          isSelected: _selections),
                    ),
                  ],
                ),
                const SizedBox(height: FMIThemeBase.basePaddingLarge),
                Visibility(
                    visible: _selections[0],
                    child: const Expanded(child: DataGrid())),
                Visibility(
                  visible: _selections[1],
                  child: const Expanded(
                    child: ListDataGrid(),
                  ),
                ),
                Visibility(
                  visible: _selections[2],
                  child: const Expanded(
                    child: ConditionalDataGrid(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: FMIThemeBase.basePadding4),
                  child: FilledButton.icon(
                      icon: const FaIcon(FontAwesomeIcons.xmark),
                      label: const Text('Close Demo'),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
