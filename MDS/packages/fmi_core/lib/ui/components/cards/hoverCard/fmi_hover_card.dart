import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class FmiHoverCard extends StatefulWidget {
  const FmiHoverCard(
      {super.key,
      this.icon,
      required this.title,
      required this.links,
      this.isHeaderElevated = false,
      this.height = 250});

  final Widget? icon;
  final String title;
  final List<HoverCardLink> links;
  final bool? isHeaderElevated;
  final double? height;
  @override
  State<FmiHoverCard> createState() => _FmiHoverCardState();
}

class HoverCardLink {
  final String title;
  final Function() onTap;

  HoverCardLink({required this.title, required this.onTap});
}

class _FmiHoverCardState extends State<FmiHoverCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    TextStyle? titleStyle = Theme.of(context).textTheme.titleLarge?.copyWith(
        fontWeight: FMIThemeBase.baseFontWeightsMedium,
        color: Theme.of(context).colorScheme.onPrimary);

    int getItemCount() {
      if (isExpanded) {
        return widget.links.length;
      } else {
        if (widget.links.length > 4) {
          return 4;
        } else {
          return widget.links.length;
        }
      }
    }

    if (widget.isHeaderElevated!) {
      return getElevatedHoverCard(context, titleStyle, getItemCount);
    } else {
      return getDefaultHoverCard(context, titleStyle, getItemCount);
    }
  }

  // Default variant
  Widget getDefaultHoverCard(
      BuildContext context, TextStyle? textStyle, int Function() getItemCount) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        if (context.isDesktopScreen) {
          setState(() {
            isExpanded = value;
          });
        }
      },
      child: Container(
        constraints: BoxConstraints(minHeight: widget.height!),
        padding: const EdgeInsets.only(
            right: FMIThemeBase.basePadding10,
            left: FMIThemeBase.basePadding10,
            top: FMIThemeBase.basePadding8,
            bottom: FMIThemeBase.basePadding4),
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge),
            color: Theme.of(context).colorScheme.surface),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
                  child: widget.icon,
                ),
                Text(widget.title,
                    style: textStyle?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                    maxLines: 1,
                    overflow: TextOverflow.clip),
                Divider(
                  thickness: 1,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: FMIThemeBase.basePadding2),
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: getItemCount(),
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: widget.links[index].onTap,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(widget.links[index].title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface),
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Icon(
                                  FontAwesomeIcons.chevronRight,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                  size: FMIThemeBase.baseIconSmall,
                                ),
                              ]),
                        );
                      })),
                ),
              ],
            ),
            Visibility(
              visible: !(context.isDesktopScreen && isExpanded ||
                  widget.links.length <= 4),
              child: Center(
                  child: InkWell(
                onTap: () => setState(() {
                  isExpanded = !isExpanded;
                }),
                child: Icon(FontAwesomeIcons.solidEllipsis,
                    color: Theme.of(context).colorScheme.onSurface),
              )),
            ),
          ],
        ),
      ),
    );
  }

  // Elevated variant
  Widget getElevatedHoverCard(
      BuildContext context, TextStyle? textStyle, int Function() getItemCount) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return InkWell(
          onTap: () {},
          onHover: (value) {
            if (context.isDesktopScreen) {
              setState(() {
                isExpanded = value;
              });
            }
          },
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePaddingXxLarge,
                  left: FMIThemeBase.basePadding1),
              child: Container(
                  alignment: Alignment.bottomCenter,
                  constraints: BoxConstraints(minHeight: widget.height! * 0.6),
                  width: constraints.maxWidth - FMIThemeBase.basePadding2,
                  padding: const EdgeInsets.only(
                      right: FMIThemeBase.basePadding10,
                      left: FMIThemeBase.basePadding10,
                      top: FMIThemeBase.basePadding8,
                      bottom: FMIThemeBase.basePadding4),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(
                              FMIThemeBase.baseBorderRadiusLarge),
                          bottomRight: Radius.circular(
                              FMIThemeBase.baseBorderRadiusLarge))),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: FMIThemeBase.basePadding10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListView.builder(
                            padding: const EdgeInsets.only(
                                top: FMIThemeBase.basePaddingXxLarge),
                            shrinkWrap: true,
                            itemCount: getItemCount(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: widget.links[index].onTap,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(widget.links[index].title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSurface),
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                    const FaIcon(
                                      FontAwesomeIcons.chevronRight,
                                      size: FMIThemeBase.baseIconSmall,
                                    ),
                                  ],
                                ),
                              );
                            }),
                        Visibility(
                          visible: !(context.isDesktopScreen && isExpanded ||
                              widget.links.length <= 4),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: FMIThemeBase.basePadding7),
                            child: Center(
                                child: InkWell(
                              onTap: () => setState(() {
                                isExpanded = !isExpanded;
                              }),
                              child: Icon(FontAwesomeIcons.solidEllipsis,
                                  color:
                                      Theme.of(context).colorScheme.onSurface),
                            )),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              alignment: Alignment.centerLeft,
              constraints: BoxConstraints(minHeight: widget.height! * 0.4),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius:
                    BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    right: FMIThemeBase.basePadding10,
                    left: FMIThemeBase.basePadding10,
                    top: FMIThemeBase.basePadding8,
                    bottom: FMIThemeBase.basePadding4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget.icon!,
                    Padding(
                      padding:
                          const EdgeInsets.only(top: FMIThemeBase.basePadding6),
                      child: Text(widget.title,
                          style: textStyle,
                          maxLines: 1,
                          overflow: TextOverflow.clip),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        );
      },
    );
  }
}
