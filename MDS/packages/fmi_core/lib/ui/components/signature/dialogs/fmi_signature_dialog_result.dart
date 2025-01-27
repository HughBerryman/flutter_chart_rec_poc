import 'package:signature/signature.dart';

import '../../../../fmi_core.dart';

class FmiSignatureDialogResult{
  FmiSignatureDialogResult({this.comment, this.attachments, this.points});

  String? comment;
  List<Attachment>? attachments;
  List<Point>? points;
}