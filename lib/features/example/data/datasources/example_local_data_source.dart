import '../../../../core/constants/app_constants.dart';

class ExampleLocalDataSource {
  Future<String> fetchWelcomeMessage() async {
    return AppConstants.welcomeMessage;
  }
}
