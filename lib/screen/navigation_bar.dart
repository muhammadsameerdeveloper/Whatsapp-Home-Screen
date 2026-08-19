import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: 0,
      indicatorColor: const Color(0xffD9FDD3),
      backgroundColor: Colors.white,
      height: 75,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.chat_bubble_outline),
          selectedIcon: Icon(Icons.chat_bubble),
          label: "Chats",
        ),

        NavigationDestination(
          icon: Icon(Icons.update_outlined),
          selectedIcon: Icon(Icons.update),
          label: 'Updates',
        ),
        NavigationDestination(
          icon: Icon(Icons.groups_outlined),
          selectedIcon: Icon(Icons.groups),
          label: 'Communities',
        ),
        NavigationDestination(
          icon: Icon(Icons.call_outlined),
          selectedIcon: Icon(Icons.call),
          label: 'Calls',
        ),
      ],
    );
  }
}
