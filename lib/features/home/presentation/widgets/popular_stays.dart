import 'package:flutter/material.dart';
import 'package:troy_client/features/shared/entities/stay.dart';
import 'package:troy_client/features/home/presentation/widgets/stay_card.dart';

class PopularStays extends StatelessWidget {
  const PopularStays({
    super.key,
  });

  final List<Stay> stays = const [
    Stay(
      id: 1,
      name: 'Sunshine Grand Villa Resort & Spa',
      price: 78,
      description: 'Spa hotel on very good location',
      features: ['Open pool', '7 bedrooms'],
      images: [
        'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg?cs=srgb&dl=pexels-pixabay-258154.jpg&fm=jpg'
      ],
    ),
    Stay(
      id: 2,
      name: 'Sunshine Grand Villa Resort & Spa',
      price: 78,
      description: 'Spa hotel on very good location',
      features: ['Open pool', '7 bedrooms'],
      images: [
        'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg?cs=srgb&dl=pexels-pixabay-258154.jpg&fm=jpg'
      ],
    ),
    Stay(
      id: 3,
      name: 'Sunshine Grand Villa Resort & Spa',
      price: 78,
      description: 'Spa hotel on very good location',
      features: ['Open pool', '7 bedrooms'],
      images: [
        'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg?cs=srgb&dl=pexels-pixabay-258154.jpg&fm=jpg'
      ],
    ),
    Stay(
      id: 4,
      name: 'Sunshine Grand Villa Resort & Spa',
      price: 78,
      description: 'Spa hotel on very good location',
      features: ['Open pool', '7 bedrooms'],
      images: [
        'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg?cs=srgb&dl=pexels-pixabay-258154.jpg&fm=jpg'
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Popular stays',
                  style: TextStyle(fontSize: 24),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.filter_list,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                itemCount: stays.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1 / 1.25,
                ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (ctx, index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: StayCard(stay: stays[index]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
