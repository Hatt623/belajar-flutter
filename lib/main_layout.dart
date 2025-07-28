import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final String title;
  final Widget body;

  const MainLayout({
    Key? key, 
    required this.title, 
    required this.body})
    
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        
        backgroundColor: const Color.fromARGB(255, 97, 99, 102),
        title: Text(title),
      ),
      body: body,
    );
  }
}