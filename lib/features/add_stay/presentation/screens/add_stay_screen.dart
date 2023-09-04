import 'package:flutter/material.dart';

class AddStayScreen extends StatefulWidget {
  const AddStayScreen({super.key});

  @override
  State<AddStayScreen> createState() => _AddStayScreenState();
}

class _AddStayScreenState extends State<AddStayScreen> {
  final _formKey = GlobalKey<FormState>();

  String _enteredName = '';
  int _enteredPrice = 0;
  String _enteredDescription = '';
  final List<String> _enteredImages = [];

  void _addStay() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    print(_enteredName);
    print(_enteredPrice);
    print(_enteredDescription);
    print(_enteredImages);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add new stay',
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Text(
                "Create an application for guests indicating all the necessary living conditions."),
            const SizedBox(height: 25),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Hotel name',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value == '') {
                              return "Enter hotel name";
                            }
                            return null;
                          },
                          onSaved: (newValue) => _enteredName = newValue!,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Price per night',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                          ),
                          validator: (value) {
                            if (value == null ||
                                int.tryParse(value) == null ||
                                int.parse(value) <= 0) {
                              return "Enter valid price";
                            }
                            return null;
                          },
                          onSaved: (newValue) =>
                              _enteredPrice = int.parse(newValue!),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Hotel description',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value == '') {
                        return "Enter hotel description";
                      }
                      return null;
                    },
                    onSaved: (newValue) => _enteredDescription = newValue!,
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Hotel images',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value == '') {
                        return "Enter hotel images";
                      }
                      return null;
                    },
                    onSaved: (newValue) => _enteredImages.add(newValue!),
                  ),
                  const SizedBox(height: 15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: _addStay,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow.shade600,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 5,
                        ),
                      ),
                      child: const Text(
                        "Submit",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
