import 'package:flutter/material.dart';
import 'package:troy_client/features/shared/appstyle.dart';

class ItemPreview extends StatelessWidget {
  const ItemPreview({super.key, this.noInfo});

  final bool? noInfo;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          height: 200,
          width: double.infinity,
          image: NetworkImage(
              'https://d326fntlu7tb1e.cloudfront.net/uploads/710d020f-2da8-4e9e-8cff-0c8f24581488-GV6674.webp'),
        ),
        !(noInfo ?? false)
            ? Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Adidas NMD Runner',
                      softWrap: true,
                      style: appstyle(25, Colors.black, FontWeight.bold),
                    ),
                    Text(
                      'Men Shoes',
                      style: appstyle(16, Colors.grey, FontWeight.normal),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ 20',
                          style: appstyle(18, Colors.black, FontWeight.bold),
                        ),
                        Text(
                          'Colors',
                          style: appstyle(14, Colors.grey, FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : const Text(''),
      ],
    );
  }
}
