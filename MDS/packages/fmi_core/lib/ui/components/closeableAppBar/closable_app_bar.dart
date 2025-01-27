import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fmi_core/extensions/extensions.dart';

class ClosableAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ClosableAppBar(
      {Key? key, required this.title, required this.onClose, this.onSave})
      : super(key: key);

  final String title;
  final VoidCallback onClose;
  final VoidCallback? onSave;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: FMIThemeBase.basePadding8),
          child: Row(
            children: [
              IconButton(
                  icon: const Icon(FontAwesomeIcons.xmark), onPressed: onClose),
            ],
          ),
        ),
        centerTitle: true,
        title: Tooltip(
          message: title,
          child: Text(title),
        ),
        actions: onSave != null
            ? [
                Padding(
                  padding:
                      const EdgeInsets.only(right: FMIThemeBase.basePadding8),
                  child: TextButton(
                    onPressed: onSave,
                    child: Text(context.coreLocalize.save),
                  ),
                ),
              ]
            : null);
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(FMIThemeBase.baseContainerDimension64);
}
