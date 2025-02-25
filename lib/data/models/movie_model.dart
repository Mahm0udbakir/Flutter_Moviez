class MovieModel {
  int? page;
  List<Result>? results;
  int? totalpages;
  int? totalresults;

  MovieModel({this.page, this.results, this.totalpages, this.totalresults});

  MovieModel.fromJson(Map<String, dynamic> json) {
    page = json["page"];
    results = json["results"] == null
        ? null
        : (json["results"] as List).map((e) => Result.fromJson(e)).toList();
    totalpages = json["total_pages"];
    totalresults = json["total_results"];
  }
}

class Result {
  bool? adult;
  String? backdroppath;
  List<GenreId>? genreids;
  int? id;
  String? originallanguage;
  String? originaltitle;
  String? overview;
  double? popularity;
  String? posterpath;
  String? releasedate;
  String? title;
  bool? video;
  double? voteaverage;
  int? votecount;

  Result(
      {this.adult,
      this.backdroppath,
      this.genreids,
      this.id,
      this.originallanguage,
      this.originaltitle,
      this.overview,
      this.popularity,
      this.posterpath,
      this.releasedate,
      this.title,
      this.video,
      this.voteaverage,
      this.votecount});

  Result.fromJson(Map<String, dynamic> json) {
    adult = json["adult"];
    backdroppath = json["backdrop_path"];
    genreids = json["genre_ids"] == null
        ? null
        : (json["genre_ids"] as List).map((e) => GenreId.fromJson(e)).toList();
    id = json["id"];
    originallanguage = json["original_language"];
    originaltitle = json["original_title"];
    overview = json["overview"];
    popularity = json["popularity"];
    posterpath = json["poster_path"];
    releasedate = json["release_date"];
    title = json["title"];
    video = json["video"];
    voteaverage = json["vote_average"];
    votecount = json["vote_count"];
  }
}

class GenreId {
  GenreId();

  GenreId.fromJson(Map<String, dynamic> json) {}
}
