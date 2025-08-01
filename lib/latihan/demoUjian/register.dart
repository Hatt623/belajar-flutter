import 'package:belajar_flutter/latihan/demoUjian/package.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:belajar_flutter/helpers/size_helper.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController tglLahirController = TextEditingController();

  String _jk = "";
  String? _jkError;
  String _chooseReligion = "";

  final List<String> religion = [
    "Islam",
    "Protestan",
    "Katholik",
    "Budha",
    "Atheis",
  ];

  @override
  void initState() {
    tglLahirController.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Abel Epic 😒👌 Hardware Store',
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.blueGrey,
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                elevation: 4,
                margin: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
              padding: const EdgeInsets.all(24),

              // form register
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Register Form",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 18),

                    // Nama Lengkap
                    TextFormField(
                      controller: namaController,
                      decoration: InputDecoration(
                        hintText: "Nama Lengkap",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) return 'Input Name';
                        return null;
                      },
                    ),
                    const SizedBox(height: 18),

                    // Jenis Kelamin
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Jenis Kelamin",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: "Man",
                          groupValue: _jk,
                          onChanged: (value) {
                            setState(() {
                              _jk = value!;
                              _jkError = null;
                            });
                          },
                        ),
                        Text("Man"),
                        SizedBox(width: 24),

                        Radio<String>(
                          value: "Woman",
                          groupValue: _jk,
                          onChanged: (value) {
                            setState(() {
                              _jk = value!;
                              _jkError = null;
                            });
                          },
                        ),
                        Text("Woman"),
                      ],
                    ),
                    if (_jkError != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          _jkError!,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    const SizedBox(height: 18),

                    // birth date
                    TextFormField(
                      controller: tglLahirController,
                      decoration: InputDecoration(
                        hintText: "Birth Date",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) return 'Input birth date';
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
                            tglLahirController.text = DateFormat('yyyy-MM-dd')
                                .format(pickedDate);
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 18),

                    // Pilih religion
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: "Pilih religion",
                        border: OutlineInputBorder(),
                      ),
                      items:
                        religion
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _chooseReligion = value!;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Pilih religion';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),

                    // Submit button
                    SizedBox(
                      width: displayWidth(context) * 0.8,
                      height: displayHeight(context) * 0.075,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                        child: Text(
                          "Simpan",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: _submit,
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
      final isValid = _formKey.currentState!.validate();
      if (_jk.isEmpty) {
        setState(() => _jkError = 'Choose a gender!');
      }

      if (!isValid || _jk.isEmpty) return;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: 
            (context) => Package(
              religion: _chooseReligion,
            ),
        ),
      );
    }
  }



