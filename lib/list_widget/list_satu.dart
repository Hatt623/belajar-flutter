import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ListSatu extends StatelessWidget {
  const ListSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar List',
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: Text('Text' + index.toString()),
          );
        },
        scrollDirection: Axis.horizontal,

        // children: [
        //   Container(
        //     width: 200,
        //     height: 100,
        //     margin: EdgeInsets.all(10),
        //     color: Colors.blue,
        //     child: FlutterLogo(),
        //   ),

        //   Container(
        //     width: 200,
        //     height: 100,
        //     margin: EdgeInsets.all(10),
        //     color: Colors.blue,
        //     child: FlutterLogo(),
        //   ),
          
        //   Container(
        //     width: 200,
        //     height: 100,
        //     margin: EdgeInsets.all(10),
        //     color: Colors.blue,
        //     child: FlutterLogo(),
        //   ),
        // ],
      ),

    );
  }

}