import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Satu',
      body: Container(
        margin: EdgeInsets.all(10),
        color: Colors.blue,
        width: 200,
        height: 100,
        child: Container(
          margin: EdgeInsets.all(8),
          color: Colors.red,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Text'),
            ),
          ),
        ),
      ),
    );
  }
}