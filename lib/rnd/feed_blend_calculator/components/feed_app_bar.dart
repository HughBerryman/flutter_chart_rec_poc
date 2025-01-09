import 'package:flutter/material.dart';

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
    return AppBar(
      backgroundColor: const Color(0xFFEBF2F8),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
      title: Row(
        children: [
          const Icon(Icons.science),
          const SizedBox(width: 8),
          const Text('Feed Calculator'),
          Text(
            ' • $selectedLotCount of $totalLotCount assays selected',
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
      actions: [
        TextButton.icon(
          onPressed: onViewSaved,
          icon: const Icon(Icons.visibility),
          label: const Text('View Saved'),
        ),
        TextButton.icon(
          onPressed: onSaveStrategy,
          icon: const Icon(Icons.save),
          label: const Text('Save Strategy'),
        ),
        TextButton.icon(
          onPressed: onExport,
          icon: const Icon(Icons.file_download),
          label: const Text('Export'),
        ),
        IconButton(
          icon: Icon(
            isPanelVisible ? Icons.chevron_right : Icons.chevron_left,
          ),
          onPressed: onPanelToggle,
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Divider(height: 1, color: Colors.grey[300]),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 1);
}
