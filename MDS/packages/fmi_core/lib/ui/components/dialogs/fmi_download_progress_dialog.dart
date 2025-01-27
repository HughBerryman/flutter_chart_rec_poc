import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../fileDownload/fmi_file_download.dart';

class FmiDownloadProgressDialog extends StatefulWidget {
  FmiDownloadProgressDialog({super.key, required this.name, this.url, this.bytes});

  final String name;
  String? url;
  Uint8List? bytes;

  @override
  _FmiDownloadProgressDialogState createState() => _FmiDownloadProgressDialogState();
}

class _FmiDownloadProgressDialogState extends State<FmiDownloadProgressDialog> {
  double progress = 0.0;

  @override
  void initState() {
    _startDownload();
    super.initState();
  }

  void _startDownload() async {
    FmiFileDownload().startDownloading(
        context, widget.name, widget.url!, updateProgress);
  }

  void updateProgress(double value) {
    setState(() {
      progress = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    String downloadingProgress = (progress * 100).toInt().toString();
    if(progress < 1) {
      return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text("Downloading..."),
              ),
              LinearProgressIndicator(
                value: progress,
                minHeight: 10,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text("$downloadingProgress %"),
              )
            ],
          )
      );
    } else {
      Navigator.of(context).pop();
      return Container();
    }
  }
}