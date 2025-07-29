import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class StackSatu extends StatelessWidget {
  const StackSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Stack',
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container( width: 200, height: 200, color: Colors.redAccent,),
          Container( width: 150, height: 100, color: Colors.blueAccent,),
          Container( width: 100, height: 50, color: Colors.greenAccent,),
        ],
      ),
    );
  }
}