import 'package:flutter/material.dart';
import 'package:starter/utils/constants/constants.dart';

class TopNavigation extends StatelessWidget implements PreferredSizeWidget {
  const TopNavigation();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(localizations.app_name),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
