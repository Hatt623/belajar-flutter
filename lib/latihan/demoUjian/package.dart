import 'package:belajar_flutter/latihan/demoUjian/package_list.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class Package extends StatelessWidget {
  final String religion;

  Package({
    Key? key,
    required this.religion,
  }) : super(key: key);

  final List<Map<String, String>> package = const [
     {
      'brandName': 'ASUS',
      'image': 'https://picsum.photos/200?1'
    },
    {
      'brandName': 'HP',
      'image': 'https://picsum.photos/200?2'
    },
    {
      'brandName': 'MSI',
      'image': 'https://picsum.photos/200?3'
    },
    {
      'brandName': 'Axioo',
      'image': 'https://picsum.photos/200/?4'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Laptop Package ',
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: package.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final paket = package[index];
            return GestureDetector(
               onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PackageList(data: paket),  
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
                    // brandName
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(paket['brandName']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
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