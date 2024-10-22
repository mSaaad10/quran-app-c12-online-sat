import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_online_ast/core/assets_manager.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/hadith_tab/widgets/hadith_header_widget.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/hadith_tab/widgets/hadith_title_widget.dart';
import 'package:quran_app_c12_online_ast/providers/hadith_provider.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  @override
  Widget build(BuildContext context) {
    var hadithProvider = Provider.of<HadithProvider>(context);
    if (hadithProvider.allHadithList.isEmpty) {
      hadithProvider.loadHadithFile(); // is async fuc -> Non Blocking
    }
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1, child: Image.asset(AssetsManager.hadithHeaderImage)),
          const HadithHeaderWidget(),
          Expanded(
              flex: 3,
              child: hadithProvider.allHadithList.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  : ListView.separated(
                      itemBuilder: (context, index) => HadithTitleWidget(
                          hadith: hadithProvider.allHadithList[index]),
                      separatorBuilder: (context, index) => Divider(
                            color: Theme.of(context).dividerColor,
                            thickness: 3,
                            height: 6,
                          ),
                      itemCount: hadithProvider.allHadithList.length))
        ],
      ),
    );
  }

  String add(String n1, String n2) {
    return n1 + n2; // 105
  }

}

class Hadith {
  String title;
  String content;

  Hadith({required this.title, required this.content});
}
