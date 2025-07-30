import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ListDua extends StatelessWidget {
  ListDua({super.key});

  final List<Map<String, dynamic>> listData = [
    {'color' : Colors.red, 'partai': 'Partai Banteng'},
    {'color' : Colors.blue, 'partai': 'Partai Ikan'},
    {'color' : Colors.green, 'partai': 'Partai Hutan'},

  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
    title: 'Belajar List Dua',
    body: ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, i) {
          final data = listData[i];
          return Container(
            color: data['color'],
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            child: Center(child: Text(data['partai']),
            ),
          );
      },
      scrollDirection: Axis.horizontal,
      
      ),  
    );
  }
}