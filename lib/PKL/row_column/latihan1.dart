import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlutterLogo(size: 80,style: FlutterLogoStyle.stacked, textColor: Colors.red,),
              FlutterLogo(size: 80,style: FlutterLogoStyle.stacked, textColor: Colors.orange,),
              FlutterLogo(size: 80,style: FlutterLogoStyle.stacked, textColor: Colors.blue,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlutterLogo(size: 80,style: FlutterLogoStyle.stacked, textColor: Colors.red,),
             
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlutterLogo(size: 80,style: FlutterLogoStyle.stacked, textColor: Colors.red,),
             
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlutterLogo(size: 80,style: FlutterLogoStyle.stacked, textColor: Colors.red,),
             
            ],
          ),
        ],
      ),
    );
  }
}