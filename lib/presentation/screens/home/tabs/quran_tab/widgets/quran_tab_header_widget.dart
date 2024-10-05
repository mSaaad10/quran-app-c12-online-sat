import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_ast/core/strings_manager.dart';

class QuranTabHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
        width: 3,
        color: Color(0xFFB7935F),
      ))),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Text(StringsManager.versesNumberLabel,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelMedium)),
            // Container(
            //   color: Colors.red,
            //   width: 3,
            //
            // ),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 3,
              thickness: 3,
            ),
            Expanded(
              child: Text(StringsManager.chapterNameLabel,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium),
            )
          ],
        ),
      ),
    );
  }
}
