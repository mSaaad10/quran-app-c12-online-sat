import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_ast/core/strings_manager.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';

import '../../../core/assets_manager.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsManager.lightMainBg,
              ))),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringsManager.appTitle),
        ),
        body: Card(
            child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                hadith.title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white),
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
                indent: 28,
                endIndent: 28,
              ),
              Text(
                hadith.content,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ]),
          ),
        )),
      ),
    );
  }
}
