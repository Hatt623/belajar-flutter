import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class StackDua extends StatelessWidget {
  const StackDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: 200, height: 200, color: Colors.amber,),
        Positioned(
          top: 10,
          left: 10,
          child: Icon(Icons.star),
        ),
         Positioned(
          top: 10,
          left: 165,
          child: Icon(Icons.star),
        ),
        Positioned(
          top: 85,
          left: 85,
          child: Icon(Icons.star),
        ),
        Positioned(
          top: 160,
          left: 10,
          child: Icon(Icons.star),
        ),
         Positioned(
          top: 160,
          left: 165,
          child: Icon(Icons.star),
        ),
        
      ],
    );
  }
}