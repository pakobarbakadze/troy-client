import 'package:flutter/material.dart';

import '../widgets/add_stay_form.dart';

class AddStayScreen extends StatelessWidget {
  const AddStayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add new stay',
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text(
                "Create an application for guests indicating all the necessary living conditions."),
            SizedBox(height: 25),
            AddStayForm(),
          ],
        ),
      ),
    );
  }
}
