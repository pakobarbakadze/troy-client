import 'package:flutter/material.dart';
import 'package:troy_client/features/shared/appstyle.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Cart Screen',
        style: appstyle(35, Colors.black, FontWeight.bold),
      ),
    );
  }
}
