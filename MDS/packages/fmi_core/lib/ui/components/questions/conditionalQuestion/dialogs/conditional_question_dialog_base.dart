import 'package:flutter/cupertino.dart';

import '../models/conditional_question_button.dart';

abstract class BaseConditionalQuestionDialog<T, G> extends StatefulWidget {
  const BaseConditionalQuestionDialog({
    Key? key,
    required this.conditionalQuestionButton,
    required this.onSave,
    required this.isEditable,
    required this.initValue,
  }) : super(key: key);

  final Function(ConditionalQuestionButton<G> button, String? badgeText, T dialogResult) onSave;
  final ConditionalQuestionButton<G> conditionalQuestionButton;
  final bool isEditable;
  final T? initValue;
}
