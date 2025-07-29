import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class StackTiga extends StatelessWidget {
  const StackTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Stack Tiga',
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/LP.jpeg')
          ),
          Positioned(
            bottom: 10,
            top: 10,
            child: Text('Les Paul Black Beauty'),
          ),
        ],
      ),
    );
  }
}