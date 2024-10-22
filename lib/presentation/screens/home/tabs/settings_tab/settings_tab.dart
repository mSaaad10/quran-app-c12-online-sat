import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/settings_tab/widgets/language_bottom_sheet.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/tabs/settings_tab/widgets/theme_bottom_sheet.dart';
import 'package:quran_app_c12_online_ast/providers/language_provider.dart';
import 'package:quran_app_c12_online_ast/providers/theme_provider.dart';

class SettingsTab extends StatelessWidget {
  SettingsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var langProvider = Provider.of<LanguageProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 4,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: Theme.of(context).dividerColor, width: 2)),
                child: Text(
                  themeProvider.isLightTheme()
                      ? AppLocalizations.of(context)!.light
                      : AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.headlineSmall,
                )),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 4,
          ),
          InkWell(
            onTap: () {
              showLangBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: Theme.of(context).dividerColor, width: 2)),
                child: Text(
                  langProvider.currentLang == 'en' ? "English" : "العربيه",
                  style: Theme.of(context).textTheme.headlineSmall,
                )),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheet(),
    );
  }

  void showLangBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }
}
