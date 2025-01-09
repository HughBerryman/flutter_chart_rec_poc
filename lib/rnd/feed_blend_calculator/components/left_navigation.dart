import 'package:flutter/material.dart';

class LeftNavigation extends StatelessWidget {
  const LeftNavigation({super.key});

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            color: isActive ? Colors.blue.withOpacity(0.2) : Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                children: [
                  Icon(
                    icon,
                    color: isActive ? Colors.blue : Colors.grey[400],
                    size: 24,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    label,
                    style: TextStyle(
                      color: isActive ? Colors.blue : Colors.grey[400],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      color: const Color(0xFF1E1E1E),
      child: Column(
        children: [
          const SizedBox(height: 16),
          // MIRA Logo Placeholder
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue[700],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.analytics_rounded,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(height: 32),
          // Navigation Items
          _buildNavItem(Icons.home, 'Home', false),
          _buildNavItem(Icons.lightbulb_outline, 'Recs', false),
          _buildNavItem(Icons.science_outlined, 'Simulator', true),
          _buildNavItem(Icons.menu_book_outlined, 'Wiki', false),
        ],
      ),
    );
  }
}
