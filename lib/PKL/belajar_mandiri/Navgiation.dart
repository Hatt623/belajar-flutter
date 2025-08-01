import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Open second screen'),
        onPressed: () {
          Navigator.pushNamed(context, '/buttons');
        },
      ),
    );
  }
}