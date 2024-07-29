import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) onToggle;
  final void Function() onLongPress;

  const TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.onToggle,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: onLongPress,
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: Checkbox(
          checkColor: Colors.white,
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: onToggle,
        ));
  }
}
