import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Text Atas', style: TextStyle(fontSize: 32)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlutterLogo(size: 50,style: FlutterLogoStyle.stacked, textColor: Colors.red,),
              FlutterLogo(size: 50,style: FlutterLogoStyle.stacked, textColor: Colors.orange,),
              FlutterLogo(size: 50,style: FlutterLogoStyle.stacked, textColor: Colors.blue,)
            ],
          ),
          Text('Text Bawah', style: TextStyle(fontSize: 32)),
        ],
      ),
    );
  }
}