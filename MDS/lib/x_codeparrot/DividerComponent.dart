import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:fmi_core/themes/fmi_theme_base.dart';

class DividerComponent extends StatelessWidget {
  final Color? color;
  final double? thickness;
  final double? indent;
  final double? endIndent;

  const DividerComponent({
    Key? key,
    this.color,
    this.thickness,
    this.indent,
    this.endIndent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get theme colors from context
    final theme = Theme.of(context);
    final fmiThemeBase = FmiThemeBase;

    return Container(
      width: double.infinity,
      height: 1,
      child: Divider(
        color: color ?? theme.dividerColor.withOpacity(0.12),
        thickness: thickness ?? 1,
        indent: indent ?? FMIThemeBase.baseSpacingSmall,
        endIndent: endIndent ?? FMIThemeBase.baseSpacingSmall,
      ),
    );
  }
}
