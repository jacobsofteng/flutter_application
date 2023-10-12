import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../config/api_endpoints.dart';
import '../config/env.dart';

@singleton
class ApiService {
  late final Dio _dio;

  ApiService() {
    final options = BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      headers: {
        'X-RapidAPI-Key': Env.weatherApiKey,
        'X-RapidAPI-Host': ApiEndpoints.host,
      },
      maxRedirects: 2,
    );

    _dio = Dio(options);

    _dio.interceptors.add(QueuedInterceptorsWrapper(
      onRequest: (options, handler) {
        handler.next(options);
      },
      onError: (e, handler) => {
        handler.reject(e),
      },
    ));
  }

  Dio get dio => _dio;
}
