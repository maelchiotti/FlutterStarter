import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:starter/routes/router_route.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation();
  
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void _onItemTapped(int? index) {
    if (index != null) {
      setState(() {
        _currentIndex = index;
      });

      switch (index) {
        case 0:
          context.goNamed(RouterRoute.home.name);
        case 1:
          context.goNamed(RouterRoute.settings.name);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
    );
  }
}
