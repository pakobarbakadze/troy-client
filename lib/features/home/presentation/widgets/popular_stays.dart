import 'package:flutter/material.dart';

class PopularStays extends StatelessWidget {
  const PopularStays({
    super.key,
  });

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
                itemCount: 10,
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
