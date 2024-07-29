import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TodoModel extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Bread'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addTask(String newTask) {
    _tasks.add(
      Task(name: newTask),
    );
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
