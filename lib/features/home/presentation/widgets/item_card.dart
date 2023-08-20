import 'package:flutter/material.dart';

import 'item_preview.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.width, this.noInfo});

  final double width;
  final bool? noInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            spreadRadius: 1,
            blurRadius: 0.8,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: ItemPreview(noInfo: noInfo),
    );
  }
}
