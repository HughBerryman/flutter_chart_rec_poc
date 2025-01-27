import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiStartSearchContent extends StatelessWidget {
  const FmiStartSearchContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(FontAwesomeIcons.solidMagnifyingGlass,
            color: Theme.of(context).colorScheme.onSurface),
        Padding(
          padding: const EdgeInsets.only(top: FMIThemeBase.baseGapLarge),
          child: Text(
            context.coreLocalize.searchStart,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        )
      ],
    );
  }
}
