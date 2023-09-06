import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../riverpod/stay/remote/remote_stay_riverpod.dart';
import 'stay_card.dart';

class PopularStays extends ConsumerWidget {
  const PopularStays({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staysAsyncValue = ref.watch(remoteStaysProvider);

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
              child: staysAsyncValue.when(
                data: (stays) {
                  return GridView.builder(
                    itemCount: stays.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                error: (error, stackTrace) {
                  return Center(
                    child: Text(error.toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
