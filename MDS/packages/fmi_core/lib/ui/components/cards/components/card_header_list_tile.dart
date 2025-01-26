import 'package:flutter/material.dart';

class CardHeaderListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? trailing;

  const CardHeaderListTile(
      {Key? key, required this.title, this.subtitle, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
      subtitle: subtitle != null
          ? Text(subtitle.toString(),
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onSurface))
          : null,
      trailing: trailing,
    );
  }
}
