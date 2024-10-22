import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app_c12_online_ast/providers/theme_provider.dart';

import '../../../core/assets_manager.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;
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
        body: Card(
            child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                hadith.title,
                style: Theme.of(context).textTheme.labelSmall),
              Divider(
                color: Theme.of(context).indicatorColor,
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
