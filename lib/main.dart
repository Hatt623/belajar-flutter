import 'package:belajar_flutter/grid_view/latihan/grid_latihan.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridLatihan(),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Flutter',
      body: Center(
        child: Text('Hello Flutter', 
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 94, 225, 216),
            fontWeight: FontWeight.w400,
            backgroundColor: const Color.fromARGB(255, 97, 99, 102),
            ),
        ),
      ),
    );
  }
}