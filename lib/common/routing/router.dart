import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:starter/common/navigation/bottom_navigation.dart';
import 'package:starter/common/navigation/top_navigation.dart';
import 'package:starter/common/routing/router_route.dart';
import 'package:starter/pages/home/home_page.dart';
import 'package:starter/pages/settings/settings_page.dart';
import 'package:starter/utils/constants/constants.dart';

final router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: RouterRoute.home.path,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          appBar: const TopNavigation(),
          body: child,
          bottomNavigationBar: const BottomNavigation(),
        );
      },
      routes: [
        GoRoute(
          path: RouterRoute.home.path,
          builder: (context, state) => const HomePage(),
          routes: [
            GoRoute(
              path: RouterRoute.child.path,
              builder: (context, state) => Container(),
            ),
          ],
        ),
        GoRoute(
          path: RouterRoute.settings.path,
          builder: (context, state) => const SettingsPage(),
        ),
      ],
    ),
  ],
);
