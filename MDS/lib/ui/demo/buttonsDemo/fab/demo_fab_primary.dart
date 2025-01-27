import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoFabPrimary extends StatelessWidget {
  const DemoFabPrimary({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: FMIThemeBase.basePaddingSmall,
              bottom: FMIThemeBase.basePaddingMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ComponentHeader(
                  title:
                      'FAB – Primary – FmiFloatingActionButtonTheme.primary'),
              ScrollConfiguration(
                behavior:
                    CustomScrollBehavior.horizontalScrollConfiguration(context),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                        child: Theme(
                          data: FmiFloatingActionButtonTheme.primary(context),
                          child: FloatingActionButton.extended(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.plus,
                            ),
                            label: const Text("Button"),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                        child: Theme(
                            data: FmiFloatingActionButtonTheme.primary(context),
                            child: FloatingActionButton.small(
                              onPressed: () {},
                              child: const FaIcon(
                                FontAwesomeIcons.plus,
                              ),
                            )),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                        child: Theme(
                            data: FmiFloatingActionButtonTheme.primary(context),
                            child: FloatingActionButton(
                              onPressed: () {},
                              child: const FaIcon(
                                FontAwesomeIcons.plus,
                              ),
                            )),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                        child: SizedBox(
                          height: FMIThemeBase.baseContainerDimension72,
                          width: FMIThemeBase.baseContainerDimension72,
                          child: Theme(
                            data: FmiFloatingActionButtonTheme.primary(context),
                            child: FloatingActionButton(
                              onPressed: () {},
                              child: const FaIcon(
                                FontAwesomeIcons.plus,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                        child: Theme(
                            data: FmiFloatingActionButtonTheme.primary(context),
                            child: FloatingActionButton.large(
                              onPressed: () {},
                              child: const FaIcon(
                                FontAwesomeIcons.plus,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
