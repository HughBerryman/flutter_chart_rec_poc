import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:fmi_core/ui/components/search/models/search_category.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';
import 'package:provider/provider.dart';

class DemoSearchDialog extends StatefulWidget {
  const DemoSearchDialog({super.key});

  @override
  State<DemoSearchDialog> createState() => _DemoSearchDialogState();
}

class _DemoSearchDialogState extends State<DemoSearchDialog> {
  List<SearchCategory> _displayCategories = [];

  void _onChanged(String query, BuildContext context) {
    try {
      if (query.isEmpty) {
        setState(() {
          _displayCategories = [];
        });
        Provider.of<SearchDialogProvider>(context, listen: false)
            .setOptionalRedirectText();

        Provider.of<SearchDialogProvider>(context, listen: false)
            .setOptionalRedirect();
        Provider.of<SearchDialogProvider>(context, listen: false)
            .setOptionalRedirectIcon();
      } else {
        setState(() {
          _displayCategories = _getCategories(context)
              .map((category) => SearchCategory(
                    title: category.title,
                    trailing: category.trailing,
                    options: category.options
                        .where((option) => option.title
                            .toLowerCase()
                            .contains(query.toLowerCase()))
                        .toList(),
                  ))
              .where((filteredCategory) => filteredCategory.options.isNotEmpty)
              .toList();
        });
        if (query.startsWith(RegExp(r'[1-2]'))) {
          Provider.of<SearchDialogProvider>(context, listen: false)
              .setOptionalRedirectText(optionalRedirectText: 'Office 365');

          Provider.of<SearchDialogProvider>(context, listen: false)
              .setOptionalRedirect(optionalRedirect: () {
            _onOptionalRedirectOnPressed(context);
          });
          Provider.of<SearchDialogProvider>(context, listen: false)
              .setOptionalRedirectIcon(
                  optionalRedirectIcon: FontAwesomeIcons.solidArrowRightLong);
        } else if (query.startsWith(RegExp(r'[3-4]'))) {
          Provider.of<SearchDialogProvider>(context, listen: false)
              .setOptionalRedirectText(optionalRedirectText: 'Sharepoint');

          Provider.of<SearchDialogProvider>(context, listen: false)
              .setOptionalRedirect(optionalRedirect: () {
            _onOptionalRedirectOnPressed(context);
          });
          Provider.of<SearchDialogProvider>(context, listen: false)
              .setOptionalRedirectIcon();
        } else {
          Provider.of<SearchDialogProvider>(context, listen: false)
              .setOptionalRedirectText();

          Provider.of<SearchDialogProvider>(context, listen: false)
              .setOptionalRedirect();
          Provider.of<SearchDialogProvider>(context, listen: false)
              .setOptionalRedirectIcon();
        }
      }
    } catch (e) {
      debugPrint("ERROR: $e");
    } finally {
      Provider.of<SearchDialogProvider>(context, listen: false)
          .setCategories(_displayCategories);
    }
  }

