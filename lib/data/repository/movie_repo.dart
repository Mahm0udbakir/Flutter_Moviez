import 'package:movie_app/data/web_services/remote/popular_movie_web_services.dart';
import 'package:movie_app/data/models/popular_model.dart';

class MovieRepository {
  final PopularMoviesWebServices remoteDataSource;

  MovieRepository(this.remoteDataSource);

  Future<List<PopularMoviesModel>> fetchPopularMovies() async {
    return await remoteDataSource.getPopularMovies();
  }
}
