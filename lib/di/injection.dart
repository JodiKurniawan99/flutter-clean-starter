import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/network/network_client.dart';
import '../features/example/data/datasources/example_local_data_source.dart';
import '../features/example/data/repositories/example_repository_impl.dart';
import '../features/example/domain/repositories/example_repository.dart';
import '../features/example/domain/usecases/get_example_message.dart';

final networkClientProvider = Provider<NetworkClient>((ref) {
  return NetworkClient();
});

final exampleLocalDataSourceProvider = Provider<ExampleLocalDataSource>((ref) {
  return ExampleLocalDataSource();
});

final exampleRepositoryProvider = Provider<ExampleRepository>((ref) {
  return ExampleRepositoryImpl(ref.watch(exampleLocalDataSourceProvider));
});

final getExampleMessageProvider = Provider<GetExampleMessage>((ref) {
  return GetExampleMessage(ref.watch(exampleRepositoryProvider));
});
