import 'package:movie_app/core/api/dio_consumer.dart';
import 'package:movie_app/data/models/movie_model.dart';

class ApiService {
  final DioConsumer dioConsumer;

  ApiService({required this.dioConsumer});

  Future<List<MovieModel>> getPopularMovies() async {
    try {
      final response = await dioConsumer.get('/movie/popular');
      final List<dynamic> results = response['results'];

      return results.map((json) => MovieModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load popular movies: $e');
    }
  }
}
