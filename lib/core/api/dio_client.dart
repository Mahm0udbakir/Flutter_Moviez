import 'package:dio/dio.dart';
import '../utils/constants.dart';

class DioClient {
  static late Dio dio;

  /// Initialize Dio with default settings
  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );

    // Add Interceptors for logging & error handling (Optional)
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print("REQUEST: ${options.method} ${options.uri}");
          return handler.next(options);
        },
        onResponse: (response, handler) {
          print("RESPONSE: ${response.statusCode} ${response.data}");
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          print("ERROR: ${e.response?.statusCode} ${e.message}");
          return handler.next(e);
        },
      ),
    );
  }

  /// Generic GET request with error handling
  static Future<Response> getData(String endpoint, {Map<String, dynamic>? query}) async {
    query ??= {};
    query['api_key'] = Constants.apiKey;

    try {
      Response response = await dio.get(endpoint, queryParameters: query);
      return response;
    } on DioException catch (e) {
      print("DioException: ${e.message}");
      throw Exception("Failed to load data: ${e.message}");
    } catch (e) {
      print("Unexpected error: $e");
      throw Exception("Unexpected error occurred");
    }
  }
}
