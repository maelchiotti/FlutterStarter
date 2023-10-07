import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter/models/starter_model/starter_model.dart';

part 'starter_provider.g.dart';

@riverpod
StarterModel starter(StarterRef ref) {
  return const StarterModel(label: 'This is a starter app');
}
