import '../entities/example_message.dart';

abstract class ExampleRepository {
  Future<ExampleMessage> getMessage();
}
