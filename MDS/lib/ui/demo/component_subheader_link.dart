import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ComponentSubheaderLink extends StatelessWidget {
  const ComponentSubheaderLink(
      {Key? key, required this.linkText, required this.url})
      : super(key: key);

  final String linkText;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(linkText,
          style: const TextStyle(
              decoration: TextDecoration.underline, color: Colors.blue)),
      onTap: () async {
        if (await canLaunchUrlString(url)) launchUrlString(url);
      },
    );
  }
}
