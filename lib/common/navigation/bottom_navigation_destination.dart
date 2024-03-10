import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starter/common/routing/router_route.dart';
import 'package:starter/utils/constants/constants.dart';

enum BottomNavigationDestination {
  home(
    Icons.home_outlined,
    Icons.home,
    CupertinoIcons.house,
    CupertinoIcons.house_fill,
    RouterRoute.home,
  ),
  settings(
    Icons.settings_outlined,
    Icons.settings,
    CupertinoIcons.settings,
    CupertinoIcons.settings_solid,
    RouterRoute.settings,
  ),
  ;

  final IconData androidIcon;
  final IconData androidSelectedIcon;
  final IconData iosIcon;
  final IconData iosActiveIcon;
  final RouterRoute route;

  String get label {
    switch (this) {
      case BottomNavigationDestination.home:
        return localizations.navigation_home;
      case BottomNavigationDestination.settings:
        return localizations.navigation_settings;
      default:
        throw Exception('No label available');
    }
  }

  const BottomNavigationDestination(
      this.androidIcon,
      this.androidSelectedIcon,
      this.iosIcon,
      this.iosActiveIcon,
      this.route,
      );
}
