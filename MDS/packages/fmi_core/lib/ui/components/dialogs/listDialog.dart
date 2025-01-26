import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/extensions/extensions.dart';
import 'package:fmi_core/themes/dialogs/fmi_list_dialog_theme.dart';

class ListDialog extends StatefulWidget {
  final String title;
  final String message;
  final List<String> options;
  final Function(int? selectedIndex) onSave;
  final int? initialSelectedIndex;

  const ListDialog(
      {Key? key,
      required this.title,
      required this.message,
      required this.options,
      required this.onSave,
      this.initialSelectedIndex})
      : super(key: key);

  @override
  State<ListDialog> createState() => _ListDialogState();
}

class _ListDialogState extends State<ListDialog> {
  int? selectedIndex;

  @override
  void initState() {
    selectedIndex = widget.initialSelectedIndex;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: FmiListDialogTheme.listDialog(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AlertDialog(
            title: Text(widget.title),
            content: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: FMIThemeBase.baseGapLarge),
                  child: Text(
                    widget.message,
                    overflow: TextOverflow.clip,
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: double.maxFinite,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: widget.options.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          title: Text(widget.options[index]),
                          trailing: Radio<int>(
                            value: index,
                            groupValue: selectedIndex,
                            onChanged: (newIndex) {
                              setState(() {
                                selectedIndex = newIndex;
                              });
                            },
                          ),
                        );
                      }),
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(context.coreLocalize.cancel),
              ),
              TextButton(
                onPressed: () {
                  widget.onSave(selectedIndex);
                  Navigator.pop(context);
                },
                child: Text(context.coreLocalize.save),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
