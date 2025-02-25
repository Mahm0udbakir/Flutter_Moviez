class Movie {
  final int id;
  final String title;
  final String posterPath;
  final String overview;
  final String releaseDate;
  final double voteAverage;

  Movie({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.overview,
    required this.releaseDate,
    required this.voteAverage,
  });

  /// Factory method to create a `Movie` object from a JSON map.
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'],
      posterPath: json['poster_path'] ?? '', // Use empty string if null
      overview: json['overview'] ?? '',
      releaseDate: json['release_date'] ?? 'Unknown',
      voteAverage: (json['vote_average'] as num).toDouble(), // Convert to double
    );
  }
}
