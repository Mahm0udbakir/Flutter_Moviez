import 'package:bloc/bloc.dart';
import 'package:movie_app/data/web_services/remote/popular_movie_web_services.dart';
import 'package:movie_app/business_logic/cubit/movie_cubit/movie_states.dart';

class MovieCubit extends Cubit<MovieState> {
  final PopularMoviesWebServices movieRemoteDataSource;

  MovieCubit(this.movieRemoteDataSource) : super(MovieInitialState());

  Future<void> fetchPopularMovies() async {
    emit(MovieLoadingState());
    try {
      final movies = await movieRemoteDataSource.getPopularMovies();
    } catch (error) {
      emit(MovieErrorState(error.toString()));
    }
  }
}
