import '../entities/example_message.dart';
import '../repositories/example_repository.dart';

class GetExampleMessage {
  const GetExampleMessage(this._repository);

  final ExampleRepository _repository;

  Future<ExampleMessage> call() {
    return _repository.getMessage();
  }
}
