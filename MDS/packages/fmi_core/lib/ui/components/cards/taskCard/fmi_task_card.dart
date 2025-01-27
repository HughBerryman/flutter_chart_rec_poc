import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class FmiTaskCard extends StatefulWidget {
  final String title;
  final Widget? trailing;
  final List<TaskItem>? tasks;

  const FmiTaskCard({Key? key, required this.title, this.trailing, this.tasks})
      : super(key: key);

  @override
  State<FmiTaskCard> createState() => _FmiTaskCardState();
}

class _FmiTaskCardState extends State<FmiTaskCard> {
  @override
  Widget build(BuildContext context) {
    return BaseDashboardCard(
      child: Column(
        children: [
          CardHeaderListTile(title: widget.title, trailing: widget.trailing),
          if (widget.tasks != null && widget.tasks!.isNotEmpty)
            Container(
                constraints: const BoxConstraints(minHeight: 192),
                child: Column(children: [
                  for (var i = 0;
                      i < (widget.tasks!.length < 3 ? widget.tasks!.length : 3);
                      i++)
                    ListTile(
                      onTap: showDialog,
                      leading: widget.tasks![i].leading,
                      title: widget.tasks![i].overline != null
                          ? TitleWithOverlineWidget(
                              title: widget.tasks![i].title,
                              overline: widget.tasks![i].overline!)
                          : Text(
                              widget.tasks![i].title,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                            ),
                      subtitle: widget.tasks![i].description != null
                          ? Text(
                              widget.tasks![i].description.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                            )
                          : null,
                      trailing: widget.tasks![i].trailing,
                    )
                ]))
          else ...{
            Container(
                height: 244,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.check,
                      size: FMIThemeBase.baseIconXLarge,
                      color: Theme.of(context)
                          .colorScheme
                          .fmiBaseThemeSecondaryInverseSecondary,
                    ),
                    const SizedBox(
                      height: FMIThemeBase.baseGapLarge,
                    ),
                    Text(
                      context.coreLocalize.allCaughtUp,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .fmiBaseThemeSecondaryInverseSecondary),
                    ),
                  ],
                ))
          },
          if (widget.tasks != null && widget.tasks!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePadding5,
                  bottom: FMIThemeBase.basePadding5),
              child: TextButton(
                  onPressed: showDialog,
                  child: Text(
                    context.coreLocalize.viewAll,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  )),
            )
        ],
      ),
    );
  }

  //TODO: Add/Update Dialog functionality and UI
  void showDialog() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TaskCardDialogWidget(
                title: context.coreLocalize.tasks, tasks: widget.tasks!)));
  }
}
