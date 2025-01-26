import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiStartSearchWidget extends StatelessWidget {
  const FmiStartSearchWidget({required this.isFullPage, super.key});

  final bool isFullPage;

  @override
  Widget build(BuildContext context) {
    return isFullPage
        ? const Center(
            child: FmiStartSearchContent(),
          )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [FmiStartSearchContent()],
          );
  }
}
