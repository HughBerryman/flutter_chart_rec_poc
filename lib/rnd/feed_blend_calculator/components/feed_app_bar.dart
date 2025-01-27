import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FeedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int selectedLotCount;
  final int totalLotCount;
  final VoidCallback onViewSaved;
  final VoidCallback onSaveStrategy;
  final VoidCallback onExport;
  final bool isPanelVisible;
  final VoidCallback onPanelToggle;

  const FeedAppBar({
    super.key,
    required this.selectedLotCount,
    required this.totalLotCount,
    required this.onViewSaved,
    required this.onSaveStrategy,
    required this.onExport,
    required this.isPanelVisible,
    required this.onPanelToggle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AppBar(
      backgroundColor: colorScheme.secondaryContainer,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Icon(Icons.science, color: colorScheme.onSecondaryContainer),
          const SizedBox(width: 8),
          Text(
            'Leach Feed Calculator',
            style: theme.textTheme.titleLarge?.copyWith(
              color: colorScheme.onSecondaryContainer,
            ),
          ),
          Text(
            ' • $selectedLotCount of $totalLotCount assays selected',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSecondaryContainer.withOpacity(0.7),
            ),
          ),
        ],
      ),
      actions: [
        TextButton.icon(
          onPressed: onViewSaved,
          icon: Icon(Icons.visibility, color: colorScheme.onSecondaryContainer),
          label: Text(
            'View Saved',
            style: theme.textTheme.labelLarge?.copyWith(
              color: colorScheme.onSecondaryContainer,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: onSaveStrategy,
          icon: Icon(Icons.save, color: colorScheme.onSecondaryContainer),
          label: Text(
            'Save Strategy',
            style: theme.textTheme.labelLarge?.copyWith(
              color: colorScheme.onSecondaryContainer,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: onExport,
          icon: Icon(Icons.file_download,
              color: colorScheme.onSecondaryContainer),
          label: Text(
            'Export',
            style: theme.textTheme.labelLarge?.copyWith(
              color: colorScheme.onSecondaryContainer,
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            isPanelVisible ? Icons.chevron_right : Icons.chevron_left,
            color: colorScheme.onSecondaryContainer,
          ),
          onPressed: onPanelToggle,
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Divider(
          height: 1,
          color: colorScheme.onSecondaryContainer.withOpacity(0.12),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 1);
}
