import 'dart:convert';
import 'dart:io';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:open_file/open_file.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../dialogs/fmi_download_progress_dialog.dart';
import '../../fileDownload/fmi_file_download.dart';

class FmiAttachmentPreviewWidget extends StatelessWidget {
  FmiAttachmentPreviewWidget({
    Key? key,
    required this.attachment,
    this.canDelete = false,
    this.onDelete,
    this.requiresAuth = false,
    this.canDownload = false,
  }) : super(key: key);

  final Attachment attachment;
  final bool canDelete;
  final VoidCallback? onDelete;
  final bool requiresAuth;
  final bool canDownload;

  final PreferenceService _preferenceService =
      GetIt.instance<PreferenceService>();

  @override
  Widget build(BuildContext context) {
    Widget? leading;

    if (!attachment.isImage()) {
      leading = const Icon(
        FontAwesomeIcons.paperclip,
        size: FMIThemeBase.baseIconMedium,
      );
    } else {
      try {
        if (attachment.bytes != null) {
          leading = CircleAvatar(
            backgroundImage: MemoryImage(attachment.bytes!),
            radius: FMIThemeBase.baseIconMedium / 2,
          );
        } else if (attachment.url != null && requiresAuth) {
          leading = ClipOval(
            child: AuthenticatedNetworkImage(url: attachment.url!),
          );
        }
      } catch (ex) {
        debugPrint(ex.toString());
      }
    }

    return ListTile(
      tileColor: Colors.transparent,
      onTap: () async {
        await openAttachmentDialog(context);
      },
      leading: leading,
      title: Text(
        attachment.name,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.apply(color: Theme.of(context).colorScheme.onSurface),
      ),
      trailing: getTrailingActionButton(context),
    );
  }

  Widget getTrailingActionButton(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        canDownload
            ? IconButton(
                onPressed: () async {
                  await _downloadFile(context);
                },
                icon: const Icon(
                  FontAwesomeIcons.arrowDownToLine,
                  size: FMIThemeBase.baseIconSmall,
                ))
            : const SizedBox.shrink(),
        canDelete
            ? IconButton(
                onPressed: onDelete,
                icon: const Icon(
                  FontAwesomeIcons.solidTrash,
                  size: FMIThemeBase.baseIconSmall,
                ))
            : const SizedBox.shrink(),
      ],
    );
  }

  Future openAttachmentDialog(BuildContext context) async {
    if (attachment.isImage()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FmiAttachmentDialog(
            attachment: attachment,
          ),
        ),
      );
    } else {
      await _downloadFile(context);
    }
  }

  Future _downloadFile(BuildContext context) async {
    Uint8List? bytes;
    if (kIsWeb) {
      if (attachment.url != null) {
        var response = await http.get(
          Uri.parse(attachment.url!),
          headers: {
            'Authorization':
                'Bearer ${await _preferenceService.getAccessToken()}',
            'Content-Type': 'application/octet-stream',
          },
        );

        if (response.statusCode == 200) {
          bytes = response.bodyBytes;
        }
      } else {
        bytes = attachment.bytes!;
      }

      if (bytes != null) {
        html.AnchorElement(
            href: 'data:application/octet-stream;base64,${base64Encode(bytes)}')
          ..setAttribute('download', attachment.name)
          ..click();
      }
    } else {
      var status = await Permission.storage.status;
      if (!status.isGranted) {
        // If not we will ask for permission first
        await Permission.storage.request();
      }

      if (attachment.url != null) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return FmiDownloadProgressDialog(
                name: attachment.name,
                url: attachment.url,
                bytes: attachment.bytes);
          },
        );
      } else {
        var filePath = await FmiFileDownload().getFilePath(attachment.name);
        var file = File(filePath);
        await file.writeAsBytes(attachment.bytes!);

        OpenFile.open(filePath);
      }
    }
  }
}
