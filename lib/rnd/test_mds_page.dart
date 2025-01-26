import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';

class TestMdsPage extends StatelessWidget {
  const TestMdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test MDS Page'),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(FMIThemeBase.basePadding8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Components Test',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: FMIThemeBase.baseGap12),
            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(FMIThemeBase.basePadding8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(
                            FMIThemeBase.baseBorderRadiusMedium),
                        topRight: Radius.circular(
                            FMIThemeBase.baseBorderRadiusMedium),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Sample Card',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onSurface,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(FMIThemeBase.basePadding8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'This is a test page using Flutter components with MDS-like styling.',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant,
                                  ),
                        ),
                        const SizedBox(height: FMIThemeBase.baseGap8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            padding: const EdgeInsets.symmetric(
                              horizontal: FMIThemeBase.basePadding12,
                              vertical: FMIThemeBase.basePadding6,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  FMIThemeBase.baseBorderRadiusSmall),
                            ),
                          ),
                          child: const Text('Primary Button'),
                        ),
                        const SizedBox(height: FMIThemeBase.baseGap4),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor:
                                Theme.of(context).colorScheme.primary,
                            side: BorderSide(
                                color: Theme.of(context).colorScheme.outline),
                            padding: const EdgeInsets.symmetric(
                              horizontal: FMIThemeBase.basePadding12,
                              vertical: FMIThemeBase.basePadding6,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  FMIThemeBase.baseBorderRadiusSmall),
                            ),
                          ),
                          child: const Text('Secondary Button'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
