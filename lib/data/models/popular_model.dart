class PopularMoviesModel {
  int? page;
  List<Result>? results;
  int? totalPages;
  int? totalResults;

  PopularMoviesModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  PopularMoviesModel.fromJson(Map<String, dynamic> json) {
    page = json["page"];
    results = json["results"] != null
        ? (json["results"] as List)
            .map((e) => Result.fromJson(e as Map<String, dynamic>))
            .toList()
        : [];
    totalPages = json["total_pages"];
    totalResults = json["total_results"];
  }
}

class Result {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  Result({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  Result.fromJson(Map<String, dynamic> json) {
    adult = json["adult"];
    backdropPath = json["backdrop_path"];
    genreIds = json["genre_ids"] != null
        ? List<int>.from(json["genre_ids"])
        : [];
    id = json["id"];
    originalLanguage = json["original_language"];
    originalTitle = json["original_title"];
    overview = json["overview"];
    popularity = (json["popularity"] as num?)?.toDouble();
    posterPath = json["poster_path"];
    releaseDate = json["release_date"];
    title = json["title"];
    video = json["video"];
    voteAverage = (json["vote_average"] as num?)?.toDouble();
    voteCount = json["vote_count"];
  }
}
