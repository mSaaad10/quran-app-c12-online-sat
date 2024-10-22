import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_online_ast/providers/theme_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                themeProvider.changeAppTheme(ThemeMode.light);
              },
              child: themeProvider.isLightTheme()
                  ? buildSelectedThemeWidget(
                      context, AppLocalizations.of(context)!.light)
                  : buildUnSelectedThemeWidget(
                      context, AppLocalizations.of(context)!.light)),
          const SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                themeProvider.changeAppTheme(ThemeMode.dark);
              },
              child: !(themeProvider.isLightTheme())
                  ? buildSelectedThemeWidget(
                      context, AppLocalizations.of(context)!.dark)
                  : buildUnSelectedThemeWidget(
                      context, AppLocalizations.of(context)!.dark))
        ],
      ),
    );
  }

  Widget buildSelectedThemeWidget(BuildContext context, String selectedTheme) {
    return Row(
      children: [
        Text(
          selectedTheme,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Spacer(),
        const Icon(
          Icons.check,
        )
      ],
    );
  }

  Widget buildUnSelectedThemeWidget(
      BuildContext context, String unSelectedTheme) {
    return Row(
      children: [
        Text(unSelectedTheme, style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}
