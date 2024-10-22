import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';

class HadithProvider extends ChangeNotifier {
  List<Hadith> allHadithList = [];

  void loadHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt'); // blocking
    List<String> hadithList =
        fileContent.trim().split('#'); // contains 50 hadithItem
    for (int i = 0; i < hadithList.length; i++) {
      String hadithItem = hadithList[i]; // 0  1
      List<String> hadithLines =
          hadithItem.trim().split('\n'); // contains hadith as lines
      String title = hadithLines[0]; // get title
      hadithLines.removeAt(0); // removing title
      String content = hadithLines.join('\n');
      print('this is title $title');
      print('this is content $content');
      Hadith hadith = Hadith(title: title, content: content); // first H
      allHadithList.add(hadith); //
    }
    notifyListeners();
  }
}
