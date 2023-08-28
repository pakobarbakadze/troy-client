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
    ref.watch(screenProvider);
    int selectedIndex = ref.read(screenProvider.notifier).screenIndex;

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
                icon: selectedIndex == 0 ? Icons.home : Icons.home_outlined,
                isSelected: selectedIndex == 0 ? true : false,
                onTap: () {
                  ref.read(screenProvider.notifier).setScreen(0);
                },
              ),
              NavElement(
                icon: selectedIndex == 1 ? Icons.search : Icons.search_outlined,
                isSelected: selectedIndex == 1 ? true : false,
                onTap: () {
                  ref.read(screenProvider.notifier).setScreen(1);
                },
              ),
              NavElement(
                icon: selectedIndex == 2 ? Icons.add : Icons.add_outlined,
                isSelected: selectedIndex == 2 ? true : false,
                onTap: () {
                  ref.read(screenProvider.notifier).setScreen(2);
                },
              ),
              NavElement(
                icon: selectedIndex == 3
                    ? Icons.bookmark
                    : Icons.bookmark_outline,
                isSelected: selectedIndex == 3 ? true : false,
                onTap: () {
                  ref.read(screenProvider.notifier).setScreen(3);
                },
              ),
              NavElement(
                icon: selectedIndex == 4 ? Icons.person : Icons.person_outline,
                isSelected: selectedIndex == 4 ? true : false,
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
