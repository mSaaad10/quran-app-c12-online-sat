import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/quran_details_screen/widgets/sura_verses_widget.dart';

import '../../../core/assets_manager.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (verses.isEmpty) readQuranFile(suraItem.index + 1); // non blocking // 1
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsManager.lightMainBg,
              ))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(suraItem.suraName),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) =>
                      SuraVersesWidget(verse: verses[index]),
                  itemCount: verses.length,
                )),
    );
  }

  String add(String n1, String n2) {
    return n1 + n2; // 420
  }

  void readQuranFile(int index) async {
    // read file
    // 2 mins
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');
    verses = fileContent.trim().split('\n'); // verses is not empty

    // verses.forEach((element) {
    //   print(element);
    // },);
    setState(() {});
  }
}
