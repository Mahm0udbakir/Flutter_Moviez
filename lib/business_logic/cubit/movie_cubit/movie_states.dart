import 'package:movie_app/data/models/movie_model.dart';

abstract class MovieState {}

class MovieInitialState extends MovieState {}

class MovieLoadingState extends MovieState {}

class MovieSuccessState extends MovieState {
  final List<MovieModel> movies;

  MovieSuccessState(this.movies);
}

class MovieErrorState extends MovieState {
  final String error;

  MovieErrorState(this.error);
}
