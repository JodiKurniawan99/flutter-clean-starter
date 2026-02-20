import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/injection.dart';

final exampleMessageProvider = FutureProvider<String>((ref) async {
  final useCase = ref.watch(getExampleMessageProvider);
  final result = await useCase();
  return result.value;
});
