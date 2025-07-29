import 'package:belajar_flutter/container_widget/container_stau.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ContainerDua extends StatelessWidget {
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Dua',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueAccent,
              Colors.redAccent,
              Colors.greenAccent,
            ], 
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => ContainerSatu() ));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
            ), 
            child: Text(
              'Pindah Halaman 1',
              style: TextStyle(color: Colors.white),)
          )
        ),
      ),
    );
  }
}