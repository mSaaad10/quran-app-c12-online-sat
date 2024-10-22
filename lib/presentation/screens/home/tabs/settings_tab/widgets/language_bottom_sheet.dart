import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_online_ast/providers/language_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var langProvider = Provider.of<LanguageProvider>(context);

    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                langProvider.changeAppLang('en');
              },
              child: langProvider.currentLang == 'en'
                  ? buildSelectedLang(context, "English")
                  : buildUnSelectedLang(context, 'English')),
          const SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                langProvider.changeAppLang('ar');
              },
              child: langProvider.currentLang == 'ar'
                  ? buildSelectedLang(context, 'العربيه')
                  : buildUnSelectedLang(context, "العربيه")),
        ],
      ),
    );
  }

  Widget buildSelectedLang(context, String selectedLang) {
    return Row(
      children: [
        Text(
          selectedLang,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Spacer(),
        const Icon(
          Icons.check,
        )
      ],
    );
  }

  Widget buildUnSelectedLang(context, String unSelectedLang) {
    return Row(
      children: [
        Text(unSelectedLang, style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}
