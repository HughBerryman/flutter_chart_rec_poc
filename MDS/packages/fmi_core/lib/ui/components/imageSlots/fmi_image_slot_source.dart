import 'dart:typed_data';
import 'package:flutter/cupertino.dart';

import '../images/authenticated_network_image.dart';

abstract class FMIImageSlotSource {
  Widget getWidget();

  late double width;
  late double height;
  late double borderRadius;
}

class ImageSlotSourceFromMemory extends FMIImageSlotSource {
  ImageSlotSourceFromMemory({required this.bytes});

  final Uint8List bytes;

  @override
  Widget getWidget() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: MemoryImage(bytes),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      width: width,
      height: height,
    );
  }
}

class ImageSlotSourceFromNetwork extends FMIImageSlotSource {
  ImageSlotSourceFromNetwork({required this.url});

  final String url;

  @override
  Widget getWidget() {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(borderRadius),
      ),
      child: AuthenticatedNetworkImage(
        url: url,
        width: width,
        height: height,
      ),
    );
  }
}
