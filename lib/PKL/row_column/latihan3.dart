import 'package:flutter/material.dart';

class latihan3 extends StatelessWidget {
  const latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10)), 
                  Text('GIBSON LP', style: TextStyle(fontSize: 30, color: Colors.yellow, fontWeight: FontWeight.bold),),
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl25x341Rd1n6RKZt8CETRNPJHas8YFLR6iA&s')
                  ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Gibson_Logo_and_Guitar.jpg/960px-Gibson_Logo_and_Guitar.jpg?20180513154420', width: 300),
                  Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Gibson_Logo_and_Guitar.jpg/960px-Gibson_Logo_and_Guitar.jpg?20180513154420', width: 300),
                ],
              ),

               Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Padding(padding: EdgeInsets.all(10)),Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl25x341Rd1n6RKZt8CETRNPJHas8YFLR6iA&s')],
              ),
            ],
            
          
        ),
      ),

    );
  }
}