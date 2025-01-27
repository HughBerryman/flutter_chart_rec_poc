import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/extensions/extensions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class ImageWithIconOverlayWidget extends StatelessWidget {
  const ImageWithIconOverlayWidget(
      {Key? key,
      required this.imageUrl,
      required this.iconData,
      required this.iconBackgroundColor,
      required this.iconColor,
      this.displayName,
      this.displayInitialsFontSize = FMIThemeBase.baseFontSize0,
      required this.imageHeight,
      required this.imageWidth,
      this.iconAlignment = Alignment.bottomRight,
      required this.iconSize})
      : super(key: key);

  final String imageUrl;
  final IconData iconData;
  final Color iconBackgroundColor;
  final String? displayName;
  final double displayInitialsFontSize;
  final Color iconColor;
  final double imageHeight;
  final double imageWidth;
  final Alignment iconAlignment;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: imageHeight,
      width: imageWidth,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            width: imageWidth,
            height: imageHeight,
            fit: BoxFit.cover,
            imageBuilder: ((context, imageProvider) => CircleAvatar(
                  radius: imageHeight / 2,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  backgroundImage: imageProvider,
                )),
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => displayName != null
                ? CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Text(
                      (displayName as String).toInitials,
                      style: TextStyle(
                          fontSize: displayInitialsFontSize,
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    radius: imageHeight / 2,
                  )
                : CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                    radius: imageHeight / 2,
                    child: FaIcon(
                      FontAwesomeIcons.solidUser,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
          ),
          Align(
            alignment: iconAlignment,
            child: CircleAvatar(
              backgroundColor: iconBackgroundColor,
              radius: iconSize,
              child: FaIcon(
                iconData,
                color: iconColor,
                size: iconSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
