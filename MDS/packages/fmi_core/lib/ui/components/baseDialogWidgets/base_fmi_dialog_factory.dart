import 'base_fmi_dialog.dart';

/// T generic represents the dialog result type
/// G generic represent dialog options passed to the dialog
abstract class BaseFmiDialogFactory<T, G> {
  /// T generic represents the dialog result type
  /// G generic represent dialog options passed to the dialog
  BaseFmiDialog<T, G> createDialog(
      Function(T dialogResult) onSave,
      G? dialogOptions,
      T? initValue,
      bool isEditable);
}