import 'package:flutter/material.dart';

import '../../../../../core/assets_manager.dart';

class SebhaTab extends StatefulWidget {

  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double rotationAngle = 0.0;
  int numberOfTasabeh=0;
  int idx=0;
  List<String>azkar=["سبحان الله","الحمد لله","الله أكبر"];
  void sebhaPressed(int tasabehNumber) {
    if(tasabehNumber==30)
      {
        idx==(azkar.length-1)?idx=0:idx++;
        numberOfTasabeh=0;
        rotationAngle += 1/30;
      }
    else{
      numberOfTasabeh++;
      rotationAngle += 1/30;
    }
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          InkWell(
            onTap: ()=>sebhaPressed(numberOfTasabeh),
            child:Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(AssetsManager.sebhaHeaderImage,scale: 1.25,),
                Transform.rotate(
                  angle: rotationAngle * 3.14159 ,
                  alignment: Alignment.center,
                  child: Image.asset(AssetsManager.sebhaBodyImage,scale: 3,),
                ),
              ],
            ),
          ),
          Text("عدد التسبيحات",style: TextStyle(color: Colors.black),),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(numberOfTasabeh.toString()),
            ),
            color: Color(0xFFB7935F),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(azkar[idx]),
            ),
            color: Color(0xFFB7935F),
          )

        ],
      ),
    );
  }
}