  void _onTrailingWidgetPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          content: Text('Trailing selected'),
        );
      },
    );
  }

  void _onOptionTap(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          content: Text('Option selected'),
        );
      },
    );
  }

  void _showNoResultRedirect(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          content: Text('Redirect selected'),
        );
      },
    );
  }

  void _onOptionalRedirectOnPressed(BuildContext context) {
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          content: Text('Optional redirect'),
        );
      },
    );
  }

  List<SearchCategory> _getCategories(BuildContext context) {
    return [
      SearchCategory(
          title: 'Category 1',
          trailing: DemoSearchCategoryTrailingWidget(
            onPressed: () {
              Navigator.pop(context);
              _onTrailingWidgetPressed(context);
            },
          ),
          options: [
            SearchOption(
                title: 'Title 1.1',
                value: '1.1',
                subtitle: '1.1 metadata',
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
            SearchOption(
                title: 'Title 1.2',
                value: '1.2',
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
          ]),
      SearchCategory(title: 'Category 2', options: [
        SearchOption(
            title: '2.1 Title',
            value: '2.1',
            subtitle: '2.1 metadata',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: '2.2 Title',
            value: '2.2',
            subtitle: '2.2 metadata',
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: '2.3 Title',
            value: '2.3',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: '2.4 Title',
            value: '2.4',
            subtitle: 'metadata',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: '2.5 Title',
            value: '2.5',
            subtitle: 'metadata',
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: '2.6',
            value: '2.6',
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
      ]),
      SearchCategory(title: 'Category 3', options: [
        SearchOption(
            title: 'Title 3.1',
            value: '3.1',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            })
      ]),
      SearchCategory(title: 'Category 4', options: [
        SearchOption(
            title: 'Title 4.1',
            value: '4.1',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: 'Title 4.2',
            value: '4.2',
            subtitle: 'metadata',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: 'Title 4.3',
            value: '4.3',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: 'Title 4.4',
            value: '4.4',
            subtitle: 'metadata',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: 'Title 4.5',
            value: '4.5',
            subtitle: 'metadata',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: 'Title 4.6',
            value: '4.6',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: 'Title 4.7',
            value: '4.7',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
      ]),
      SearchCategory(title: 'Category 5', options: [
        SearchOption(
            title: 'Title 5.1',
            value: '5.1',
            subtitle: 'metadata',
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: 'Title 5.2',
            value: '5.2',
            subtitle: 'metadata',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: 'Title 5.3',
            value: '5.3',
            subtitle: 'metadata',
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
      ]),
      SearchCategory(title: 'Category 6', options: [
        SearchOption(
            title: 'Title 6.1',
            value: '6.1',
            subtitle: 'metadata',
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: 'Title 6.2',
            value: '6.2',
            leading: const DemoSearchOptionLeadingWidget(),
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: 'Title 6.3',
            value: '6.3',
            subtitle: 'metadata',
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
        SearchOption(
            title: 'Title 6.4',
            value: '6.4',
            onTap: () {
              Navigator.pop(context);
              _onOptionTap(context);
            }),
      ]),
      SearchCategory(
          title: 'Category 7',
          trailing: DemoSearchCategoryTrailingWidget(
            onPressed: () {
              Navigator.pop(context);
              _onTrailingWidgetPressed(context);
            },
          ),
          options: [
            SearchOption(
                title: 'Title 7.1',
                value: '7.1',
                subtitle: 'metadata',
                leading: const DemoSearchOptionLeadingAvatar(),
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
            SearchOption(
                title: 'Title 7.2',
                value: '7.2',
                subtitle: 'metadata',
                leading: const DemoSearchOptionLeadingAvatar(),
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
            SearchOption(
                title: 'Title 7.3',
                value: '7.3',
                leading: const DemoSearchOptionLeadingAvatar(),
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
            SearchOption(
                title: 'Title 7.4',
                value: '7.4',
                leading: const DemoSearchOptionLeadingAvatar(),
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
            SearchOption(
                title: 'Title 7.5',
                value: '7.5',
                subtitle: 'metadata',
                leading: const DemoSearchOptionLeadingAvatar(),
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
            SearchOption(
                title: 'Title 7.6',
                value: '7.6',
                leading: const DemoSearchOptionLeadingAvatar(),
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
            SearchOption(
                title: 'Title 7.7',
                value: '7.7',
                subtitle: 'metadata',
                leading: const DemoSearchOptionLeadingAvatar(),
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
          ]),
      SearchCategory(
          title:
              'Category 8 Ut elementum tellus blandit iaculis volutpat. Nullam viverra augue volutpat eleifend luctus. Aenean sollicitudin ligula vitae eros sagittis, sit amet egestas est porttitor. Sed porta rhoncus velit, id dictum lectus volutpat ut. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc ornare lacus quis diam eleifend congue non blandit elit. Maecenas justo dui, mattis nec faucibus sit amet, iaculis eu risus. Nullam est magna, viverra at sem a, elementum laoreet nibh. Donec id augue venenatis, molestie nibh at, volutpat massa. Donec mollis est dolor, eget euismod est ullamcorper sed. Sed ac lectus lorem. Proin tristique nulla ante, ultricies consectetur libero consequat in. Mauris ac ultricies justo, a facilisis augue. Quisque molestie sem consequat nunc ornare, vel laoreet nisi facilisis. Aenean sed lacus neque. Aliquam accumsan sed sapien vel dictum.',
          trailing: DemoSearchCategoryTrailingWidget(
            onPressed: () {
              Navigator.pop(context);
              _onTrailingWidgetPressed(context);
            },
          ),
          options: [
            SearchOption(
                title:
                    '8.1 Ut elementum tellus blandit iaculis volutpat. Nullam viverra augue volutpat eleifend luctus. Aenean sollicitudin ligula vitae eros sagittis, sit amet egestas est porttitor. Sed porta rhoncus velit, id dictum lectus volutpat ut. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc ornare lacus quis diam eleifend congue non blandit elit. Maecenas justo dui, mattis nec faucibus sit amet, iaculis eu risus. Nullam est magna, viverra at sem a, elementum laoreet nibh. Donec id augue venenatis, molestie nibh at, volutpat massa. Donec mollis est dolor, eget euismod est ullamcorper sed. Sed ac lectus lorem. Proin tristique nulla ante, ultricies consectetur libero consequat in. Mauris ac ultricies justo, a facilisis augue. Quisque molestie sem consequat nunc ornare, vel laoreet nisi facilisis. Aenean sed lacus neque. Aliquam accumsan sed sapien vel dictum.',
                value: '8.1',
                leading: const DemoSearchOptionLeadingWidget(),
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
            SearchOption(
                title: 'Title 8.2',
                value: '8.2',
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
            SearchOption(
                title: 'Title 8.3',
                value: '8.3',
                subtitle:
                    'Ut elementum tellus blandit iaculis volutpat. Nullam viverra augue volutpat eleifend luctus. Aenean sollicitudin ligula vitae eros sagittis, sit amet egestas est porttitor. Sed porta rhoncus velit, id dictum lectus volutpat ut. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc ornare lacus quis diam eleifend congue non blandit elit. Maecenas justo dui, mattis nec faucibus sit amet, iaculis eu risus. Nullam est magna, viverra at sem a, elementum laoreet nibh. Donec id augue venenatis, molestie nibh at, volutpat massa. Donec mollis est dolor, eget euismod est ullamcorper sed. Sed ac lectus lorem. Proin tristique nulla ante, ultricies consectetur libero consequat in. Mauris ac ultricies justo, a facilisis augue. Quisque molestie sem consequat nunc ornare, vel laoreet nisi facilisis. Aenean sed lacus neque. Aliquam accumsan sed sapien vel dictum.',
                leading: const DemoSearchOptionLeadingWidget(),
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
            SearchOption(
                title: 'Title 8.4',
                value: '8.4',
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
            SearchOption(
                title: 'Title 8.5',
                value: '8.5',
                subtitle: 'metadata',
                onTap: () {
                  Navigator.pop(context);
                  _onOptionTap(context);
                }),
          ]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Search Dialog'),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding8),
          child: ComponentSubheader(
              title: "Demo Sample data - search 'title' or numbers '1-8'"),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding8),
          child: ComponentSubheader(title: 'Default Configurations'),
        ),
        ElevatedButton.icon(
          onPressed: () {
            (context.isSmall || context.isXSmall)
                ? showModalBottomSheet(
                    context: context,
                    builder: (_) => FmiBottomSheetWrapper(
                            child: FmiSearchDialog(
                          onChanged: (query) {
                            _onChanged(query, _);
                          },
                          searchResults: SearchResults(
                              categories: _displayCategories,
                              onNoResultRedirect: () {
                                Navigator.pop(_);
                                _showNoResultRedirect(context);
                              }),
                        )))
                : showDialog(
                    context: context,
                    builder: (_) => FmiDialogWrapper(
                            child: FmiSearchDialog(
                          onChanged: (query) {
                            _onChanged(query, _);
                          },
                          searchResults: SearchResults(
                              categories: _displayCategories,
                              onNoResultRedirect: () {
                                Navigator.pop(_);
                                _showNoResultRedirect(context);
                              }),
                        )));
          },
          icon: const FaIcon(
            FontAwesomeIcons.solidMagnifyingGlass,
          ),
          label: const Text('Search Demo'),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding8),
          child: ComponentSubheader(title: 'Optional Configurations'),
        ),
        ElevatedButton.icon(
          onPressed: () {
            (context.isSmall || context.isXSmall)
                ? showModalBottomSheet(
                    context: context,
                    builder: (_) => FmiBottomSheetWrapper(
                            child: FmiSearchDialog(
                          hideElevation: true,
                          useCircleShape: true,
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .fmiBaseThemeAltSurfaceInverseAltSurface,
                          fieldTitle: 'Field Title',
                          onChanged: (query) {
                            _onChanged(query, _);
                          },
                          searchResults: SearchResults(
                              categories: _displayCategories,
                              onNoResultRedirect: () {
                                Navigator.pop(_);
                                _showNoResultRedirect(context);
                              }),
                        )))
                : showDialog(
                    context: context,
                    builder: (_) => FmiDialogWrapper(
                            child: FmiSearchDialog(
                          hideElevation: true,
                          useCircleShape: true,
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .fmiBaseThemeAltSurfaceInverseAltSurface,
                          fieldTitle: 'Field Title',
                          onChanged: (query) {
                            _onChanged(query, _);
                          },
                          searchResults: SearchResults(
                              categories: _displayCategories,
                              noResultText: 'no result text',
                              onNoResultRedirect: () {
                                Navigator.pop(_);
                                _showNoResultRedirect(context);
                              }),
                        )));
          },
          icon: const FaIcon(
            FontAwesomeIcons.solidMagnifyingGlass,
          ),
          label: const Text('Search Demo'),
        ),
      ],
    );
  }
}
