import 'package:bloc/bloc.dart';
import 'package:movie_app/data/datasources/remote/movie_remote_datasource.dart';
import 'package:movie_app/presentation/cubit/movie_cubit/movie_states.dart';

class MovieCubit extends Cubit<MovieState> {
  final ApiService movieRemoteDataSource;

  MovieCubit(this.movieRemoteDataSource) : super(MovieInitialState());

  Future<void> fetchPopularMovies() async {
    emit(MovieLoadingState());
    try {
      final movies = await movieRemoteDataSource.getPopularMovies();
      emit(MovieSuccessState(movies));
    } catch (error) {
      emit(MovieErrorState(error.toString()));
    }
  }
}
