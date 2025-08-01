import 'package:belajar_flutter/latihan/ujian/course_payment.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class CourseDetail extends StatefulWidget {
  final String teacher;
  final String image;
  final String course;
  final int price;

  const CourseDetail({
    super.key,
    required this.teacher,
    required this.image,
    required this.course,
    required this.price,
  });

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  final TextEditingController _paymentController = TextEditingController();
  final priceController = NumberFormat.currency(locale: 'id', symbol: 'Rp');
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController courseDateController = TextEditingController();

  String _chooseDifficulty = "";

  final List<String> difficulty = [
    "Beginner",
    "Intermediate",
    "Advanced",
  ];

  @override
  void initState() {
    courseDateController.text = '';
    super.initState();
  }

  @override
  void dispose() {
    _paymentController.dispose();
    nameController.dispose();
    courseDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Course Details',
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.network(
                      widget.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Teacher: ${widget.teacher}',
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Text(
                  'Course: ${widget.course}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Text(
                  'Cost: ${priceController.format(widget.price)}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Course Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 18),
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: "Full Name",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                        ),
                        autofocus: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) return 'Input Full Name';
                          return null;
                        },
                      ),
                      const SizedBox(height: 18),
                      TextFormField(
                        controller: courseDateController,
                        decoration: const InputDecoration(
                          labelText: "Course Date",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.calendar_today),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) return 'Input Course Date';
                          return null;
                        },
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1980),
                            lastDate: DateTime(2100),
                          );
                          if (pickedDate != null) {
                            setState(() {
                              courseDateController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
                            });
                          }
                        },
                      ),
                      const SizedBox(height: 18),
                      DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          labelText: "Choose Difficulty",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.bar_chart),
                        ),
                        items: difficulty
                            .map(
                              (item) => DropdownMenuItem(
                                value: item,
                                child: Text(item),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _chooseDifficulty = value ?? "";
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Choose difficulty';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                              side: const BorderSide(color: Colors.black),
                            ),
                          ),
                          child: const Text(
                            "Confirm",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: _submit,
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

  void _submit() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CoursePayment(
          teacher: widget.teacher,
          image: widget.image,
          course: widget.course,
          price: widget.price,
          name: nameController.text,
          courseDate: courseDateController.text,
          difficulty: _chooseDifficulty,
        ),
      ),
    );
  }
}
