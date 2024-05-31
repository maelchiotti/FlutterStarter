import 'package:collection/collection.dart';
import 'package:go_router/go_router.dart';
import 'package:starter/utils/constants/constants.dart';
import 'package:starter/utils/extensions/go_router_extension.dart';

enum RouterRoute {
  home('/home', drawerIndex: 0),
  child('child', fullPath: '/home/child'),
  settings('/settings', drawerIndex: 1),
  ;

  final String path;
  final String? fullPath;
  final int? drawerIndex;

  const RouterRoute(this.path, {this.fullPath, this.drawerIndex});

  String get title {
    switch (this) {
      case home:
        return localizations.navigation_home;
      case settings:
        return localizations.navigation_settings;
      default:
        throw Exception('Unexpected route: $this');
    }
  }

  static int get currentDrawerIndex {
    final drawerIndex = currentRoute.drawerIndex;

    if (drawerIndex == null) {
      throw Exception('No current drawer index');
    }

    return drawerIndex;
  }

  static RouterRoute getRouteFromIndex(int index) {
    final route = values.firstWhereOrNull((route) => route.drawerIndex == index);

    if (route == null) {
      throw Exception('No route for index: $index');
    }

    return route;
  }

  static RouterRoute get currentRoute {
    final location = GoRouter.of(navigatorKey.currentContext!).location();

    if (location == home.path) {
      return home;
    } else if (location == settings.path) {
      return settings;
    } else {
      throw Exception('Unexpected route: $location');
    }
  }
}
