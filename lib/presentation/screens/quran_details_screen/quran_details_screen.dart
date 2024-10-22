import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/quran_details_screen/widgets/sura_verses_widget.dart';
import 'package:quran_app_c12_online_ast/providers/quran_provider.dart';
import 'package:quran_app_c12_online_ast/providers/theme_provider.dart';

import '../../../core/assets_manager.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  //List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    var quranProvider = Provider.of<QuranProvider>(context);
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (quranProvider.verses.isEmpty)
      quranProvider.readQuranFile(suraItem.index + 1); // non blocking // 1
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                themeProvider.isLightTheme()
                    ? AssetsManager.lightMainBg
                    : AssetsManager.darkMainBg,
              ))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(suraItem.suraName),
          ),
          body: quranProvider.verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) =>
                      SuraVersesWidget(verse: quranProvider.verses[index]),
                  itemCount: quranProvider.verses.length,
                )),
    );
  }

  String add(String n1, String n2) {
    return n1 + n2; // 420
  }


}
