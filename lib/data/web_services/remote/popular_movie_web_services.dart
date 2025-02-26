import 'package:dio/dio.dart';
import 'package:movie_app/core/api/dio_consumer.dart';
import 'package:movie_app/core/api/endpoints.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/data/models/popular_model.dart';

class PopularMoviesWebServices {
  final DioConsumer dioConsumer;

  PopularMoviesWebServices({required this.dioConsumer});

  Future<List<PopularMoviesModel>> getPopularMovies() async {
    try {
      final response = await dioConsumer.get(Endpoints.popularMovies);
      final List<dynamic> results = response['results'];
      return results.map((json) => PopularMoviesModel.fromJson(json)).toList();
    } catch (e) {
      if (e is DioException) {
        handleDioExceptions(e);
      }
      throw Exception('Failed to load popular movies: $e');
    }
  }
}
