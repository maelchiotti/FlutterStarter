import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/providers/starter_provider.dart';
import 'package:starter/utils/asset.dart';
import 'package:starter/utils/constants/paddings.dart';
import 'package:starter/utils/constants/sizes.dart';

class HomePage extends ConsumerWidget {
  const HomePage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        children: [
          Image.asset(Asset.flutter.path, width: Sizes.size128.size,),
          Padding(padding: Paddings.padding16.vertical),
          Text(ref.watch(starterProvider).label),
        ],
      ),
    );
  }
}
