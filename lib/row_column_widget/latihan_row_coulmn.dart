import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class LatihanRowColumn extends StatelessWidget {
  const LatihanRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan Row Column',
      body: Center(
        child: Container(
          height: 70,
          width: double.infinity,
          color: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.call,size: 50,),
                  Text('Call')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.navigation,size: 50,),
                  Text('Navigation')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.share,size: 50,),
                  Text('Share')
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}