import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../fmi_core.dart';

class FmiSignatureViewer extends StatelessWidget {
  final String url;
  final String signerName;
  final DateTime signedDate;
  late final Attachment attachment;
  late final String formattedName;

  FmiSignatureViewer(
      {Key? key,
      required this.url,
      required this.signerName,
      required this.signedDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    formattedName =
        "$signerName ${context.coreLocalize.signedAt} ${signedDate.toLocal().convertToFormattedString(context: context)}";

    attachment =
        Attachment(name: formattedName, bytes: null, url: url, size: -1);

    return ViewModelBuilder<FmiAppBarViewModel>.reactive(
        viewModelBuilder: () => FmiAppBarViewModel(),
        onViewModelReady: (viewModel) => viewModel.initialize(),
        builder: (context, viewModel, child) {
          return TextButton.icon(
            icon: CircleAvatar(
              backgroundColor:
                  Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess,
              radius: FMIThemeBase.baseIconSmall / 2,
              child: FaIcon(Icons.check,
                  color: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeSuccessOnSuccess,
                  size: FMIThemeBase.baseIconSmall / 2),
            ),
            label: Text(formattedName),
            onPressed:
                (viewModel.hasInternet) ? () => openPhotoDialog(context) : null,
          );
        });
  }

  void openPhotoDialog(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PhotoDialog(attachment: attachment)));
  }
}
