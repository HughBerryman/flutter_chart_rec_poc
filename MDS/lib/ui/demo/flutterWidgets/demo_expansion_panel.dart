import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoExpansionPanels extends StatefulWidget {
  const DemoExpansionPanels({Key? key}) : super(key: key);

  @override
  State<DemoExpansionPanels> createState() => _DemoExpansionPanelsState();
}

class _DemoExpansionPanelsState extends State<DemoExpansionPanels> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ComponentHeader(
            title: 'Expansion Panel Default with Header & Body List Tiles'),
        const Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePaddingMedium,
              bottom: FMIThemeBase.basePaddingMedium),
          child: ComponentSubheaderLink(
              linkText: 'Expansion Panel List Flutter Documentation',
              url:
                  'https://api.flutter.dev/flutter/material/ExpansionPanelList-class.html'),
        ),
        const Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePaddingMedium,
              bottom: FMIThemeBase.basePaddingMedium),
          child: ComponentSubheaderLink(
              linkText: 'Expansion Panel Flutter Documentation',
              url:
                  'https://api.flutter.dev/flutter/material/ExpansionPanel-class.html'),
        ),
        SingleChildScrollView(
          child: ExpansionPanelList(
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return const ListTile(
                      title: Text('Title'),
                      subtitle: Text('created 06/12/2022'));
                },
                body: const Wrap(children: [
                  ListTile(title: Text('Description 1')),
                  ListTile(title: Text('Description 2')),
                ]),
                isExpanded: _expanded,
                canTapOnHeader: true,
              ),
            ],
            expansionCallback: (panelIndex, isExpanded) {
              _expanded = !_expanded;
              setState(() {});
            },
          ),
        )
      ],
    );
  }
}
