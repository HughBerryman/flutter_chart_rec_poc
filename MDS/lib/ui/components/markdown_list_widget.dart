import 'package:flutter/material.dart';
import 'package:poc/models/navigation/models.dart';
import 'package:poc/ui/components/components.dart';

class MarkdownListWidget extends StatelessWidget {
  final List<ContentSourceModel> contents;

  const MarkdownListWidget({Key? key, required this.contents})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: contents.length,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: MarkdownDisplayWidget(file: contents[index].content),
        );
      }),
    );
  }
}
