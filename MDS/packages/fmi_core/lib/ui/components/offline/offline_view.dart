import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OfflineView extends StatelessWidget {
  const OfflineView({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.basePadding8),
          child: Icon(FontAwesomeIcons.solidCloudXmark,
              size: FMIThemeBase.baseIconXLarge),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding8),
          child: Text(context.coreLocalize.youAreOffline,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding8),
          child: SizedBox(
            width: FMIThemeBase.baseContainerDimension400,
            child: Text(message ?? context.coreLocalize.connectNetwork,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer)),
          ),
        ),
      ]);
  }
}