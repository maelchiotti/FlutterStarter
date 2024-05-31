import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:starter/utils/constants/constants.dart';

class TopNavigation extends StatelessWidget implements PreferredSizeWidget {
  const TopNavigation();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(localizations.app_name),
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: ElevationOverlay.applySurfaceTint(
          Theme.of(context).colorScheme.surface,
          Theme.of(context).colorScheme.primary,
          3,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
