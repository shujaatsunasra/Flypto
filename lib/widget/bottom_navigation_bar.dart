import 'package:flutter/material.dart';
import 'package:flypto/theme.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: txtCol, // Use the primary background color from your theme
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            spreadRadius: 0,
            blurRadius: 10,
          ),
        ],
      ),
      padding:
          const EdgeInsets.symmetric(vertical: 10), // Adjust padding as needed
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            icon: Icons.home,
            label: 'Home',
            selected: true,
          ),
          BottomNavItem(
            icon: Icons.favorite,
            label: 'Favorites',
            selected: false,
          ),
          BottomNavItem(
            icon: Icons.chat,
            label: 'Chat',
            selected: false,
          ),
          BottomNavItem(
            icon: Icons.person,
            label: 'Profile',
            selected: false,
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;

  const BottomNavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 30,
          color: selected ? Colors.white : xBack,
        ),
      ],
    );
  }
}
