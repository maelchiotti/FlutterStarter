import 'package:flutter/material.dart';
import 'package:starter/utils/package_info_manager.dart';

class TopNavigation extends StatelessWidget implements PreferredSizeWidget {
  const TopNavigation();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(PackageInfoManager().name),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
