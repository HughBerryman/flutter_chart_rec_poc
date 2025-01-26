import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiSearchNoResultWidget extends StatelessWidget {
  final Function onNoResultRedirect;
  final String? noResultText;

  const FmiSearchNoResultWidget(
      {required this.onNoResultRedirect, this.noResultText, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: FMIThemeBase.basePadding12,
          top: FMIThemeBase.basePadding7,
          right: FMIThemeBase.basePadding12,
          bottom: FMIThemeBase.basePadding12),
      child: Column(
        children: [
          Text(context.coreLocalize.noResultFound),
          TextButton(
              onPressed: () => onNoResultRedirect(),
              child: Text(context.coreLocalize.clickHere)),
          Text(
            noResultText ?? context.coreLocalize.searchKnowledgeBase,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
