import 'package:quran_app_c12_online_ast/core/assets_manager.dart';
import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

int Counter = 0;
int currentounter = 0;
int animation = 0;

class _SebhaTabState extends State<SebhaTab> {
  @override
  List<String> seb7a = ['سبحان الله ','الحمدلله','الله اكبر','لا حول ولا قوه الا بالله ','استغفر الله'];
  Widget build(BuildContext context) {
    return Column(
      
      children: [
          Image.asset(AssetsManager.headseb7a, width: 200, height: 200,) ,
          Image.asset(AssetsManager.bodyofseb7a, width: 200, height: 400,) ,
    Text('data')
      ],
    );
  }
}
