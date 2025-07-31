import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class MateriDetail extends StatelessWidget {
  final Map<String, String> data;
  const MateriDetail({super.key, required this.data});

 @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: data['title']!,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.all(20),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(data['image']!),
                  fit: BoxFit.cover
                  ),
                    borderRadius: BorderRadius.circular(15)
              ),
            ),
            // Image.network(data['image']!, height: 200,width: double.infinity),
            const SizedBox(height: 20,),
            Text(data['description']!, style: const TextStyle(fontSize: 10),),
            const SizedBox(height: 20,),
            Text(data['mapel']!, style: const TextStyle(fontSize: 20),),
          ],          
          
        ),
      ),

    );
  }
}