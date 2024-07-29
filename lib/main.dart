import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/todo.dart';
import 'package:todoey/screens/task.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoModel>(
      create: (BuildContext context) {
        return TodoModel();
      },
      child: const MaterialApp(home: TaskScreen()),
    );
  }
}
