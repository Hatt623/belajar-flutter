import 'package:belajar_flutter/latihan/ujian/course_detail.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class CourseList extends StatefulWidget {
  final Map<String, String> data;

  CourseList({super.key, required this.data});

  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  final priceController = NumberFormat.currency(locale: 'id', symbol: 'Rp');

  final List<Map<String, dynamic>> allPackage = [
    {
      'teacher': 'Mr. Philei',
      'description': 'Guitar teacher',
      'price': 2000000,
      'image': 'https://picsum.photos/200?1',
      'course': 'Guitar',
    },

    {
      'teacher': 'Mrs. Emely',
      'description': 'Piano teacher',
      'price': 2000000,
      'image': 'https://picsum.photos/200?2',
      'course': 'Piano',
    },

    {
      'teacher': 'Mr. Bach',
      'description': 'Violin teacher',
      'price': 2000000,
      'image': 'https://picsum.photos/200?3',
      'course': 'Violin',
    },
    {
      'teacher': 'Mr. Dexter',
      'description': 'Drum teacher',
      'price': 2000000,
      'image': 'https://picsum.photos/200?4',
      'course': 'Drum',
    },
  ];

  @override

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> package = allPackage.where((pac) {
      return pac['course'] == widget.data['courseName'];
    }).toList();

    return MainLayout(
      title: widget.data['courseName']!,
      body: Form(
        child:ListView.builder(
          itemCount: package.length,
          itemBuilder: (context, index) {
            final pac = package[index];

            return Container(
              margin: EdgeInsets.all(10),
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(pac['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(pac['teacher'],
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 5),
                          Text(priceController.format(pac['price']),
                              style: const TextStyle(fontSize: 13)),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),

                SizedBox(
                  width: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_forward),
                        onPressed: () => _submit(pac),
                      )
                    ],
                  ),
                ),

                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _submit(Map<String, dynamic> pac){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CourseDetail(
          teacher: pac['teacher'],
          image: pac['image'],
          course: pac['course'],
          price: pac['price'],
        ),
      ),
    );
  }
}