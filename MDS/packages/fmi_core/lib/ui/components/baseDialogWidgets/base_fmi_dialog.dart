import 'package:flutter/cupertino.dart';

/// T generic represents the dialog result type
/// G generic represent dialog options passed to the dialog
abstract class BaseFmiDialog<T, G> extends StatefulWidget {
  const BaseFmiDialog({
    Key? key,
    required this.dialogOptions,
    required this.onSave,
    required this.isEditable,
    required this.initValue,
  }) : super(key: key);

  final G? dialogOptions;
  final Function(T dialogResult) onSave;
  final bool isEditable;
  final T? initValue;
}