import 'package:flutter/material.dart';
import 'package:fmi_core/themes/themes.dart';

class HeaderComponent extends StatelessWidget {
  final String date;
  final String userName;
  final String userAvatar;

  const HeaderComponent({
    Key? key,
    this.date = 'Aug 28th, 2024',
    this.userName = 'John Doe',
    this.userAvatar = 'https://dashboard.codeparrot.ai/api/image/Z5P8lvnDwkssPko6/avatar.png',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Date section
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                Text(
                  date,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.1,
                  ),
                ),
              ],
            ),
          ),

          // Percentage indicators
          Row(
            children: [
              _buildPercentageItem(
                context: context,
                percentage: '50%',
                iconPath: 'https://dashboard.codeparrot.ai/api/image/Z5P8lvnDwkssPko6/solid.png',
                onTap: () => print('50% clicked'),
              ),
              const SizedBox(width: 8),
              _buildPercentageItem(
                context: context,
                percentage: '25%',
                iconPath: 'https://dashboard.codeparrot.ai/api/image/Z5P8lvnDwkssPko6/regular.png',
                onTap: () => print('25% clicked'),
              ),
              const SizedBox(width: 8),
              _buildPercentageItem(
                context: context,
                percentage: '25%',
                iconPath: 'https://dashboard.codeparrot.ai/api/image/Z5P8lvnDwkssPko6/regular-2.png',
                onTap: () => print('25% clicked'),
              ),
            ],
          ),

          // User info section
          InkWell(
            onTap: () => print('User profile clicked'),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFCFCFF),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: const Color(0xFFDCE3E9),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.network(
                          userAvatar,
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          userName,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.1,
                            color: const Color(0xFF191C1E),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Image.network(
                    'https://dashboard.codeparrot.ai/api/image/Z5P8lvnDwkssPko6/solid-2.png',
                    width: 12,
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPercentageItem({
    required BuildContext context,
    required String percentage,
    required String iconPath,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          children: [
            Text(
              percentage,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
                color: const Color(0xFF191C1E),
              ),
            ),
            const SizedBox(width: 4),
            Image.network(
              iconPath,
              width: 16,
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

