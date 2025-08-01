import 'package:belajar_flutter/latihan/ujian/main_page.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class CoursePayment extends StatefulWidget {
  final String teacher;
  final String image;
  final String course;
  final int price;

  final String name;
  final String courseDate;
  final String difficulty;

  const CoursePayment({
    super.key,
    required this.teacher,
    required this.image,
    required this.course,
    required this.price,

    required this.name,
    required this.courseDate,
    required this.difficulty,
  });

  @override
  State<CoursePayment> createState() => _CoursePaymentState();
}

class _CoursePaymentState extends State<CoursePayment> {
  final TextEditingController _paymentController = TextEditingController();
  final priceController = NumberFormat.currency(locale: 'id', symbol: 'Rp');
  final _formKey = GlobalKey<FormState>();
  bool _isPaid = false;

  @override
  void dispose() {
    _paymentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Course Details',
      body: SafeArea(
        child: _isPaid
            ? _thankYouCard(context)
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          widget.image,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 24),
                      ListTile(
                        leading: Icon(Icons.person,),
                        title: Text('Teacher'),
                        subtitle: Text(widget.teacher),
                      ),
                      ListTile(
                        leading: Icon(Icons.person,),
                        title: Text('Student'),
                        subtitle: Text(widget.name),
                      ),
                      ListTile(
                        leading: Icon(Icons.book),
                        title: Text('Course'),
                        subtitle: Text(widget.course),
                      ),
                      ListTile(
                        leading: Icon(Icons.calendar_today),
                        title: Text('Date'),
                        subtitle: Text(widget.courseDate),
                      ),
                      ListTile(
                        leading: Icon(Icons.bar_chart),
                        title: Text('Difficulty'),
                        subtitle: Text(widget.difficulty),
                      ),
                      ListTile(
                        leading: Icon(Icons.attach_money),
                        title: Text('Cost'),
                        subtitle: Text(priceController.format(widget.price)),
                      ),
                      const SizedBox(height: 24),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _paymentController,
                              decoration: const InputDecoration(
                                labelText: 'Enter Payment Amount',
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                final inputAmount = int.tryParse(value ?? '') ?? 0;
                                if (inputAmount != widget.price) {
                                  return 'Amount must be: ${priceController.format(widget.price)}';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    setState(() => _isPaid = true);
                                  }
                                },
                                child: const Text('Pay'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  Widget _thankYouCard(BuildContext context) {
    return Center(
      child: Card(
        elevation: 6,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Thank you for choosing ${widget.teacher} as your teacher',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text('Payment succeeded for ${widget.course} course'),
              const SizedBox(height: 24),
              Text('Your Course will start at ${widget.courseDate}'),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                icon: const Icon(Icons.arrow_back),
                label: const Text('Return to Course List'),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseMainPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
