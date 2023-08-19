import 'package:flutter/material.dart';
import 'package:troy_client/features/shared/appstyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home Screen',
          style: appstyle(35, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
