import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoExpansionPanelThemes extends StatefulWidget {
  const DemoExpansionPanelThemes({Key? key}) : super(key: key);

  @override
  State<DemoExpansionPanelThemes> createState() =>
      _DemoExpansionPanelThemesState();
}

class _DemoExpansionPanelThemesState extends State<DemoExpansionPanelThemes> {
  bool _expanded1 = false;
  bool _expanded2 = false;
  bool _expanded3 = false;
  bool _expanded4 = false;
  bool _expanded5 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(
            title: 'Expansion Panel Default with List Tile Themes'),
        const SizedBox(height: FMIThemeBase.baseGapLarge),
        const ComponentSubheader(
            title: 'Expansion Panel Default with List Tile Default'),
        const SizedBox(height: FMIThemeBase.baseGapLarge),
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
                isExpanded: _expanded1,
                canTapOnHeader: true,
              ),
            ],
            expansionCallback: (panelIndex, isExpanded) {
              _expanded1 = !_expanded1;
              setState(() {});
            },
          ),
        ),
        const SizedBox(height: FMIThemeBase.baseGapLarge),
        const ComponentSubheader(
            title:
                'Expansion Panel Default with List Tile Alt Surface - FmiListTileTheme.altSurface'),
        const SizedBox(height: FMIThemeBase.baseGapLarge),
        SingleChildScrollView(
          child: ExpansionPanelList(
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return Theme(
                    data: FmiListTileTheme.altSurface(context),
                    child: const ListTile(
                        title: Text('Title'),
                        subtitle: Text('created 06/12/2022')),
                  );
                },
                body: Wrap(children: [
                  Theme(
                      data: FmiListTileTheme.altSurface(context),
                      child: const ListTile(title: Text('Description 1'))),
                  Theme(
                      data: FmiListTileTheme.altSurface(context),
                      child: const ListTile(title: Text('Description 2'))),
                ]),
                isExpanded: _expanded2,
                canTapOnHeader: true,
              ),
            ],
            expansionCallback: (panelIndex, isExpanded) {
              _expanded2 = !_expanded2;
              setState(() {});
            },
          ),
        ),
        const SizedBox(height: FMIThemeBase.baseGapLarge),
        const ComponentSubheader(
            title: 'Expansion with List Tile Danger - FmiListTileTheme.danger'),
        const SizedBox(height: FMIThemeBase.baseGapLarge),
        SingleChildScrollView(
          child: ExpansionPanelList(
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return Theme(
                    data: FmiListTileTheme.danger(context),
                    child: const ListTile(
                        title: Text('Title'),
                        subtitle: Text('created 06/12/2022')),
                  );
                },
                body: Wrap(children: [
                  Theme(
                      data: FmiListTileTheme.danger(context),
                      child: const ListTile(title: Text('Description 1'))),
                  Theme(
                      data: FmiListTileTheme.danger(context),
                      child: const ListTile(title: Text('Description 2'))),
                ]),
                isExpanded: _expanded3,
                canTapOnHeader: true,
              ),
            ],
            expansionCallback: (panelIndex, isExpanded) {
              _expanded3 = !_expanded3;
              setState(() {});
            },
          ),
        ),
        const SizedBox(height: FMIThemeBase.baseGapLarge),
        const ComponentSubheader(
            title:
                'Expansion with List Tile Success  - FmiListTileTheme.success'),
        const SizedBox(height: FMIThemeBase.baseGapLarge),
        SingleChildScrollView(
          child: ExpansionPanelList(
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return Theme(
                    data: FmiListTileTheme.success(context),
                    child: const ListTile(
                        title: Text('Title'),
                        subtitle: Text('created 06/12/2022')),
                  );
                },
                body: Wrap(children: [
                  Theme(
                      data: FmiListTileTheme.success(context),
                      child: const ListTile(title: Text('Description 1'))),
                  Theme(
                      data: FmiListTileTheme.success(context),
                      child: const ListTile(title: Text('Description 2'))),
                ]),
                isExpanded: _expanded4,
                canTapOnHeader: true,
              ),
            ],
            expansionCallback: (panelIndex, isExpanded) {
              _expanded4 = !_expanded4;
              setState(() {});
            },
          ),
        ),
        const SizedBox(height: FMIThemeBase.baseGapLarge),
        const ComponentSubheader(
            title:
                'Expansion with List Tile Transparent  - FmiListTileTheme.transparent'),
        const SizedBox(height: FMIThemeBase.baseGapLarge),
        SingleChildScrollView(
          child: ExpansionPanelList(
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return Theme(
                    data: FmiListTileTheme.transparent(context),
                    child: const ListTile(
                        title: Text('Title'),
                        subtitle: Text('created 06/12/2022')),
                  );
                },
                body: Wrap(children: [
                  Theme(
                      data: FmiListTileTheme.transparent(context),
                      child: const ListTile(title: Text('Description 1'))),
                  Theme(
                      data: FmiListTileTheme.transparent(context),
                      child: const ListTile(title: Text('Description 2'))),
                ]),
                isExpanded: _expanded5,
                canTapOnHeader: true,
              ),
            ],
            expansionCallback: (panelIndex, isExpanded) {
              _expanded5 = !_expanded5;
              setState(() {});
            },
          ),
        ),
        const SizedBox(height: FMIThemeBase.baseGapLarge),
      ],
    );
  }
}
