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
    final fmiTheme = FMIThemeBase.of(context);

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
          padding: EdgeInsets.all(fmiTheme.spacing.medium),
          decoration: BoxDecoration(
            color: isEnabled
                ? fmiTheme.colors.success100
                : fmiTheme.colors.neutral300,
            border: Border.all(color: fmiTheme.colors.neutral200, width: 1),
            borderRadius: BorderRadius.circular(fmiTheme.radius.medium),
            boxShadow: [
              BoxShadow(
                color: fmiTheme.colors.neutral500.withOpacity(0.2),
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
                      style: fmiTheme.typography.body1.copyWith(
                        color: fmiTheme.colors.primary500,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: fmiTheme.spacing.xxsmall),
                    Text(
                      "Recommendation",
                      style: fmiTheme.typography.body2.copyWith(
                        color: fmiTheme.colors.primary500,
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
                    style: fmiTheme.typography.body1.copyWith(
                      color: fmiTheme.colors.primary500,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "gal/shift",
                    style: fmiTheme.typography.body2.copyWith(
                      color: fmiTheme.colors.primary500,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(width: fmiTheme.spacing.small),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: isEnabled
                      ? fmiTheme.colors.success100
                      : fmiTheme.colors.error100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check,
                  size: 20,
                  color: isEnabled
                      ? fmiTheme.colors.success500
                      : fmiTheme.colors.error500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
