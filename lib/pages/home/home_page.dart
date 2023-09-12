import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/providers/starter_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text(ref.watch(starterProvider)),
    );
  }
}
