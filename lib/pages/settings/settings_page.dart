import 'package:flutter/material.dart';
import 'package:starter/pages/settings/about.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        About(),
      ],
    );
  }
}
