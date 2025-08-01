import 'package:belajar_flutter/latihan/ujian/package_list.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class CourseMainPage extends StatelessWidget {
  const CourseMainPage({super.key});
  final List<Map<String, String>> Course = const [
     {
      'courseName': 'Guitar',
      'image': 'https://picsum.photos/200?1'
    },
    {
      'courseName': 'Piano',
      'image': 'https://picsum.photos/200?2'
    },
    {
      'courseName': 'Violin',
      'image': 'https://picsum.photos/200?3'
    },
    {
      'courseName': 'Drum',
      'image': 'https://picsum.photos/200/?4'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Music Course',
      body: 
      Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: Course.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final paket = Course[index];
            return GestureDetector(
               onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CourseList(data: paket),  
                    )
                  );
              },

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      Colors.blueAccent,
                      Colors.redAccent,
                      Colors.greenAccent,
                    ], 
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 6)
                  ],
                ),
                child: Stack(
                  children: [
                    // Background image
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(paket['image']!, fit: BoxFit.cover),
                      ),
                    ),
                    // Overlay
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                    // course
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(paket['courseName']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}