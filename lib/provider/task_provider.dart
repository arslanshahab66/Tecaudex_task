import 'package:flutter/material.dart';

class Task {
  final String title;
  final String description;

  Task({required this.title, required this.description, DateTime? dueDate});
}

class TaskProvider extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
