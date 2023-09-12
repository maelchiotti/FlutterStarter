import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:starter/utils/routes/router_route.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation();

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onDestinationSelected(int? index) {
    if (index != null) {
      setState(() {
        _selectedIndex = index;
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
    return Platform.isAndroid
        ? NavigationBar(
            surfaceTintColor: Theme.of(context).colorScheme.primary,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.settings_outlined),
                selectedIcon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: _onDestinationSelected,
          )
        : CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house),
                activeIcon: Icon(CupertinoIcons.house_fill),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings),
                activeIcon: Icon(CupertinoIcons.settings_solid),
                label: 'Settings',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onDestinationSelected,
          );
  }
}
