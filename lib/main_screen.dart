import 'package:flutter/material.dart';
import 'package:troy_client/features/shared/appstyle.dart';
import 'package:troy_client/features/shared/bottom_nav/bottom_nav.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        bottomNavigationBar: const BottomNav(),
        body: Center(
          child: Text(
            "Troy Ecommerce",
            style: appstyle(35, Colors.black, FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
