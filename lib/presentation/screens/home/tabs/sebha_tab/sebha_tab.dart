import 'package:quran_app_c12_online_ast/core/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_ast/core/colors_manager.dart';
import 'package:quran_app_c12_online_ast/core/strings_manager.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

int Counter = 0;
int currentCounter = 0;
double animation = 0;

class _SebhaTabState extends State<SebhaTab> {
  @override
  List<String> seb7a = [
    'سبحان الله ',
    'الحمدلله',
    'الله اكبر',
    'لا حول ولا قوه الا بالله ',
    'استغفر الله'
  ];
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Positioned(
                top: 49,
                child: Image.asset(
                  AssetsManager.headseb7a,
                  width: 200,
                  height: 100,
                ),
              ),
              Positioned(
                child: Transform.rotate(
                  angle: animation,
                  child: Image.asset(
                    AssetsManager.bodyofseb7a,
                    width: 200,
                    height: 400,
                  ),
                ),
              ),
            ],
          ),
          Text(
            StringsManager.tasbehCounter,
            style: TextStyle(fontSize: 40),
          ),
          Container(
            width: 69,
            height: 81,
            decoration: BoxDecoration(
                color: ColorsManager.goldColor,
                borderRadius: BorderRadius.circular(30)),
            child: Center(
                child: Text(
              '$Counter',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsManager.goldColor),
              onPressed: () {
                seb7acounter();
                setState(() {
                  animation += 10;
                });
              },
              child: Text(seb7a[currentCounter],
                  style: TextStyle(fontSize: 30, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  void seb7acounter() {
    Counter++;
    if (Counter > 30) {
      Counter == 0;
      if (currentCounter == (seb7a.length - 1)) {
        currentCounter == 0;
      } else {
        currentCounter++;
      }
    }
  }
}
