import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../component_header.dart';
import '../component_subheader.dart';

class DemoSegmentedButton extends StatefulWidget {
  const DemoSegmentedButton({super.key});

  @override
  State<DemoSegmentedButton> createState() => _DemoSegmentedButtonState();
}

class _DemoSegmentedButtonState extends State<DemoSegmentedButton> {
  Set<String> selectedSegments = {'Option 2', 'Option 3'};
  Set<String> selectedSegments2 = {'Option 2', 'Option 3'};
  String _selectedSegmentIconOnly = 'Option 1';
  String _selectedSegmentTextOnly = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(
            title: 'Segmented Buttons', padding: FMIThemeBase.basePaddingSmall),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding2),
          child: ComponentSubheader(
              title: 'Multi Select with Empty Selection Allowed'),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding2),
          child: SegmentedButton<String>(
            showSelectedIcon: false,
            emptySelectionAllowed: true,
            segments: <ButtonSegment<String>>[
              ButtonSegment<String>(
                value: 'Option 1',
                label: const Text(
                  'Option 1',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                icon: selectedSegments.contains('Option 1')
                    ? const FaIcon(
                        FontAwesomeIcons.solidClock,
                        size: FMIThemeBase.baseIconSmall,
                      )
                    : const FaIcon(
                        FontAwesomeIcons.lightClock,
                        size: FMIThemeBase.baseIconSmall,
                      ),
              ),
              ButtonSegment<String>(
                value: 'Option 2',
                label: const Text(
                  'Option 2',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                icon: selectedSegments.contains('Option 2')
                    ? const FaIcon(
                        FontAwesomeIcons.solidDroplet,
                        size: FMIThemeBase.baseIconSmall,
                      )
                    : const FaIcon(
                        FontAwesomeIcons.lightDroplet,
                        size: FMIThemeBase.baseIconSmall,
                      ),
              ),
              ButtonSegment<String>(
                value: 'Option 3',
                label: const Text(
                  'Option 3 Long text here for this option',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                icon: selectedSegments.contains('Option 3')
                    ? const FaIcon(
                        FontAwesomeIcons.solidBell,
                        size: FMIThemeBase.baseIconSmall,
                      )
                    : const FaIcon(
                        FontAwesomeIcons.lightBell,
                        size: FMIThemeBase.baseIconSmall,
                      ),
              ),
            ],
            selected: selectedSegments,
            multiSelectionEnabled: true,
            onSelectionChanged: (Set<String> newSelection) {
              setState(() {
                selectedSegments = newSelection;
              });
            },
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding2),
          child: SegmentedButton<String>(
            emptySelectionAllowed: true,
            segments: <ButtonSegment<String>>[
              ButtonSegment<String>(
                value: 'Option 1',
                label: const Text(
                  'Option 1',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                icon: selectedSegments2.contains('Option 1')
                    ? const FaIcon(
                        FontAwesomeIcons.solidClock,
                        size: FMIThemeBase.baseIconSmall,
                      )
                    : const FaIcon(
                        FontAwesomeIcons.lightClock,
                        size: FMIThemeBase.baseIconSmall,
                      ),
              ),
              ButtonSegment<String>(
                value: 'Option 2',
                label: const Text(
                  'Option 2',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                icon: selectedSegments2.contains('Option 2')
                    ? const FaIcon(
                        FontAwesomeIcons.solidDroplet,
                        size: FMIThemeBase.baseIconSmall,
                      )
                    : const FaIcon(
                        FontAwesomeIcons.lightDroplet,
                        size: FMIThemeBase.baseIconSmall,
                      ),
              ),
              ButtonSegment<String>(
                value: 'Option 3',
                label: const Text(
                  'Option 3',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                icon: selectedSegments2.contains('Option 3')
                    ? const FaIcon(
                        FontAwesomeIcons.solidBell,
                        size: FMIThemeBase.baseIconSmall,
                      )
                    : const FaIcon(
                        FontAwesomeIcons.lightBell,
                        size: FMIThemeBase.baseIconSmall,
                      ),
              ),
            ],
            selected: selectedSegments2,
            multiSelectionEnabled: true,
            onSelectionChanged: (Set<String> newSelection) {
              setState(() {
                selectedSegments2 = newSelection;
              });
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding2),
          child: ComponentSubheader(title: 'Icon Only'),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding2),
          child: SegmentedButton<String>(
            segments: <ButtonSegment<String>>[
              ButtonSegment<String>(
                value: 'Option 1',
                icon: _selectedSegmentIconOnly == 'Option 1'
                    ? const FaIcon(
                        FontAwesomeIcons.solidClock,
                      )
                    : const FaIcon(
                        FontAwesomeIcons.lightClock,
                      ),
              ),
              ButtonSegment<String>(
                value: 'Option 2',
                icon: _selectedSegmentIconOnly == 'Option 2'
                    ? const FaIcon(FontAwesomeIcons.solidDroplet)
                    : const FaIcon(FontAwesomeIcons.lightDroplet),
              ),
              ButtonSegment<String>(
                value: 'Option 3',
                icon: _selectedSegmentIconOnly == 'Option 3'
                    ? const FaIcon(FontAwesomeIcons.solidBell)
                    : const FaIcon(FontAwesomeIcons.lightBell),
              ),
            ],
            selected: <String>{_selectedSegmentIconOnly},
            onSelectionChanged: (Set<String> newSelection) {
              setState(() {
                _selectedSegmentIconOnly = newSelection.first;
              });
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding2),
          child: ComponentSubheader(title: 'Icon and Label'),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding2),
          child: SegmentedButton<String>(
            segments: const <ButtonSegment<String>>[
              ButtonSegment<String>(
                value: 'Option 1',
                label: Text(
                  'Option 1',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              ButtonSegment<String>(
                value: 'Option 2',
                label: Text(
                  'Option 2',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              ButtonSegment<String>(
                value: 'Option 3',
                label: Text(
                  'Option 3',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
            selected: <String>{_selectedSegmentTextOnly},
            onSelectionChanged: (Set<String> newSelection) {
              setState(() {
                _selectedSegmentTextOnly = newSelection.first;
              });
            },
          ),
        ),
      ],
    );
  }
}
