import 'package:flutter/material.dart';
import 'package:troy_client/features/shared/appstyle.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Screen',
        style: appstyle(35, Colors.black, FontWeight.bold),
      ),
    );
  }
}
