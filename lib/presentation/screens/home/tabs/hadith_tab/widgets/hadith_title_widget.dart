import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key, required this.hadith});

  Hadith hadith;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        hadith.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
