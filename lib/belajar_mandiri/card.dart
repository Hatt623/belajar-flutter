import 'package:flutter/material.dart';

class card extends StatelessWidget {
  const card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
         elevation: 5, // Shadow effect
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text("Contoh simple card di Flutter !"),
        ),
      ),
    );
  }
}