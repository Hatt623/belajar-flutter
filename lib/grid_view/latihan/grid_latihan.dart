import 'package:belajar_flutter/grid_view/latihan/list_latihan_list.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class GridLatihan extends StatelessWidget {
  const GridLatihan({super.key});

  final List<Map<String, String>> roadmap = const [
     {
      'name': 'HTML',
      'durasi': '1 bulan',
      'image': 'https://picsum.photos/200?1'
    },
    {
      'name': 'PHP',
      'durasi': '1 bulan',
      'image': 'https://picsum.photos/200?2'
    },
    {
      'name': 'Laravel',
      'durasi': '1 bulan',
      'image': 'https://picsum.photos/200?3'
    },
    {
      'name': 'Flutter',
      'durasi': '1 bulan',
      'image': 'https://picsum.photos/200/?4'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Roadmap Belajar RPL',
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: roadmap.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 Kolom
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final road = roadmap[index];
            return GestureDetector(
               onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RoadList(data: road),  
                    )
                  );
              },

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
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
                        child: Image.network(road['image']!, fit: BoxFit.cover),
                      ),
                    ),
                    // Overlay
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                    // Price & Name
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(road['name']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                          Text(road['durasi']!,
                              style: const TextStyle(
                                color: Colors.white, fontSize: 12)),
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