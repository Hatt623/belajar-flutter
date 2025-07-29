import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Columns Satu',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Text Widget 1'),
          Text('Text Widget 2'),
          Text('Text Widget 3'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Text Row Widget 1'),
              Text('Text Row Widget 2'),
            ],)
        ],
      ),
    );
  }
}