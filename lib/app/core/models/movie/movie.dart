class Movie {
  late int id;
  late String title;
  late String originalTitle;
  late bool adult;
  late bool video;
  late DateTime releaseDate;
  String? backdropPath;
  List genreIds;
  String? originalLanguage;
  String? overview;
  double popularity;
  String? posterPath;
  double voteAverage;
  int voteCount;

  Movie({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.adult,
    required this.video,
    required this.releaseDate,
    this.backdropPath,
    this.genreIds = const [],
    this.originalLanguage,
    this.overview,
    this.popularity = 0.0,
    this.posterPath,
    this.voteAverage = 0.0,
    this.voteCount = 0,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json["id"],
        title: json["title"],
        originalTitle: json["original_title"],
        adult: json["adult"],
        video: json["video"],
        releaseDate: DateTime.parse(json["release_date"]),
        backdropPath: json["backdrop_path"],
        genreIds: json["genre_ids"],
        originalLanguage: json["original_language"],
        overview: json["overview"],
        popularity: json["popularity"],
        posterPath: json["poster_path"],
        voteAverage: json["vote_average"],
        voteCount: json["vote_count"],
      );

  Map toJson() => {
        "id": id,
        "title": title,
        "original_title": originalTitle,
        "adult": adult,
        "video": video,
        "release_date": releaseDate,
        "backdrop_path": backdropPath,
        "genre_ids": genreIds,
        "original_language": originalLanguage,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "vote_average": voteAverage,
        "vote_count": voteCount,
      };
}
