import 'package:movie_app/data/web_services/remote/popular_movie_web_services.dart';
import 'package:movie_app/data/models/popular_model.dart';

class PopularMovieRepository {
  final PopularMoviesWebServices popularMoviesWebServices;

  PopularMovieRepository(this.popularMoviesWebServices);

  Future<List<PopularMoviesModel>> fetchPopularMovies() async {
    final response = await popularMoviesWebServices.getPopularMovies();
    // returns list of map<string,dynamic> as result is list<map<string,dynamic>>
    return (response["results"] as List)
        .map((movie) => PopularMoviesModel.fromJson(movie))
        .toList();
  }
}
