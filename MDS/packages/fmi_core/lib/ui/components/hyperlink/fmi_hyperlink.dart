import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FmiHyperlink extends StatelessWidget {
  const FmiHyperlink({
    Key? key,
    required this.uri,
    required this.displayText,
    this.beforeText,
    this.afterText,
    this.launchMode = LaunchMode.platformDefault,
    this.textStyle
  }) : super(key: key);

  /// Optional text that would come before the hyperlink
  final String? beforeText;

  /// Optional text that would come after the hyperlink
  final String? afterText;

  final LaunchMode launchMode;

  /// URI for the hyperlink
  final Uri uri;

  /// URI display text
  final String displayText;

  /// Optional base text style, otherwise by default will use text theme body Medium
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          if(beforeText != null && beforeText!.isNotEmpty)...[
            TextSpan(
              style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
              text: beforeText,
            ),
          ],
          TextSpan(
            style: textStyle?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.underline,
            ) ?? Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
            text: displayText,
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                if (await canLaunchUrl(uri)) {
                  await launchUrl(
                    uri,
                    mode: launchMode
                  );
                }
              },
          ),
          if(afterText != null && afterText!.isNotEmpty)...[
            TextSpan(
              style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
              text: afterText,
            ),
          ]
        ],
      )
    );
  }
}
