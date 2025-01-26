import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class FmiPeopleCard extends StatefulWidget {
  final String title;
  final Widget? trailing;
  final List<TabItem> tabs;

  const FmiPeopleCard(
      {Key? key, required this.title, required this.tabs, this.trailing})
      : super(key: key);

  @override
  State<FmiPeopleCard> createState() => _FmiPeopleCardState();
}

class _FmiPeopleCardState extends State<FmiPeopleCard>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: widget.tabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseDashboardCard(
        child: Column(
      children: [
        CardHeaderListTile(
          title: widget.title,
          trailing: widget.trailing,
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: FMIThemeBase.basePaddingLarge,
              right: FMIThemeBase.basePaddingLarge),
          child: TabBar(
              unselectedLabelColor:
                  Theme.of(context).colorScheme.onSurfaceVariant,
              labelColor: Theme.of(context).colorScheme.primary,
              indicator: ShapeDecoration(
                  shape: UnderlineInputBorder(
                      borderSide: BorderSide(
                width: 3,
                color: Theme.of(context).colorScheme.primary,
              ))),
              controller: _controller,
              tabs: [
                for (int i = 0; i < widget.tabs.length; i++)
                  widget.tabs[i].displayBadge == true &&
                          widget.tabs[i].employees != null &&
                          widget.tabs[i].employees!.isNotEmpty
                      ? FmiBadge(
                          size: BadgeSize.medium,
                          backgroundColor: BadgeColor.warning,
                          child: Tab(text: widget.tabs[i].label),
                          text: widget.tabs[i].employees != null &&
                                  widget.tabs[i].employees!.isNotEmpty
                              ? widget.tabs[i].employees!.length.toString()
                              : '0')
                      : Tab(text: widget.tabs[i].label)
              ]),
        ),
        SizedBox(
          height: 120,
          child: TabBarView(controller: _controller, children: [
            for (int i = 0; i < widget.tabs.length; i++)
              Column(
                children: [
                  if (widget.tabs[i].employees != null &&
                      widget.tabs[i].employees!.isNotEmpty)
                    _innerContent(context, widget.tabs[i].employees!)
                  else ...{
                    _noContent(context, widget.tabs[i].noContentMessage)
                  },
                  if (widget.tabs[i].button != null)
                    Padding(
                      padding: const EdgeInsets.only(
                          top: FMIThemeBase.basePaddingMedium,
                          bottom: FMIThemeBase.basePaddingMedium),
                      child: TextButton(
                          onPressed: widget.tabs[i].button!.onTapped,
                          child: Text(
                            widget.tabs[i].button!.label,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                          )),
                    )
                ],
              ),
          ]),
        ),
      ],
    ));
  }

  Widget _innerContent(BuildContext context, List<Employee> employees) {
    return Padding(
      padding: const EdgeInsets.all(FMIThemeBase.basePaddingLarge),
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
                            onSelectedChanged: (isSelected) =>
                                _showDialog(context),
                            selectedBehaviorOff: true,
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

  Widget _noContent(BuildContext context, String message) {
    return Padding(
      padding: const EdgeInsets.all(FMIThemeBase.basePaddingLarge),
      child: Container(
          height: 32,
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              message,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeSecondaryInverseSecondary),
            )
          ])),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const PlaceholderDialog();
        });
  }
}
