import '../../domain/entities/example_message.dart';
import '../../domain/repositories/example_repository.dart';
import '../datasources/example_local_data_source.dart';

class ExampleRepositoryImpl implements ExampleRepository {
  ExampleRepositoryImpl(this._localDataSource);

  final ExampleLocalDataSource _localDataSource;

  @override
  Future<ExampleMessage> getMessage() async {
    final message = await _localDataSource.fetchWelcomeMessage();
    return ExampleMessage(message);
  }
}
