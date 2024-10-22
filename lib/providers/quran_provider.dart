import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranProvider extends ChangeNotifier {
  List<String> verses = [];

  void readQuranFile(int index) async {
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');
    verses = fileContent.trim().split('\n');
    notifyListeners(); // verses is not empty
  }
}
