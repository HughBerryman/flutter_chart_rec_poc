import 'dart:typed_data';

import 'package:signature/signature.dart';

class SignatureHelper {
  /// This method can be used to retrieve a PNG version of a Signature Canvas.
  static Future<Uint8List?> getPng(List<Point>? points) async {
    SignatureController signatureController =
        SignatureController(points: points);
    return await signatureController.toPngBytes();
  }
}
