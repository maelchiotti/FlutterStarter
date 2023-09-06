import 'package:flutter/material.dart';
import 'package:starter/routes/router.dart';
import 'package:starter/utils/package_info_manager.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: PackageInfoManager().name,
      routerConfig: router,
    );
  }
}
