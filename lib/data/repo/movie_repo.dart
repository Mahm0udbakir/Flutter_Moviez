import 'package:movie_app/data/datasources/remote/movie_remote_datasource.dart';
import 'package:movie_app/data/models/movie_model.dart';

class MovieRepository {
  final ApiService remoteDataSource;

  MovieRepository(this.remoteDataSource);

  Future<List<Movie>> fetchPopularMovies() async {
    return await remoteDataSource.getPopularMovies();
  }
}
