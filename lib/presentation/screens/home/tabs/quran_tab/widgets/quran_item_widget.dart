import 'package:flutter/material.dart';

class QuranItemWidget extends StatelessWidget {
  String suraName;
  String versesNumber;

  QuranItemWidget(
      {super.key, required this.suraName, required this.versesNumber});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(4),
            child: Text(
              versesNumber,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          )),
          VerticalDivider(
            color: Theme.of(context).dividerColor,
            width: 3,
            thickness: 3,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(4),
            child: Text(
              suraName,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ))
        ],
      ),
    );
  }
}
