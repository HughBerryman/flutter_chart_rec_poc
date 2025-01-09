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
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.pop(context),
      ),
      title: Row(
        children: [
          const Icon(Icons.science, color: Colors.black),
          const SizedBox(width: 8),
          const Text(
            'Feed Calculator',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            ' • $selectedLotCount of $totalLotCount assays selected',
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
      actions: [
        TextButton.icon(
          onPressed: onViewSaved,
          icon: Icon(Icons.visibility, color: Colors.grey[700]),
          label: Text(
            'View Saved',
            style: TextStyle(color: Colors.grey[700]),
          ),
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey[700],
          ),
        ),
        TextButton.icon(
          onPressed: onSaveStrategy,
          icon: Icon(Icons.save, color: Colors.grey[700]),
          label: Text(
            'Save Strategy',
            style: TextStyle(color: Colors.grey[700]),
          ),
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey[700],
          ),
        ),
        TextButton.icon(
          onPressed: onExport,
          icon: Icon(Icons.file_download, color: Colors.grey[700]),
          label: Text(
            'Export',
            style: TextStyle(color: Colors.grey[700]),
          ),
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey[700],
          ),
        ),
        IconButton(
          icon: Icon(
            isPanelVisible ? Icons.chevron_right : Icons.chevron_left,
            color: Colors.grey[700],
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
