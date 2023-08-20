import 'package:flutter/material.dart';
import 'package:troy_client/features/home/presentation/widgets/items_list.dart';
import 'package:troy_client/features/shared/appstyle.dart';

class Latest extends StatelessWidget {
  const Latest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Shoes',
                style: appstyle(24, Colors.black, FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'Show All',
                    style: appstyle(20, Colors.black, FontWeight.bold),
                  ),
                  const SizedBox(width: 5),
                  const Icon(Icons.arrow_right)
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 115,
          child: ItemsList(
            width: 115,
            noInfo: true,
          ),
        ),
      ],
    );
  }
}
