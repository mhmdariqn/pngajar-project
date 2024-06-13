// navbaradmin.dart
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30), // Increase icon size
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, size: 30), // Increase icon size
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, size: 30), // Increase icon size
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Color(0xFF3158DA),
      unselectedItemColor: Colors.grey,
      onTap: onItemTapped,
    );
  }
}
