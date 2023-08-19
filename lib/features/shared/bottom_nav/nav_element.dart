import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  const NavIcon({super.key, required this.onTap, required this.icon});

  final void Function() onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
