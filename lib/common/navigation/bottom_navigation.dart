import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:starter/common/navigation/bottom_navigation_destination.dart';
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
            destinations: BottomNavigationDestination.values.map((destination) {
              return NavigationDestination(
                icon: Icon(destination.androidIcon),
                selectedIcon: Icon(destination.androidSelectedIcon),
                label: destination.label,
              );
            }).toList(),
            selectedIndex: _selectedIndex,
            onDestinationSelected: _onDestinationSelected,
          )
        : CupertinoTabBar(
            items: BottomNavigationDestination.values.map((destination) {
              return BottomNavigationBarItem(
                icon: Icon(destination.iosIcon),
                activeIcon: Icon(destination.iosActiveIcon),
                label: destination.label,
              );
            }).toList(),
            currentIndex: _selectedIndex,
            onTap: _onDestinationSelected,
          );
  }
}
