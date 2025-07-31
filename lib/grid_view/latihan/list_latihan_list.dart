import 'package:belajar_flutter/grid_view/latihan/detail_latiha.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class RoadList extends StatelessWidget {
  final Map<String, String> data;
  RoadList({super.key, required this.data});

  final List<Map<String, String>> Allmateri = [
    {
    'title': 'Logika Dasar',
    'description': 'Belajar Logika dasar PHP',
    'mapel': 'lorem Ipsum dolor sit amet',
    'image': 'https://picsum.photos/200?1',
    'category': 'PHP',
    },

    {
      'title': 'OOP Flutter',
      'description': 'Belajar OOP Flutter dasar',
      'mapel': 'lorem Ipsum dolor sit amet',
      'image': 'https://picsum.photos/200?2',
      'category': 'Flutter',
    },
    
    {
      'title': 'Routing Laravel',
      'description': 'Belajar Routing dasar Laravel',
      'mapel': 'lorem Ipsum dolor sit amet',
      'image': 'https://picsum.photos/200?3',
      'category': 'Laravel',
    },

    {
      'title': 'Perkenalan HTML',
      'description': 'Perkenalan dasar HTML',
      'mapel': 'lorem Ipsum dolor sit amet',
      'image': 'https://picsum.photos/200?4',
      'category': 'HTML',
    },

    
  ];

 @override
  Widget build(BuildContext context) {
    // Filter berdasarkan name grid
    final List<Map<String, String>> materi = Allmateri.where((mat) {
      return mat['category'] == data['name'];
    }).toList();

    return MainLayout(
      title: data['name']!,
      body: ListView.builder(
        itemCount: materi.length,
          itemBuilder: (context, index) {
            final mat = materi[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MateriDetail(data: mat),  
                    )
                  );
              },

              child: Container(
                margin: EdgeInsets.all(10),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 6)
                  ],
                ),

                child: Row(
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),),
                          image: DecorationImage(
                            image: NetworkImage(mat['image']!),
                            fit: BoxFit.cover
                            )
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding:const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(mat['title']!,
                                style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                            const SizedBox(height: 5,),
                            Text(mat['description']!,
                              style: TextStyle(fontSize: 13),
                            ),
                            
                          ],
                        ),
                      )
                    )

                  ],
                ),
              ),

            );
          }, 
        ),
        
    );
  }
}