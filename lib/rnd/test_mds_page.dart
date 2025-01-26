import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

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
            FmiGenericCard(
              title: 'Sample Card',
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'This is a test page using Flutter components with MDS-like styling.',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                  const SizedBox(height: FMIThemeBase.baseGap8),
                  FmiToggleButton(
                    text: 'Primary Button',
                    type: FmiToggleButtonType.elevated,
                    color: FmiToggleButtonColorOptions.primary,
                    onPressed: () {},
                  ),
                  const SizedBox(height: FMIThemeBase.baseGap4),
                  FmiToggleButton(
                    text: 'Secondary Button',
                    type: FmiToggleButtonType.outline,
                    color: FmiToggleButtonColorOptions.secondary,
                    onPressed: () {},
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
