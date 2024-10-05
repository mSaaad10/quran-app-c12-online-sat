import 'package:flutter/material.dart';

class SuraVersesWidget extends StatelessWidget {
  SuraVersesWidget({super.key, required this.verse});

  String verse;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      color: Theme.of(context).primaryColor.withOpacity(0.7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 14,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
        child: Text(
          verse,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
