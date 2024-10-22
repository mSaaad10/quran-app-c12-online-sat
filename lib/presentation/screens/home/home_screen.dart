import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/settings_tab/settings_tab.dart';
import 'package:quran_app_c12_online_ast/providers/hadith_provider.dart';
import 'package:quran_app_c12_online_ast/providers/theme_provider.dart';

import '../../../core/assets_manager.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    ChangeNotifierProvider(
        create: (context) => HadithProvider(), child: HadithTab()),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
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
          title: Text(AppLocalizations.of(context)!.titleApp),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor, //
          ),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index; // 1
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    //backgroundColor: ColorsManager.goldColor,
                    icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                    label: AppLocalizations.of(context)!.quranTab),
                BottomNavigationBarItem(
                    //backgroundColor: ColorsManager.goldColor,

                    icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                    label: AppLocalizations.of(context)!.hadithTab),
                BottomNavigationBarItem(
                    //backgroundColor: ColorsManager.goldColor,

                    icon: ImageIcon(AssetImage(AssetsManager.tasbehIcon)),
                    label: AppLocalizations.of(context)!.sebhaTab),
                BottomNavigationBarItem(
                    //backgroundColor: ColorsManager.goldColor,

                    icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                    label: AppLocalizations.of(context)!.radioTab),
                BottomNavigationBarItem(
                    //backgroundColor: ColorsManager.goldColor,

                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settingsTab)
              ]),
        ),
        body: tabs[selectedIndex], // 0 // 1
      ),
    );
  }
}
