import 'package:flutter/material.dart';

class scroll extends StatelessWidget {
  const scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Text('Item $index'),
      ),
    );
  }
}