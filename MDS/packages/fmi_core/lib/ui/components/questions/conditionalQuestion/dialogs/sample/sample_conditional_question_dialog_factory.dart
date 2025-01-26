import 'package:fmi_core/ui/components/questions/conditionalQuestion/dialogs/conditional_question_dialog_base.dart';
import 'package:fmi_core/ui/components/questions/conditionalQuestion/dialogs/conditional_question_dialog_factory_base.dart';
import 'package:fmi_core/ui/components/questions/conditionalQuestion/dialogs/sample/sample_conditional_question_dialog.dart';
import 'package:fmi_core/ui/components/questions/conditionalQuestion/dialogs/sample/sample_conditional_question_dialog_metadata.dart';
import 'package:fmi_core/ui/components/questions/conditionalQuestion/dialogs/sample/sample_conditional_question_dialog_result.dart';
import 'package:fmi_core/ui/components/questions/conditionalQuestion/models/conditional_question_button.dart';

class SampleConditionalQuestionDialogFactory extends ConditionalQuestionDialogFactoryBase<SampleConditionalQuestionDialogResult, SampleConditionalQuestionDialogMetadata>{
  @override
  BaseConditionalQuestionDialog<SampleConditionalQuestionDialogResult, SampleConditionalQuestionDialogMetadata> createDialog(
      Function(ConditionalQuestionButton button, String? badgeText, SampleConditionalQuestionDialogResult dialogResult) onSave,
      ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata> conditionalQuestionButton,
      SampleConditionalQuestionDialogResult? initValue,
      bool isEditable) {

    return SampleConditionalQuestionDialog(
      onSave: onSave,
      conditionalQuestionButton: conditionalQuestionButton,
      isEditable: isEditable,
      initValue: initValue,
    );
  }
}