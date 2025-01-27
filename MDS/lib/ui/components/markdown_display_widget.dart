import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:url_launcher/url_launcher_string.dart';
import 'components.dart';

class MarkdownDisplayWidget extends StatelessWidget {
  final String file;

  const MarkdownDisplayWidget({Key? key, required this.file}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(file),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return MarkdownBody(
            data: snapshot.data!,
            builders: {
              'pre': CodeBlockBuilder(),
            },
            onTapLink: (text, url, title) {
              url != null ? launchUrlString(url) : null;
            },
            styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
                p: Theme.of(context).textTheme.bodyLarge,
                a: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    decoration: TextDecoration.underline),
                h1: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface),
                h2: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface),
                h3: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface),
                h4: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface),
                h5: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface),
                h6: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface),
                code: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    backgroundColor: Theme.of(context).colorScheme.surface),
                em: const TextStyle(fontStyle: FontStyle.italic),
                strong: const TextStyle(fontWeight: FontWeight.bold),
                del: const TextStyle(decoration: TextDecoration.lineThrough),
                blockquote: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer),
                blockquoteDecoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer)),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Error retrieving markdown."),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class CodeBlockBuilder extends MarkdownElementBuilder {
  @override
  Widget visitText(md.Text text, TextStyle? preferredStyle) {
    return CodeBlock(text: text.text, style: preferredStyle);
  }
}
