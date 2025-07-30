import 'package:belajar_flutter/list_widget/detail_screen.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ArticleListScreen extends StatelessWidget {
  ArticleListScreen({super.key});

  final List<Map<String, String>> articles = [
    {
      'title': 'Flutter Dasar',
      'description': 'Belajar dasar flutter',
      'image': 'https://picsum.photos/id/237/200/300',

    },

    {
      'title': 'PHP Dasar',
      'description': 'Belajar dasar PHP',
      'image': 'https://picsum.photos/id/237/200/300',

    },

    {
      'title': 'Laravel Dasar',
      'description': 'Belajar dasar Laravel',
      'image': 'https://picsum.photos/id/237/200/300',

    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Article',
      body: ListView.builder(
        itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ArticleDetailScreen(data: article),  
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
                            image: NetworkImage(article['image']!),
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
                            Text(article['title']!,
                                style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                            const SizedBox(height: 5,),
                            Text(article['description']!,
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