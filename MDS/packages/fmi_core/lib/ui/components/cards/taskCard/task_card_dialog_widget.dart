import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class TaskCardDialogWidget extends StatefulWidget {
  const TaskCardDialogWidget(
      {Key? key, required this.title, required this.tasks})
      : super(key: key);

  final String title;
  final List<TaskItem> tasks;

  @override
  State<TaskCardDialogWidget> createState() => _TaskCardDialogWidgetState();
}

//TODO: Add/Update Dialog functionality and UI
class _TaskCardDialogWidgetState extends State<TaskCardDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ClosableAppBar(
          title: widget.title,
          onClose: () {
            Navigator.pop(context);
          },
        ),
        body: ListView.builder(
            itemCount: widget.tasks.length,
            itemBuilder: (context, index) {
              var task = widget.tasks[index];
              return ListTile(
                leading: task.leading,
                title: task.overline != null
                    ? TitleWithOverlineWidget(
                        title: task.title, overline: task.overline!)
                    : Text(task.title),
                subtitle: task.description != null
                    ? Text(task.description.toString())
                    : null,
                trailing: task.trailing,
              );
            }));
  }
}
