import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoSearch extends StatefulWidget {
  const DemoSearch({Key? key}) : super(key: key);

  @override
  State<DemoSearch> createState() => _DemoSearchState();
}

class _DemoSearchState extends State<DemoSearch> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ComponentHeader(title: 'Search Default'),
            const Padding(
              padding: EdgeInsets.only(
                  top: FMIThemeBase.basePaddingMedium,
                  bottom: FMIThemeBase.basePaddingMedium),
              child: ComponentSubheaderLink(
                  linkText: 'Search Delegate Flutter Documentation',
                  url:
                      'https://api.flutter.dev/flutter/material/SearchDelegate-class.html'),
            ),
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              icon: const Icon(FontAwesomeIcons.solidMagnifyingGlass),
            )
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Corn',
    'Carrots',
    'Lettuce',
    'Kale',
    'Peas',
    'Beets',
    'Celery'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(FontAwesomeIcons.xmark))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(FontAwesomeIcons.arrowLeft),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var vegetable in searchTerms) {
      if (vegetable.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(vegetable);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var vegetable in searchTerms) {
      if (vegetable.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(vegetable);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
