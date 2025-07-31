import 'package:flutter/material.dart';


class ImageNAsset extends StatelessWidget {
  const ImageNAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage('assets/images/LP.jpeg'), width: 100, height: 100);
  }
}