import 'package:dio/dio.dart';
import 'package:movie_app/core/api/dio_consumer.dart';
import 'package:movie_app/core/api/endpoints.dart';
import 'package:movie_app/core/error/exceptions.dart';

class PopularMoviesWebServices {
  final DioConsumer dioConsumer;

  PopularMoviesWebServices({required this.dioConsumer});

  Future<List<dynamic>> getPopularMovies() async {
    try {
      Response response = await dioConsumer.get(Endpoints.popularMovies);
      return List<Map<String, dynamic>>.from(response.data['results']);
    } catch (e) {
      if (e is DioException) {
        handleDioExceptions(e);
      }
      throw Exception('Failed to load popular movies: $e');
    }
  }
}
