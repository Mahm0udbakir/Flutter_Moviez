import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'popular_movie_state.dart';

class PopularMovieCubit extends Cubit<PopularMovieState> {
  PopularMovieCubit() : super(PopularMovieInitial());
}
