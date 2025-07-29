import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan Satu',
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/seed/picsum/200/300"),
                    fit: BoxFit.cover
                    ),
                      borderRadius: BorderRadius.circular(15)
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
                ),
              ),

              Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gunung Roblos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                          ),

                          Text(
                            "OMG gunung eperest",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                      ],
                    ),
                    Icon(Icons.play_circle_fill, color: Colors.white, size: 40,)
                  ],
                ),
              )
            ],  
          ),
        ),
      ),
    );
  }
}