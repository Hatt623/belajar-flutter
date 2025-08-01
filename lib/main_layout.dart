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
        
        backgroundColor: Color.fromARGB(255, 106, 161, 243),
        title: Text(title, style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
      ),
      body: body,
    );
  }
}