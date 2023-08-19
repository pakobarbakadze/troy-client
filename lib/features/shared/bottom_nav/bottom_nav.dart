import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:troy_client/features/shared/bottom_nav/nav_element.dart';
import 'package:troy_client/providers/screen_provider.dart';

class BottomNav extends ConsumerWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavElement(
                icon: Icons.home,
                onTap: () {
                  ref.read(screenProvider.notifier).setScreen(0);
                },
              ),
              NavElement(
                icon: Icons.search,
                onTap: () {
                  ref.read(screenProvider.notifier).setScreen(1);
                },
              ),
              NavElement(
                icon: Icons.add,
                onTap: () {
                  ref.read(screenProvider.notifier).setScreen(2);
                },
              ),
              NavElement(
                icon: Icons.shopping_cart,
                onTap: () {
                  ref.read(screenProvider.notifier).setScreen(3);
                },
              ),
              NavElement(
                icon: Icons.person,
                onTap: () {
                  ref.read(screenProvider.notifier).setScreen(4);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
