import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/models/navigation/models.dart';
import 'package:poc/ui/components/components.dart';

class NoTabbedWidget extends StatelessWidget {
  final PageSourceModel page;

  const NoTabbedWidget({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          body: page.overviewContent != null
              ? SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: FMIThemeBase.basePaddingXxLarge,
                        horizontal: context.outerGutter),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: FMIThemeBase.basePaddingXLarge),
                          child: Text(page.name,
                              style: Theme.of(context).textTheme.displayMedium),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: SingleChildScrollView(
                            child: MarkdownDisplayWidget(
                              file: page.overviewContent as String,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : (const Text("Error retrieving markdown contents."))),
    );
  }
}
