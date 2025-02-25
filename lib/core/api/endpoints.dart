class Endpoints {
  static const String baseUrl = "https://api.example.com";

  // Authentication
  static const String signIn = "$baseUrl/user/signin";
  static const String signUp = "$baseUrl/user/signup";
  static const String logout = "$baseUrl/user/logout";

  // Movies
  static const String popularMovies = "$baseUrl/movies/popular";
  static const String movieDetails =
      "$baseUrl/movies/details"; // Needs movie ID
  static const String searchMovies = "$baseUrl/movies/search"; // Needs query

  // User
  static const String userProfile = "$baseUrl/user/profile";
  static const String updateProfile = "$baseUrl/user/update";
}

class ApiKey {
  // Common API Response Keys
  static const String status = "status";
  static const String errorMessage = "errorMessage";
  static const String token = "token";

  // User Data
  static const String userId = "userId";
  static const String email = "email";
  static const String username = "username";

  // Movie Data
  static const String movieId = "movie_id";
  static const String title = "title";
  static const String overview = "overview";
  static const String voteAverage = "vote_average";
  static const String releaseDate = "release_date";

  // Pagination
  static const String page = "page";
  static const String totalPages = "total_pages";
}