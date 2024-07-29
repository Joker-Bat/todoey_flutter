import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/todo.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoModel>(builder: (context, todoModel, child) {
      return ListView.builder(
        itemCount: todoModel.taskCount,
        itemBuilder: (context, index) {
          Task task = todoModel.tasks[index];

          return Padding(
            padding: EdgeInsets.only(
                bottom: index == todoModel.taskCount - 1 ? 80 : 0),
            child: TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              onToggle: (value) {
                todoModel.toggleTask(task);
              },
              onLongPress: () {
                todoModel.deleteTask(task);
              },
            ),
          );
        },
      );
    });
  }
}
