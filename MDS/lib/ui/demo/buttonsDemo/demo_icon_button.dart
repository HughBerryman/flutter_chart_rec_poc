import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/fmi_theme_base.dart';
import 'package:fmi_core/enums/enums.dart';
import 'package:fmi_core/ui/ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoIconButton extends StatefulWidget {
  const DemoIconButton({Key? key}) : super(key: key);

  @override
  State<DemoIconButton> createState() => _DemoIconButtonState();
}

class _DemoIconButtonState extends State<DemoIconButton> {
  bool includeLabel = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ComponentHeader(title: 'Fmi Icon Button'),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  value: includeLabel,
                  onChanged: (bool? value) {
                    setState(() {
                      includeLabel = value!;
                    });
                  },
                ),
                const Text("Show Label")
              ],
            ),
            Row(
              children: [
                const Padding(
                    padding:
                        EdgeInsets.only(left: FMIThemeBase.basePaddingMedium)),
                Row(
                  children: [
                    FmiIconButton(
                        label: 'Form Name Inspection',
                        icon: FontAwesomeIcons.solidClipboard,
                        onClicked: () {},
                        onSelectedChanged: (val) {},
                        includeLabel: includeLabel),
                    const Padding(
                        padding: EdgeInsets.only(
                            left: FMIThemeBase.basePaddingMedium)),
                    FmiIconButton(
                        label: 'Form Name Inspection',
                        icon: FontAwesomeIcons.solidClipboard,
                        onClicked: () {},
                        onSelectedChanged: (val) {},
                        disabled: true,
                        includeLabel: includeLabel),
                    const Padding(
                        padding: EdgeInsets.only(
                            left: FMIThemeBase.basePaddingMedium)),
                    FmiIconButton(
                        label: 'Form Name Inspection',
                        icon: FontAwesomeIcons.solidClipboard,
                        onClicked: () {},
                        onSelectedChanged: (val) {},
                        initialIsSelected: true,
                        includeLabel: includeLabel),
                    const Padding(
                        padding: EdgeInsets.only(
                            left: FMIThemeBase.basePaddingMedium)),
                    FmiIconButton(
                        label: 'Form Name Inspection',
                        icon: FontAwesomeIcons.solidClipboard,
                        onClicked: () {},
                        onSelectedChanged: (val) {},
                        disabled: true,
                        initialIsSelected: true,
                        includeLabel: includeLabel),
                  ],
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
              child: Row(
                children: [
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  Row(
                    children: [
                      FmiIconButton(
                          label: 'Form Name Inspection',
                          icon: FontAwesomeIcons.solidClipboard,
                          iconColor: IconColors.warning,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: FMIThemeBase.basePaddingMedium)),
                      FmiIconButton(
                          label: 'Form Name Inspection',
                          icon: FontAwesomeIcons.solidClipboard,
                          iconColor: IconColors.warning,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          disabled: true,
                          includeLabel: includeLabel),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: FMIThemeBase.basePaddingMedium)),
                      FmiIconButton(
                          label: 'Form Name Inspection',
                          icon: FontAwesomeIcons.solidClipboard,
                          iconColor: IconColors.warning,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          initialIsSelected: true,
                          includeLabel: includeLabel),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: FMIThemeBase.basePaddingMedium)),
                      FmiIconButton(
                          label: 'Form Name Inspection',
                          icon: FontAwesomeIcons.solidClipboard,
                          iconColor: IconColors.warning,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          disabled: true,
                          initialIsSelected: true,
                          includeLabel: includeLabel),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
              child: Row(
                children: [
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  Row(
                    children: [
                      FmiIconButton(
                        label: 'SVG Aircraft',
                        svgIcon: FASafeIcons.interactionAircraft,
                        onClicked: () {},
                        onSelectedChanged: (val) {},
                        includeLabel: includeLabel,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: FMIThemeBase.basePaddingMedium)),
                      FmiIconButton(
                          label: 'SVG Aircraft',
                          svgIcon: FASafeIcons.interactionAircraft,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          disabled: true,
                          includeLabel: includeLabel),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: FMIThemeBase.basePaddingMedium)),
                      FmiIconButton(
                          label: 'SVG Aircraft',
                          svgIcon: FASafeIcons.interactionAircraft,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          initialIsSelected: true,
                          includeLabel: includeLabel),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: FMIThemeBase.basePaddingMedium)),
                      FmiIconButton(
                          label: 'SVG Aircraft',
                          icon: FontAwesomeIcons.solidClipboard,
                          svgIcon: FASafeIcons.interactionAircraft,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          disabled: true,
                          initialIsSelected: true,
                          includeLabel: includeLabel),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    top: FMIThemeBase.basePaddingLarge,
                    bottom: FMIThemeBase.basePaddingMedium),
                child: Row(children: [
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  FmiIconButton(
                    label: 'SVG Warning Aircraft',
                    svgIcon: FASafeIcons.interactionAircraft,
                    onClicked: () {},
                    onSelectedChanged: (val) {},
                    includeLabel: includeLabel,
                    iconColor: IconColors.warning,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  FmiIconButton(
                      label: 'SVG Warning Aircraft',
                      svgIcon: FASafeIcons.interactionAircraft,
                      onClicked: () {},
                      onSelectedChanged: (val) {},
                      disabled: true,
                      includeLabel: includeLabel,
                      iconColor: IconColors.warning),
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  FmiIconButton(
                    label: 'SVG Warning Aircraft',
                    svgIcon: FASafeIcons.interactionAircraft,
                    onClicked: () {},
                    onSelectedChanged: (val) {},
                    initialIsSelected: true,
                    includeLabel: includeLabel,
                    iconColor: IconColors.warning,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  FmiIconButton(
                    label: 'SVG Warning Aircraft',
                    icon: FontAwesomeIcons.solidClipboard,
                    svgIcon: FASafeIcons.interactionAircraft,
                    onClicked: () {},
                    onSelectedChanged: (val) {},
                    disabled: true,
                    initialIsSelected: true,
                    includeLabel: includeLabel,
                    iconColor: IconColors.warning,
                  ),
                ])),
            Row(
              children: [
                const Padding(
                    padding:
                        EdgeInsets.only(left: FMIThemeBase.basePaddingMedium)),
                Row(
                  children: [
                    FmiIconButton(
                        size: IconButtonSize.small,
                        label: 'Form Name Inspection',
                        icon: FontAwesomeIcons.solidClipboard,
                        onClicked: () {},
                        onSelectedChanged: (val) {},
                        includeLabel: includeLabel),
                    const Padding(
                        padding: EdgeInsets.only(
                            left: FMIThemeBase.basePaddingMedium)),
                    FmiIconButton(
                        size: IconButtonSize.small,
                        label: 'Form Name Inspection',
                        icon: FontAwesomeIcons.solidClipboard,
                        onClicked: () {},
                        onSelectedChanged: (val) {},
                        disabled: true,
                        includeLabel: includeLabel),
                    const Padding(
                        padding: EdgeInsets.only(
                            left: FMIThemeBase.basePaddingMedium)),
                    FmiIconButton(
                        size: IconButtonSize.small,
                        label: 'Form Name Inspection',
                        icon: FontAwesomeIcons.solidClipboard,
                        onClicked: () {},
                        onSelectedChanged: (val) {},
                        initialIsSelected: true,
                        includeLabel: includeLabel),
                    const Padding(
                        padding: EdgeInsets.only(
                            left: FMIThemeBase.basePaddingMedium)),
                    FmiIconButton(
                        size: IconButtonSize.small,
                        label: 'Form Name Inspection',
                        icon: FontAwesomeIcons.solidClipboard,
                        onClicked: () {},
                        onSelectedChanged: (val) {},
                        disabled: true,
                        initialIsSelected: true,
                        includeLabel: includeLabel),
                  ],
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
              child: Row(
                children: [
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  Row(
                    children: [
                      FmiIconButton(
                          size: IconButtonSize.small,
                          label: 'Form Name Inspection',
                          icon: FontAwesomeIcons.solidClipboard,
                          iconColor: IconColors.warning,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: FMIThemeBase.basePaddingMedium)),
                      FmiIconButton(
                          size: IconButtonSize.small,
                          label: 'Form Name Inspection',
                          icon: FontAwesomeIcons.solidClipboard,
                          iconColor: IconColors.warning,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          disabled: true,
                          includeLabel: includeLabel),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: FMIThemeBase.basePaddingMedium)),
                      FmiIconButton(
                          size: IconButtonSize.small,
                          label: 'Form Name Inspection',
                          icon: FontAwesomeIcons.solidClipboard,
                          iconColor: IconColors.warning,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          initialIsSelected: true,
                          includeLabel: includeLabel),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: FMIThemeBase.basePaddingMedium)),
                      FmiIconButton(
                          size: IconButtonSize.small,
                          label: 'Form Name Inspection',
                          icon: FontAwesomeIcons.solidClipboard,
                          iconColor: IconColors.warning,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          disabled: true,
                          initialIsSelected: true,
                          includeLabel: includeLabel),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
              child: Row(
                children: [
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  Row(
                    children: [
                      FmiIconButton(
                        size: IconButtonSize.small,
                        label: 'SVG Aircraft',
                        svgIcon: FASafeIcons.interactionAircraft,
                        onClicked: () {},
                        onSelectedChanged: (val) {},
                        includeLabel: includeLabel,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: FMIThemeBase.basePaddingMedium)),
                      FmiIconButton(
                          size: IconButtonSize.small,
                          label: 'SVG Aircraft',
                          svgIcon: FASafeIcons.interactionAircraft,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          disabled: true,
                          includeLabel: includeLabel),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: FMIThemeBase.basePaddingMedium)),
                      FmiIconButton(
                          size: IconButtonSize.small,
                          label: 'SVG Aircraft',
                          svgIcon: FASafeIcons.interactionAircraft,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          initialIsSelected: true,
                          includeLabel: includeLabel),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: FMIThemeBase.basePaddingMedium)),
                      FmiIconButton(
                          size: IconButtonSize.small,
                          label: 'SVG Aircraft',
                          icon: FontAwesomeIcons.solidClipboard,
                          svgIcon: FASafeIcons.interactionAircraft,
                          onClicked: () {},
                          onSelectedChanged: (val) {},
                          disabled: true,
                          initialIsSelected: true,
                          includeLabel: includeLabel),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
                child: Row(children: [
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  FmiIconButton(
                    size: IconButtonSize.small,
                    label: 'SVG Warning Aircraft',
                    svgIcon: FASafeIcons.interactionAircraft,
                    onClicked: () {},
                    onSelectedChanged: (val) {},
                    includeLabel: includeLabel,
                    iconColor: IconColors.warning,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  FmiIconButton(
                      size: IconButtonSize.small,
                      label: 'SVG Warning Aircraft',
                      svgIcon: FASafeIcons.interactionAircraft,
                      onClicked: () {},
                      onSelectedChanged: (val) {},
                      disabled: true,
                      includeLabel: includeLabel,
                      iconColor: IconColors.warning),
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  FmiIconButton(
                    size: IconButtonSize.small,
                    label: 'SVG Warning Aircraft',
                    svgIcon: FASafeIcons.interactionAircraft,
                    onClicked: () {},
                    onSelectedChanged: (val) {},
                    initialIsSelected: true,
                    includeLabel: includeLabel,
                    iconColor: IconColors.warning,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  FmiIconButton(
                    size: IconButtonSize.small,
                    label: 'SVG Warning Aircraft',
                    svgIcon: FASafeIcons.interactionAircraft,
                    onClicked: () {},
                    onSelectedChanged: (val) {},
                    disabled: true,
                    initialIsSelected: true,
                    includeLabel: includeLabel,
                    iconColor: IconColors.warning,
                  ),
                ])),
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePaddingLarge,
                  bottom: FMIThemeBase.basePaddingMedium),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FmiIconButton(
                    size: IconButtonSize.large,
                    label: 'Full Size',
                    svgIcon: FASafeIcons.confinedSpaces,
                    fullSize: true,
                    onClicked: () {},
                    onSelectedChanged: (val) {},
                    includeLabel: includeLabel,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  FmiIconButton(
                    size: IconButtonSize.large,
                    label: 'Full Size',
                    svgIcon: FASafeIcons.confinedSpaces,
                    fullSize: true,
                    onClicked: () {},
                    onSelectedChanged: (val) {},
                    initialIsSelected: false,
                    includeLabel: includeLabel,
                    disabled: true,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  FmiIconButton(
                    size: IconButtonSize.large,
                    label: 'Full Size',
                    svgIcon: FASafeIcons.confinedSpaces,
                    fullSize: true,
                    onClicked: () {},
                    onSelectedChanged: (val) {},
                    initialIsSelected: true,
                    includeLabel: includeLabel,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                          left: FMIThemeBase.basePaddingMedium)),
                  FmiIconButton(
                    size: IconButtonSize.large,
                    label: 'Full Size',
                    svgIcon: FASafeIcons.confinedSpaces,
                    fullSize: true,
                    onClicked: () {},
                    onSelectedChanged: (val) {},
                    initialIsSelected: true,
                    includeLabel: includeLabel,
                    disabled: true,
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),)
          ]),
    );
  }
}
