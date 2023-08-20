import 'package:flutter/material.dart';

import 'item_card.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key, this.width, this.noInfo});

  final double? width;
  final bool? noInfo;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11.5, vertical: 10),
        child: ItemCard(width: width ?? 250, noInfo: noInfo),
      ),
    );
  }
}
