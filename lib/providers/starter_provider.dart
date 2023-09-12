import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'starter_provider.g.dart';

@riverpod
String starter(StarterRef ref) {
  return 'This is a starter app.';
}
