import 'package:fmi_core/fmi_core.dart';

class SampleFmiDialogFactory extends BaseFmiDialogFactory<SampleFmiDialogResult, SampleFmiDialogOptions>{
  @override
  BaseFmiDialog<SampleFmiDialogResult, SampleFmiDialogOptions> createDialog(
      Function(SampleFmiDialogResult dialogResult) onSave,
      SampleFmiDialogOptions? dialogOptions,
      SampleFmiDialogResult? initValue,
      bool isEditable) {

    return SampleFmiDialog(
      onSave: onSave,
      dialogOptions: dialogOptions,
      isEditable: isEditable,
      initValue: initValue,
    );
  }
}