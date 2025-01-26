##### Examples

```dart                                   
FmiTimeline(
  steps: [
    TimelineStep(
      state: TimelineStepState.inProgress,
      title: "Pre-work Inspection",
      assignment: "Ryan Johnson",
      bodyText: "Waiting for approval since 11/5/2022 @ 12:20:00",
      onTapped: (){
        showDialog(
          context: context,
          builder: (_) =>
            ConfirmationDialog(
              title: "Tapped!",
              message: "Step One tapped."!,
            )
        );
      },
      subSteps: [
        TimelineStepSubStep(
          title: "Sub-Step One",
          bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore",
          iconData: FontAwesomeIcons.lightPaperclip,
          onTapped: (){
            showDialog(
              context: context,
              builder: (_) =>
                ConfirmationDialog(
                  title: "Tapped!",
                  message: "Sub-Step One tapped."!,
                )
            );
          },
        ),
        TimelineStepSubStep(
          title: "Sub-Step Two",
          bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore",
          iconData: FontAwesomeIcons.lightPaperclip,
          onTapped: (){
            showDialog(
              context: context,
              builder: (_) =>
                ConfirmationDialog(
                  title: "Tapped!",
                  message: "Sub-Step Two tapped."!,
                )
            );
          }
        ),
        TimelineStepSubStep(
          title: "Sub-Step Three",
          bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore",
          iconData: FontAwesomeIcons.lightPaperclip,
          onTapped: (){
            showDialog(
              context: context,
              builder: (_) =>
                ConfirmationDialog(
                  title: "Tapped!",
                  message: "Sub-Step Three tapped."!,
                )
            );
          }
        ),
      ]
    ),
    TimelineStep(
      state: TimelineStepState.notStarted,
      title: "Firewatch Person",
      assignment: "Mike Greenwald",
      bodyText: "Waiting for approval since 11/5/2022 @ 12:20:00"
    ),
    TimelineStep(
      state: TimelineStepState.notStarted,
      title: "Final Inspection",
      assignment: "Sarah Hamm",
      bodyText: "Waiting for approval since 11/5/2022 @ 12:20:00"
    ),
  ],
)
```
```dart
FmiTimeline(
            steps: [
              TimelineStep(
                trailingButtonCallback: () {
                    showDialog(
                      context: context,
                      builder: (_) => const ConfirmationDialog(
                        title: "Tapped!",
                        message: "Trailing icon tapped.",
                    ));
                },
                connectingLineColorOverride:
                    Theme.of(context).colorScheme.surfaceContainerHighest,
                dateTime: DateTime(2023, 7, 3, 11, 12, 17),
                state: TimelineStepState.success,
                title: "Raised",
                assignment: "Ethan Kircher",
                showSubstepConnectingLine: false,
                subSteps: [
                  TimelineStepSubStep(
                    title: "Assigned - John Jacobs",
                    dateTime: DateTime(2023, 7, 3, 11, 12, 17),
                    timelineIconOverride: FontAwesomeIcons.arrowRight,
                    timelineIconColorOverride:
                        Theme.of(context).colorScheme.tertiary,
                
                  ),
                  TimelineStepSubStep(
                      title: "Due Date – July 10, 2023",
                      dateTime: DateTime(2023, 7, 3, 11, 12, 17),
                      timelineIconOverride: FontAwesomeIcons.solidCalendar,
                      timelineIconColorOverride:
                          Theme.of(context).colorScheme.primary,
                  ),
                ],
               
                iconOverride: FontAwesomeIcons.solidTriangleExclamation,
                iconBackgroundOverride:
                    Theme.of(context).colorScheme.fmiBaseThemeDangerDanger,
              ),
              TimelineStep(
                  connectingLineColorOverride:
                      Theme.of(context).colorScheme.surfaceContainerHighest,
                  iconOverride: FontAwesomeIcons.solidComment,
                  iconBackgroundOverride:
                      Theme.of(context).colorScheme.tertiary,
                  dateTime: DateTime(2023, 7, 3, 11, 12, 17),
                  state: TimelineStepState.success,
                  title: "Comment",
                  assignment: "Ethan Kircher",
                  commentBody:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"),
              TimelineStep(
                  connectingLineColorOverride:
                      Theme.of(context).colorScheme.surfaceContainerHighest,
                  dateTime: DateTime(2023, 7, 3, 11, 12, 17),
                  state: TimelineStepState.inProgress,
                  iconOverride: FontAwesomeIcons.clockRotateLeft,
                  title: "Due Date Request - October 1, 2023",
                  assignment: "Ethan Kircher",
                  commentBody:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                  showSubstepConnectingLine: false,
                  subSteps: [
                    TimelineStepSubStep(
                      dateTime: DateTime(2023, 7, 3, 11, 12, 17),
                      timelineIconOverride: FontAwesomeIcons.ban,
                      timelineIconColorOverride: Theme.of(context)
                          .colorScheme
                          .fmiBaseThemeDangerDanger,
                      title: "Rejected - Michael Waldron",
                      commentBody:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                    )
                  ]),
              TimelineStep(
                connectingLineColorOverride:
                    Theme.of(context).colorScheme.surfaceContainerHighest,
                iconOverride: FontAwesomeIcons.solidLink,
                dateTime: DateTime(2023, 7, 3, 11, 12, 17),
                state: TimelineStepState.inProgress,
                title: "Link",
                assignment: "Michael Waldron",
                link: Uri.parse('https://fcx.com/link248977'),
              ),
            ],
          ),
```
`  `
