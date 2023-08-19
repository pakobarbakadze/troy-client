import 'package:flutter/material.dart';
import 'package:troy_client/features/shared/bottom_nav/nav_element.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              NavIcon(
                icon: Icons.home,
                onTap: () {},
              ),
              NavIcon(
                icon: Icons.search,
                onTap: () {},
              ),
              NavIcon(
                icon: Icons.add,
                onTap: () {},
              ),
              NavIcon(
                icon: Icons.shopping_cart,
                onTap: () {},
              ),
              NavIcon(
                icon: Icons.person,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
