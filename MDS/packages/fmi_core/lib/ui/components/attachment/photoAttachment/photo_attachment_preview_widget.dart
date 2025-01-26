import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhotoAttachmentPreviewWidget extends StatelessWidget {
  final Attachment attachment;
  final bool canDelete;
  final VoidCallback? onDelete;
  final bool requiresAuth;

  const PhotoAttachmentPreviewWidget(
      {Key? key,
      required this.attachment,
      this.canDelete = false,
      this.onDelete,
      this.requiresAuth = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? leading;

    try{
      if(attachment.bytes != null){
        leading = CircleAvatar(
          backgroundImage: MemoryImage(attachment.bytes!),
          radius: FMIThemeBase.baseIconMedium/2,
        );
      }
      else if(attachment.url != null && requiresAuth){
        leading = ClipOval(
          child: AuthenticatedNetworkImage(url: attachment.url!),
        );
      }
    }
    catch(ex){
      debugPrint(ex.toString());
    }

    return ListTile(
      onTap: () => openPhotoDialog(context),
      leading: leading,
      title: Text(
        attachment.name,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.apply(color: Theme.of(context).colorScheme.onSurface),
      ),
      trailing: canDelete
          ? IconButton(
              onPressed: onDelete,
              icon: const Icon(
                FontAwesomeIcons.solidTrash,
                size: FMIThemeBase.baseIconMedium,
              ))
          : null,
    );
  }

  void openPhotoDialog(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PhotoDialog(
                attachment: attachment
            )
        )
    );
  }
}
