import 'package:flutter/material.dart';

class NavElement extends StatelessWidget {
  const NavElement({
    super.key,
    required this.onTap,
    required this.icon,
    required this.isSelected,
  });

  final void Function() onTap;
  final IconData? icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(
          icon,
          color: isSelected ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}
