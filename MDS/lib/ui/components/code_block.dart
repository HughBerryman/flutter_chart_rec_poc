import 'dart:async';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CodeBlock extends StatefulWidget {
  final String text;
  final TextStyle? style;

  const CodeBlock({Key? key, required this.text, this.style}) : super(key: key);

  @override
  _CodeBlockState createState() => _CodeBlockState();
}

class _CodeBlockState extends State<CodeBlock> {
  bool _copiedIndicator = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      padding: const EdgeInsets.all(FMIThemeBase.basePadding4),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      FlutterClipboard.copy(widget.text).then((value) {});
                      showCopiedIndicator();
                    },
                    icon: const FaIcon(FontAwesomeIcons.copy)),
                const SizedBox(width: FMIThemeBase.basePadding4),
                Visibility(
                  visible: _copiedIndicator,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: FMIThemeBase.basePadding2,
                        horizontal: FMIThemeBase.basePadding4),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: const BorderRadius.all(Radius.circular(
                            FMIThemeBase.baseBorderRadiusMedium))),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.check,
                          color: Theme.of(context).colorScheme.onSurface,
                          size: FMIThemeBase.baseIconSmall,
                        ),
                        const SizedBox(width: FMIThemeBase.basePadding4),
                        Text("${context.coreLocalize.copied}!",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: FMIThemeBase.basePadding4),
          Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              padding: const EdgeInsets.all(FMIThemeBase.basePadding4),
              color: Theme.of(context).colorScheme.surface,
              child: Text(widget.text,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface)))
        ],
      ),
    );
  }

  void showCopiedIndicator() {
    setState(() {
      _copiedIndicator = true;
    });
    Timer(const Duration(seconds: 1, milliseconds: 500), () {
      setState(() {
        _copiedIndicator = false;
      });
    });
  }
}
