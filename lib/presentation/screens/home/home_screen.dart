import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_ast/core/strings_manager.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/settings_tab/settings_tab.dart';

import '../../../core/assets_manager.dart';
import '../../../core/colors_manager.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsManager.lightMainBg,
              ))),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            StringsManager.appTitle,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: ColorsManager.goldColor,
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index; // 1
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  //backgroundColor: ColorsManager.goldColor,
                  icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                  label: StringsManager.quranLabel),
              BottomNavigationBarItem(
                  //backgroundColor: ColorsManager.goldColor,

                  icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                  label: StringsManager.hadithLabel),
              BottomNavigationBarItem(
                  //backgroundColor: ColorsManager.goldColor,

                  icon: ImageIcon(AssetImage(AssetsManager.tasbehIcon)),
                  label: StringsManager.sebhaLabel),
              BottomNavigationBarItem(
                  //backgroundColor: ColorsManager.goldColor,

                  icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                  label: StringsManager.radioLabel),
              BottomNavigationBarItem(
                  //backgroundColor: ColorsManager.goldColor,

                  icon: Icon(Icons.settings),
                  label: StringsManager.settingsLabel)
            ]),
        body: tabs[selectedIndex], // 0 // 1
      ),
    );
  }
}
