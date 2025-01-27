import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/extensions/color_scheme_extension.dart';
import 'package:fmi_core/models/navigationDrawer/fmi_drawer_label.dart';
import 'package:fmi_core/models/navigationDrawer/navigationDrawer.dart';

class FmiNavigationDrawerLabelWidget extends StatefulWidget {
  const FmiNavigationDrawerLabelWidget(
      {super.key, required this.item,});

  final FmiDrawerLabel item;


  @override
  State<FmiNavigationDrawerLabelWidget> createState() =>
      _FmiNavigationDrawerLabelWidgetState();
}

class _FmiNavigationDrawerLabelWidgetState
    extends State<FmiNavigationDrawerLabelWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       if(widget.item.hasDivider) Divider(
            thickness: FMIThemeBase.baseBorderWidthThin,
            height: FMIThemeBase.baseBorderWidthThin,
            color: Theme.of(context).colorScheme.fmiBaseThemeSecondaryInverseSecondary,
          ),
        Padding(
                padding: const EdgeInsets.symmetric(
        vertical: FMIThemeBase.basePadding9,
        horizontal: FMIThemeBase.basePadding12),
          child: Row(
            children: [
              Expanded(
                child: Text(widget.item.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color:
                            Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseOnAltSurface,)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
