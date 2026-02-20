import 'package:dio/dio.dart';

class NetworkClient {
  NetworkClient()
      : dio = Dio(
          BaseOptions(
            connectTimeout: const Duration(seconds: 15),
            receiveTimeout: const Duration(seconds: 15),
          ),
        );

  final Dio dio;
}
