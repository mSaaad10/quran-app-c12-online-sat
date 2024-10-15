import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedLang(context, 'English'),
          const SizedBox(
            height: 12,
          ),
          buildUnSelectedLang(context, 'العربيه'),
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
        Text(
          unSelectedLang,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
