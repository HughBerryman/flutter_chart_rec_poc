import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class FmiTeamCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final CardItem leftCard;
  final CardItem centerCard;
  final CardItem rightCard;
  final String employeeLabel;
  final String noContentMessage;
  final List<Employee>? employees;

  const FmiTeamCard(
      {Key? key,
      required this.title,
      this.subtitle,
      this.trailing,
      required this.leftCard,
      required this.centerCard,
      required this.rightCard,
      required this.employeeLabel,
      required this.noContentMessage,
      this.employees})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseDashboardCard(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CardHeaderListTile(
            title: title, subtitle: subtitle, trailing: trailing),
        Padding(
          padding: const EdgeInsets.only(
              left: FMIThemeBase.basePaddingLarge,
              top: FMIThemeBase.basePaddingLarge,
              right: FMIThemeBase.basePaddingLarge,
              bottom: FMIThemeBase.basePadding4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: _getCard(context, leftCard)),
              Expanded(child: _getCard(context, centerCard)),
              Expanded(child: _getCard(context, rightCard))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left:
                  FMIThemeBase.basePaddingLarge + FMIThemeBase.basePaddingSmall,
              top: FMIThemeBase.basePaddingMedium,
              right: FMIThemeBase.basePaddingLarge,
              bottom: FMIThemeBase.basePaddingMedium),
          child: Text(
            employeeLabel +
                ' (' +
                (employees != null && employees!.isNotEmpty
                    ? employees!.length.toString()
                    : 0.toString()) +
                ')',
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
        if (employees != null && employees!.isNotEmpty)
          _innerContent(context, employees!)
        else ...{_noContent(context)}
      ]),
    );
  }

  Widget _getCard(BuildContext context, CardItem card) {
    return InkWell(
      onTap: card.onTapped,
      child: Theme(
        data: FmiCardTheme.filled(context),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePadding8),
            child: Column(
              children: [
                Text(card.count.toString(),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .fmiBaseThemeAltSurfaceInverseOnAltSurface)),
                Text(card.label,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .fmiBaseThemeAltSurfaceInverseOnAltSurface))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _innerContent(BuildContext context, List<Employee> employees) {
    return Padding(
      padding: const EdgeInsets.only(
        left: FMIThemeBase.basePadding8,
        top: FMIThemeBase.basePaddingMedium,
        right: FMIThemeBase.basePadding8,
        bottom: FMIThemeBase.basePaddingXLarge,
      ),
      child: Column(
        children: [
          ScrollConfiguration(
            behavior:
                CustomScrollBehavior.horizontalScrollConfiguration(context),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 1; i <= employees.length; i++)
                      Padding(
                        padding: EdgeInsets.only(
                            right: i < employees.length
                                ? FMIThemeBase.basePaddingLarge
                                : 0),
                        child: FmiAvatar(
                            avatarSize: FmiAvatarSize.large,
                            url: employees[i - 1].photoUrl,
                            displayName: employees[i - 1].displayName ?? ''),
                      ),
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget _noContent(BuildContext context) {
    return Container(
        height: 66,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              noContentMessage,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeSecondaryInverseSecondary),
            )
          ],
        ));
  }
}
