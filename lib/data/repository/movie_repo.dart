import 'package:movie_app/data/web_services/remote/movie_remote_datasource.dart';
import 'package:movie_app/data/models/movie_model.dart';

class MovieRepository {
  final ApiService remoteDataSource;

  MovieRepository(this.remoteDataSource);

  Future<List<MovieModel>> fetchPopularMovies() async {
    return await remoteDataSource.getPopularMovies();
  }
}
