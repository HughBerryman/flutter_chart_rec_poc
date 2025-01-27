import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class RecSelector extends StatelessWidget {
  final bool isEnabled;
  final String title;
  final Color color;

  const RecSelector({
    super.key,
    this.isEnabled = true,
    this.title = "Default Title",
    this.color = const Color(0xFFDBF2E0),
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          width: 320,
          height: 80,
          padding: const EdgeInsets.all(FMIThemeBase.basePadding8),
          decoration: BoxDecoration(
            color: isEnabled
                ? colorScheme.primaryContainer
                : colorScheme.surfaceVariant,
            border: Border.all(color: colorScheme.outline, width: 1),
            borderRadius:
                BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium),
            boxShadow: [
              BoxShadow(
                color: colorScheme.shadow.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Accept",
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: FMIThemeBase.basePadding2),
                    Text(
                      "Recommendation",
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "2000",
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "gal/shift",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(width: FMIThemeBase.basePadding4),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: isEnabled
                      ? colorScheme.primaryContainer
                      : colorScheme.errorContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check,
                  size: FMIThemeBase.baseIconSmall,
                  color: isEnabled ? colorScheme.primary : colorScheme.error,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
