import 'package:belajar_flutter/row_column/Latihan4.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(

        appBar: AppBar(
          title: Text('Belajar Flutter', 
            style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 94, 225, 216)),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 97, 99, 102),
        ),

        body: Latihan4(),
      ),
    );
  }
}

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color.fromARGB(255, 127, 129, 133), const Color.fromARGB(255, 172, 171, 176)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 152, 163, 168), Color.fromARGB(255, 173, 193, 196), Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
    
        child: Center(
          child: Text(
            'Hello flutter',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

