import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ErrorHeaderCard extends StatelessWidget {
  final String title;

  const ErrorHeaderCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Theme(
        data: FmiListTileTheme.danger(context),
        child: ListTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(FMIThemeBase.baseBorderRadiusSmall)),
          title: Text(title,
              style: Theme.of(context).textTheme.titleMedium?.apply(
                  color: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeDangerOnDangerContainer)),
          trailing: const Icon(
            FontAwesomeIcons.solidTriangleExclamation,
            size: FMIThemeBase.baseIconMedium,
          ),
        ),
      ),
    );
  }
}
