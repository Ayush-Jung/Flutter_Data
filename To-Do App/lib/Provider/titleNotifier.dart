import 'package:flutter_complete_guide/Database/databaseHelper.dart';
import 'package:flutter_complete_guide/models/task.dart';
import 'package:flutter/material.dart';

class TitleNotifier extends ChangeNotifier {
  DatabaseHelper _dbhelper = DatabaseHelper();

  addTitle(String title, String desc) {
    Task task = Task(title: title, description: desc);
    _dbhelper.insertTask(task);
    notifyListeners();
  }
}
