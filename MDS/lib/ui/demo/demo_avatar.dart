import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoAvatar extends StatefulWidget {
  const DemoAvatar({Key? key}) : super(key: key);

  @override
  State<DemoAvatar> createState() => _DemoAvatarState();
}

class _DemoAvatarState extends State<DemoAvatar> {
  bool includeLabel = false;
  bool showBadgeBorder = true;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: CustomScrollBehavior.horizontalScrollConfiguration(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ComponentHeader(title: 'Fmi Avatar'),
          Padding(
            padding: const EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
            child: Row(
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
                const Text("Show Name Label")
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                value: showBadgeBorder,
                onChanged: (bool? value) {
                  setState(() {
                    showBadgeBorder = value!;
                  });
                },
              ),
              const Text("Show Badge Border")
            ],
          ),
          getScrollWrapper(
            [
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          url:
                              "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg",
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          url:
                              "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg",
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          onSelectedChanged: (val) {},
                          disabled: true,
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          url:
                              "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg",
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          initialIsSelected: true,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          url:
                              "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg",
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          initialIsSelected: true,
                          onSelectedChanged: (val) {},
                          disabled: true,
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(
                FmiAvatarSize.values
                    .map((size) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: FMIThemeBase.basePadding4),
                          child: FmiAvatar(
                            displayName: "BOB JANCOSKI",
                            avatarSize: size,
                            onSelectedChanged: (val) {},
                            includeLabel: includeLabel,
                          ),
                        ))
                    .toList(),
              ),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          onSelectedChanged: (val) {},
                          disabled: true,
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          initialIsSelected: true,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          initialIsSelected: true,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                          disabled: true,
                        ),
                      ))
                  .toList()),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
            child: ComponentSubheader(title: 'SelectedBehaviorOff = true'),
          ),
          getScrollWrapper(
            [
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "Rose Modalin Buccna Teeran",
                          avatarSize: size,
                          initialIsSelected: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                          selectedBehaviorOff: true,
                          splitTwoLine: true,
                          showBadge: true,
                          showBadgeBorder: showBadgeBorder,
                          badgeIcon: FontAwesomeIcons.o,
                          badgeIconColor:
                              Theme.of(context).colorScheme.fmiFormContainer,
                          badgeBackgroundColor:
                              Theme.of(context).colorScheme.fmiForm,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "John McGill Doe",
                          avatarSize: size,
                          initialIsSelected: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                          selectedBehaviorOff: true,
                          splitTwoLine: true,
                          showBadge: true,
                          showBadgeBorder: showBadgeBorder,
                          badgeIcon: FontAwesomeIcons.solidClipboardListCheck,
                          badgeIconColor: Theme.of(context)
                              .colorScheme
                              .fmiNonAdverseTaskContainer,
                          badgeBackgroundColor:
                              Theme.of(context).colorScheme.fmiNonAdverseTask,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "Jane Doe",
                          avatarSize: size,
                          initialIsSelected: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                          selectedBehaviorOff: true,
                          splitTwoLine: true,
                          showBadge: true,
                          showBadgeBorder: showBadgeBorder,
                          badgeIcon: FontAwesomeIcons.solidTriangleExclamation,
                          badgeIconColor: Theme.of(context)
                              .colorScheme
                              .fmiTrainingContainer,
                          badgeBackgroundColor:
                              Theme.of(context).colorScheme.fmiTraining,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "Jane Doe",
                          avatarSize: size,
                          initialIsSelected: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                          selectedBehaviorOff: true,
                          splitTwoLine: true,
                          showBadge: true,
                          showBadgeBorder: showBadgeBorder,
                          badgeIcon: FontAwesomeIcons.solidExclamation,
                          badgeIconColor: Theme.of(context)
                              .colorScheme
                              .fmiMyActionContainer,
                          badgeBackgroundColor:
                              Theme.of(context).colorScheme.fmiMyAction,
                        ),
                      ))
                  .toList()),
            ],
          ),
          getScrollWrapper(
            [
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "Wil Wheaton",
                          avatarSize: size,
                          initialIsSelected: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                          selectedBehaviorOff: true,
                          splitTwoLine: true,
                          showBadge: true,
                          showBadgeBorder: showBadgeBorder,
                          badgeIcon: FontAwesomeIcons.solidGraduationCap,
                          badgeIconColor: Theme.of(context).colorScheme.onError,
                          badgeBackgroundColor:
                              Theme.of(context).colorScheme.error,
                          badgePosition: AlignmentPosition.bottomLeft,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "Marilyn Monroe",
                          avatarSize: size,
                          initialIsSelected: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                          selectedBehaviorOff: true,
                          splitTwoLine: true,
                          showBadge: true,
                          showBadgeBorder: showBadgeBorder,
                          badgeIcon: FontAwesomeIcons.solidGraduationCap,
                          badgeIconColor: Theme.of(context).colorScheme.onError,
                          badgeBackgroundColor:
                              Theme.of(context).colorScheme.error,
                          badgePosition: AlignmentPosition.topLeft,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "Rose Modalin Buccna Teeran",
                          avatarSize: size,
                          initialIsSelected: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                          selectedBehaviorOff: true,
                          splitTwoLine: true,
                          showBadge: true,
                          showBadgeBorder: showBadgeBorder,
                          badgeIcon: FontAwesomeIcons.solidGraduationCap,
                          badgeIconColor: Theme.of(context).colorScheme.onError,
                          badgeBackgroundColor:
                              Theme.of(context).colorScheme.error,
                          badgePosition: AlignmentPosition.topRight,
                        ),
                      ))
                  .toList()),
              getMapWrapper(
                FmiAvatarSize.values
                    .map((size) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: FMIThemeBase.basePadding4),
                          child: FmiAvatar(
                            displayName: "Jane Doe",
                            avatarSize: size,
                            initialIsSelected: false,
                            onSelectedChanged: (val) {},
                            includeLabel: includeLabel,
                            selectedBehaviorOff: true,
                            splitTwoLine: true,
                            showBadge: true,
                            showBadgeBorder: showBadgeBorder,
                            badgeIcon: FontAwesomeIcons.solidGraduationCap,
                            badgeIconColor:
                                Theme.of(context).colorScheme.onError,
                            badgeBackgroundColor:
                                Theme.of(context).colorScheme.error,
                            badgePosition: AlignmentPosition.bottomRight,
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
            child: ComponentSubheader(title: 'useCircleShape = false'),
          ),
          getScrollWrapper(
            [
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          url:
                              "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg",
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          useCircleShape: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          url:
                              "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg",
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          useCircleShape: false,
                          onSelectedChanged: (val) {},
                          disabled: true,
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          url:
                              "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg",
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          initialIsSelected: true,
                          useCircleShape: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          url:
                              "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg",
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          initialIsSelected: true,
                          useCircleShape: false,
                          onSelectedChanged: (val) {},
                          disabled: true,
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          useCircleShape: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          useCircleShape: false,
                          onSelectedChanged: (val) {},
                          disabled: true,
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "BOB JANCOSKI",
                          avatarSize: size,
                          initialIsSelected: true,
                          useCircleShape: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                        ),
                      ))
                  .toList()),
              getMapWrapper(
                FmiAvatarSize.values
                    .map((size) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: FMIThemeBase.basePadding4),
                          child: FmiAvatar(
                            displayName: "BOB JANCOSKI",
                            avatarSize: size,
                            initialIsSelected: true,
                            useCircleShape: false,
                            onSelectedChanged: (val) {},
                            includeLabel: includeLabel,
                            disabled: true,
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
            child: ComponentSubheader(
                title: 'SelectedBehaviorOff = true & useCircleShape = false'),
          ),
          getScrollWrapper(
            [
              getMapWrapper(
                FmiAvatarSize.values
                    .map((size) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: FMIThemeBase.basePadding4),
                          child: FmiAvatar(
                            displayName: "Marilyn Monroe",
                            avatarSize: size,
                            initialIsSelected: false,
                            useCircleShape: false,
                            onSelectedChanged: (val) {},
                            includeLabel: includeLabel,
                            selectedBehaviorOff: true,
                            splitTwoLine: true,
                            showBadge: true,
                            showBadgeBorder: showBadgeBorder,
                            badgeIcon: FontAwesomeIcons.o,
                            badgeIconColor:
                                Theme.of(context).colorScheme.fmiFormContainer,
                            badgeBackgroundColor:
                                Theme.of(context).colorScheme.fmiForm,
                          ),
                        ))
                    .toList(),
              ),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "Wil Wheaton",
                          avatarSize: size,
                          initialIsSelected: false,
                          useCircleShape: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                          selectedBehaviorOff: true,
                          splitTwoLine: true,
                          showBadge: true,
                          showBadgeBorder: showBadgeBorder,
                          badgeIcon: FontAwesomeIcons.solidClipboardListCheck,
                          badgeIconColor: Theme.of(context)
                              .colorScheme
                              .fmiNonAdverseTaskContainer,
                          badgeBackgroundColor:
                              Theme.of(context).colorScheme.fmiNonAdverseTask,
                        ),
                      ))
                  .toList()),
              getMapWrapper(
                FmiAvatarSize.values
                    .map((size) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: FMIThemeBase.basePadding4),
                          child: FmiAvatar(
                            displayName: "John McGill Doe",
                            avatarSize: size,
                            initialIsSelected: false,
                            useCircleShape: false,
                            onSelectedChanged: (val) {},
                            includeLabel: includeLabel,
                            selectedBehaviorOff: true,
                            splitTwoLine: true,
                            showBadge: true,
                            showBadgeBorder: showBadgeBorder,
                            badgeIcon:
                                FontAwesomeIcons.solidTriangleExclamation,
                            badgeIconColor: Theme.of(context)
                                .colorScheme
                                .fmiTrainingContainer,
                            badgeBackgroundColor:
                                Theme.of(context).colorScheme.fmiTraining,
                          ),
                        ))
                    .toList(),
              ),
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "Jane Doe",
                          avatarSize: size,
                          initialIsSelected: false,
                          useCircleShape: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                          selectedBehaviorOff: true,
                          splitTwoLine: true,
                          showBadge: true,
                          showBadgeBorder: showBadgeBorder,
                          badgeIcon: FontAwesomeIcons.solidExclamation,
                          badgeIconColor: Theme.of(context)
                              .colorScheme
                              .fmiMyActionContainer,
                          badgeBackgroundColor:
                              Theme.of(context).colorScheme.fmiMyAction,
                        ),
                      ))
                  .toList()),
            ],
          ),
          getScrollWrapper(
            [
              getMapWrapper(FmiAvatarSize.values
                  .map((size) => Padding(
                      padding: const EdgeInsets.only(
                          bottom: FMIThemeBase.basePadding4),
                      child: FmiAvatar(
                        displayName: "Jane Doe",
                        avatarSize: size,
                        initialIsSelected: false,
                        onSelectedChanged: (val) {},
                        includeLabel: includeLabel,
                        selectedBehaviorOff: true,
                        useCircleShape: false,
                        splitTwoLine: true,
                        showBadge: true,
                        showBadgeBorder: showBadgeBorder,
                        badgeIcon: FontAwesomeIcons.solidGraduationCap,
                        badgeIconColor: Theme.of(context).colorScheme.onError,
                        badgeBackgroundColor:
                            Theme.of(context).colorScheme.error,
                        badgePosition: AlignmentPosition.topLeft,
                      )))
                  .toList()),
              getMapWrapper(
                FmiAvatarSize.values
                    .map((size) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: FMIThemeBase.basePadding4),
                        child: FmiAvatar(
                          displayName: "Rose Modalin Buccna Teeran",
                          avatarSize: size,
                          initialIsSelected: false,
                          useCircleShape: false,
                          onSelectedChanged: (val) {},
                          includeLabel: includeLabel,
                          selectedBehaviorOff: true,
                          splitTwoLine: true,
                          showBadge: true,
                          showBadgeBorder: showBadgeBorder,
                          badgeIcon: FontAwesomeIcons.solidGraduationCap,
                          badgeIconColor: Theme.of(context).colorScheme.onError,
                          badgeBackgroundColor:
                              Theme.of(context).colorScheme.error,
                          badgePosition: AlignmentPosition.bottomLeft,
                        )))
                    .toList(),
              ),
              getMapWrapper(
                FmiAvatarSize.values
                    .map((size) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: FMIThemeBase.basePadding4),
                          child: FmiAvatar(
                            displayName: "John McGill Doe",
                            avatarSize: size,
                            initialIsSelected: false,
                            useCircleShape: false,
                            onSelectedChanged: (val) {},
                            includeLabel: includeLabel,
                            selectedBehaviorOff: true,
                            splitTwoLine: true,
                            showBadge: true,
                            showBadgeBorder: showBadgeBorder,
                            badgeIcon: FontAwesomeIcons.solidGraduationCap,
                            badgeIconColor:
                                Theme.of(context).colorScheme.onError,
                            badgeBackgroundColor:
                                Theme.of(context).colorScheme.error,
                            badgePosition: AlignmentPosition.topRight,
                          ),
                        ))
                    .toList(),
              ),
              getMapWrapper(
                FmiAvatarSize.values
                    .map((size) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: FMIThemeBase.basePadding4),
                          child: FmiAvatar(
                            displayName: "Jane Doe",
                            avatarSize: size,
                            initialIsSelected: false,
                            useCircleShape: false,
                            onSelectedChanged: (val) {},
                            includeLabel: includeLabel,
                            selectedBehaviorOff: true,
                            splitTwoLine: true,
                            showBadge: true,
                            showBadgeBorder: showBadgeBorder,
                            badgeIcon: FontAwesomeIcons.solidGraduationCap,
                            badgeIconColor:
                                Theme.of(context).colorScheme.onError,
                            badgeBackgroundColor:
                                Theme.of(context).colorScheme.error,
                            badgePosition: AlignmentPosition.bottomRight,
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getScrollWrapper(List<Widget> children) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: children),
    );
  }

  Widget getMapWrapper(List<Widget> children) {
    return Padding(
      padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
      child: Column(children: children),
    );
  }
}
