import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blueGrey,
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [Icon(Icons.call), SizedBox(height: 8), Text('CALL')],
            ),
            Column(
              children: [Icon(Icons.navigation), SizedBox(height: 8), Text('ROUTE')],
            ),
            Column(
              children: [Icon(Icons.share),SizedBox(height: 8,), Text('SHARE')],
            )
          ],
        ),
      ),
      
    );
  }
}