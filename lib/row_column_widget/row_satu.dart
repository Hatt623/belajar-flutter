import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class RowSatu extends StatelessWidget {
  const RowSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Row Satu',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Text Widget 1'),
          Text('Text Widget 2'),
          Text('Text Widget 3'),
          Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Text('Text WC 1'),
            Text('Text WC 2'),
            Text('Text WC 3'),
          ],)
        ],
      ),
    );
  }
}