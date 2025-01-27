import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoFABThemes extends StatelessWidget {
  const DemoFABThemes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Floating Action Button'),
        Padding(
          padding: const EdgeInsets.only(
              left: FMIThemeBase.basePaddingSmall,
              bottom: FMIThemeBase.basePaddingMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: const Icon(
                            FontAwesomeIcons.plus,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                        child: FloatingActionButton.small(
                          onPressed: () {},
                          child: const Icon(
                            FontAwesomeIcons.plus,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                        child: FloatingActionButton.large(
                          onPressed: () {},
                          child: const Icon(
                            FontAwesomeIcons.plus,
                          ),
                        ),
                      ),
                    ],
                  ),
                // ],
              ),
              const ComponentSubheader(
                  title:
                      'FAB primary - FmiFloatingActionButtonTheme.primary (default, small, large)'),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                      child: Theme(
                          data: FmiFloatingActionButtonTheme.primary(context),
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: const Icon(
                              FontAwesomeIcons.plus,
                            ),
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                      child: Theme(
                          data: FmiFloatingActionButtonTheme.primary(context),
                          child: FloatingActionButton.small(
                            onPressed: () {},
                            child: const Icon(
                              FontAwesomeIcons.plus,
                            ),
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                      child: Theme(
                          data: FmiFloatingActionButtonTheme.primary(context),
                          child: FloatingActionButton.large(
                            onPressed: () {},
                            child: const Icon(
                              FontAwesomeIcons.plus,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const ComponentSubheader(
                  title:
                      'FAB secondary - FmiFloatingActionButtonTheme.secondary (default, small, large)'),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                      child: Theme(
                          data: FmiFloatingActionButtonTheme.secondary(context),
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: const Icon(
                              FontAwesomeIcons.plus,
                            ),
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                      child: Theme(
                          data: FmiFloatingActionButtonTheme.secondary(context),
                          child: FloatingActionButton.small(
                            onPressed: () {},
                            child: const Icon(
                              FontAwesomeIcons.plus,
                            ),
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                      child: Theme(
                          data: FmiFloatingActionButtonTheme.secondary(context),
                          child: FloatingActionButton.large(
                            onPressed: () {},
                            child: const Icon(
                              FontAwesomeIcons.plus,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const ComponentSubheader(
                  title:
                      'FAB elevated - FmiFloatingActionButtonTheme.elevated (default, small, large)'),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                      child: Theme(
                        data: FmiFloatingActionButtonTheme.elevated(context),
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: const Icon(
                            FontAwesomeIcons.plus,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                      child: Theme(
                        data: FmiFloatingActionButtonTheme.elevated(context),
                        child: FloatingActionButton.small(
                          onPressed: () {},
                          child: const Icon(
                            FontAwesomeIcons.plus,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                      child: Theme(
                        data: FmiFloatingActionButtonTheme.elevated(context),
                        child: FloatingActionButton.large(
                          onPressed: () {},
                          child: const Icon(
                            FontAwesomeIcons.plus,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
