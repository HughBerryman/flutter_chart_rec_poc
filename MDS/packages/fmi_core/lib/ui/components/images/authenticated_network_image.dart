import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart'
    show ImageRenderMethodForWeb;

class AuthenticatedNetworkImage extends StatefulWidget {
  AuthenticatedNetworkImage({
    Key? key,
    required this.url,
    this.width = FMIThemeBase.baseIconMedium,
    this.height = FMIThemeBase.baseIconMedium,
  }) : super(key: key);

  final String url;
  final double? width;
  final double? height;
  final TokenRetrievalService _tokenRetrievalService =
      GetIt.instance.get<TokenRetrievalService>();

  @override
  _AuthenticatedNetworkImage createState() => _AuthenticatedNetworkImage();
}

class _AuthenticatedNetworkImage extends State<AuthenticatedNetworkImage> {
  String? _token;
  static const String emptyToken = "";

  @override
  void initState() {
    super.initState();
    asyncInit();
  }

  void asyncInit() async {
    var _curToken = await widget._tokenRetrievalService.getToken();
    setState(() {
      _token = _curToken ?? emptyToken;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _token == null
        ? const CircularProgressIndicator()
        : _token == emptyToken
            ? _getErrorWidget()
            : CachedNetworkImage(
                httpHeaders: {
                    'Authorization': 'Bearer ${_token!}',
                    'Accept-version': '1.0.0'
                  },
                width: widget.width,
                height: widget.height,
                fit: BoxFit.cover,
                imageUrl: widget.url,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => _getErrorWidget(),
                imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet);
  }

  Widget _getErrorWidget() {
    return const Icon(
      FontAwesomeIcons.solidCircleExclamation,
      size: FMIThemeBase.baseIconMedium,
    );
  }
}
