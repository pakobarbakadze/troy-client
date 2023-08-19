import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          color: color,
          width: 200,
        ),
      ),
    );
  }
}
