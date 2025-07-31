import 'package:belajar_flutter/latihan/demoUjian/payment_detail.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class PackageList extends StatefulWidget {
  final Map<String, String> data;

  PackageList({super.key, required this.data});

  @override
  State<PackageList> createState() => _PackageListState();
}

class _PackageListState extends State<PackageList> {
  final priceController = NumberFormat.currency(locale: 'id', symbol: 'Rp');

  final List<Map<String, dynamic>> allPackage = [
    {
      'model': 'ASUS ROG GL503GE',
      'description': 'Perkenalan dasar HTML',
      'price': 12000000,
      'image': 'https://picsum.photos/200?1',
      'brand': 'ASUS',
    },

    {
      'model': 'ASUS ROG STRIX',
      'description': 'Perkenalan dasar HTML',
      'price': 12000000,
      'image': 'https://picsum.photos/200?1',
      'brand': 'ASUS',
    },

    {
      'model': 'HP VICTUS 10GL32',
      'description': 'Perkenalan dasar HTML',
      'price': 12000000,
      'image': 'https://picsum.photos/200?2',
      'brand': 'HP',
    },
    {
      'model': 'MSI Thin 15 B12VE',
      'description': 'Perkenalan dasar HTML',
      'price': 12000000,
      'image': 'https://picsum.photos/200?3',
      'brand': 'MSI',
    },
    {
      'model': 'Axioo Pongo 725',
      'description': 'Perkenalan dasar HTML',
      'price': 12000000,
      'image': 'https://picsum.photos/200?4',
      'brand': 'Axioo',
    },
  ];

  // Quantity controllers mapped by index
  final Map<int, TextEditingController> quantityControllers = {};

  @override
  void dispose() {
    quantityControllers.values.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> package = allPackage.where((pac) {
      return pac['brand'] == widget.data['brandName'];
    }).toList();

    return MainLayout(
      title: widget.data['brandName']!,
      body: Form(
        child:ListView.builder(
          itemCount: package.length,
          itemBuilder: (context, index) {
            final pac = package[index];
            quantityControllers[index] ??= TextEditingController();

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
                          Text(pac['model'],
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
                      TextFormField(
                        controller: quantityControllers[index],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Qty',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) return 'Input quantity';
                          return null;
                        },
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_forward),
                        onPressed: () => _submit(pac,index),
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

  void _submit(Map<String, dynamic> pac,index){
    final qtyValidtor = quantityControllers[index]!.text;

    if (qtyValidtor.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Fill the quantity (atleast 1) for ${pac['model']}')),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PaymentDetail(
          itemModel: pac['model'],
          quantity: int.parse(quantityControllers[index]!.text),
          price: pac['price'],
        ),
      ),
    );
  }
}