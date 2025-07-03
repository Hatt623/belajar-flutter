import 'package:flutter/material.dart';

class MateriFlutterBook extends StatelessWidget {
  const MateriFlutterBook({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Contoh Gambar Picsum
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Example: Aesthetic Image',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          'https://picsum.photos/id/237/300/200',
                          width: 300,
                          height: 200,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return SizedBox(
                              width: 300,
                              height: 200,
                              child: Center(child: CircularProgressIndicator()),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return SizedBox(
                              width: 300,
                              height: 200,
                              child: Center(child: Text('Failed to load image')),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              // Example 1: Basic Row with SpaceEvenly
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Example 1: Basic Row with SpaceEvenly',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.blue,
                          child: Center(
                            child: Text('Box 1', style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.red,
                          child: Center(
                            child: Text('Box 2', style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.green,
                          child: Center(
                            child: Text('Box 3', style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              // Example 2: Column with Start Alignment
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Example 2: Column with Start Alignment',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 200,
                      color: Colors.grey[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            height: 50,
                            color: Colors.blue,
                            child: Center(
                              child: Text('Box 1', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 50,
                            color: Colors.red,
                            child: Center(
                              child: Text('Box 2', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 50,
                            color: Colors.green,
                            child: Center(
                              child: Text('Box 3', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              // Example 3: Row with Expanded
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Example 3: Row with Expanded',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 80,
                            color: Colors.blue,
                            child: Center(
                              child: Text('Expanded 1', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 80,
                            color: Colors.red,
                            child: Center(
                              child: Text('Expanded 2', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              // Example 4: Scrollable Row
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Example 4: Scrollable Row',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 120,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(10, (index) {
                            return Container(
                              width: 100,
                              height: 100,
                              color: index % 2 == 0 ? Colors.blue : Colors.red,
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              child: Center(
                                child: Text('Box ${index + 1}', style: TextStyle(color: Colors.white)),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              // Example 5: Nested Row and Column
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Example 5: Nested Row and Column',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.all(8),
                      color: Colors.grey[200],
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.blue,
                                child: Center(
                                  child: Text('1', style: TextStyle(color: Colors.white)),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.red,
                                child: Center(
                                  child: Text('2', style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text('Profile Card Example', textAlign: TextAlign.center),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.favorite, color: Colors.red),
                              SizedBox(width: 8),
                              Icon(Icons.share, color: Colors.blue),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}