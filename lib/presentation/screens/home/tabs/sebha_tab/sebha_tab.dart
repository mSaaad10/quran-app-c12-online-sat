import 'package:flutter/material.dart';
import '../../../../../core/assets_manager.dart';
import '../../../../../core/colors_manager.dart';
import '../../../../../core/strings_manager.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
   int tasbehCount = 0;
   int currentTasbehCounter = 0;
   double rotation = 0;
   List<String> tasbeh = ['سبحان الله ','الحمدلله','الله اكبر','لا حول ولا قوه الا بالله ','استغفر الله'];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.center,
          child: Transform.rotate(
            angle: rotation,
            child: Image.asset(
              AssetsManager.sebhaBody,
              width: 300,
              height: 300,
            ),
          ),
        ),
        const Text(
          StringsManager.tasbehCounter,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 26,
        ),
        Container(
          width: 69,
          height: 81,
          decoration: BoxDecoration(
              color: ColorsManager.goldColor,
              borderRadius: BorderRadius.circular(25)),
          child: Center(
              child: Text(
            '$tasbehCount',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
        const SizedBox(height:22 ,),

        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorsManager.goldColor,
            ),
            onPressed: () {
              tasbehCounter();
              currentTasbeh(currentTasbehCounter);
              rotation+=10;
              setState(() {

              });
            },
            child: Text(
              tasbeh[currentTasbehCounter],
              style: const TextStyle(color: Colors.white,
                fontSize: 20
              ),
            ))
      ],
    );
  }
  void tasbehCounter(){
    if(tasbehCount==33){
      tasbehCount=0;
      if(currentTasbehCounter<tasbeh.length - 1){
        currentTasbehCounter++;
      }else{
        currentTasbehCounter = 0;
      }
    }else{
      tasbehCount++;
    }
  }
  void currentTasbeh(int index){
    tasbeh[index];
  }
}
