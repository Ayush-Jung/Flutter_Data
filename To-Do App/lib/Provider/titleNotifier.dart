import 'package:flutter_complete_guide/models/task.dart';
import 'package:flutter/material.dart';

class TitleNotifier extends ChangeNotifier {
  List<Task> titlelist = [];

  addTitle(String title, String desc) {
    Task task = Task(title: title, description: desc);
    titlelist.add(task);

    notifyListeners();
  }
}
