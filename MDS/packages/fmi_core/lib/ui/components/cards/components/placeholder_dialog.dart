import 'package:flutter/material.dart';
import 'package:fmi_core/extensions/extensions.dart';

class PlaceholderDialog extends StatelessWidget {
  const PlaceholderDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.coreLocalize.tapped),
      content: Text(context.coreLocalize.placeholder),
      actions: <Widget>[
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(context.coreLocalize.ok))
      ],
    );
  }
}
