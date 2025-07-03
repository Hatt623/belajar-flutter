import 'package:flutter/material.dart';

class Latihan4 extends StatelessWidget {
  const Latihan4({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(32.0),  
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Foto Profil Saya',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                        ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          'https://picsum.photos/id/237/300/300',
                          width: 210,
                          height: 210,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40), 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 4),
                      Text(
                        'Nama Saya',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      
                      SizedBox(height: 4),
                      Text(
                        'Muhammad Nabeel Hikaru Athailah',
                        style: TextStyle(fontSize: 16),
                      ),
                      
                      SizedBox(height: 16),
                      Text(
                        'Lahir',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),

                      SizedBox(height: 4),
                      Text(
                        'Bandung, 23/01/2008',
                        style: TextStyle(fontSize: 16),
                      ),

                      SizedBox(height: 16),
                      Text(
                        'Kelas',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),

                      SizedBox(height: 4),
                      Text(
                        'XI RPL 1',
                        style: TextStyle(fontSize: 16),
                      ),

                      SizedBox(height: 16),
                      Text(
                        'Link Medsos',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),

                      SizedBox(height: 4),
                      Text(
                        'https://www.instagram.com/hatt_623/',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}