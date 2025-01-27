import 'package:fmi_core/fmi_core.dart';

abstract class ConditionalQuestionDialogFactoryBase<T, G> {
  BaseConditionalQuestionDialog<T, G> createDialog(
      Function(ConditionalQuestionButton button, String? badgeText, T dialogResult) onSave,
      ConditionalQuestionButton<G> conditionalQuestionButton,
      T? initValue,
      bool isEditable);
}