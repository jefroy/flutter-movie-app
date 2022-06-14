import 'package:get_it/get_it.dart';
import 'package:movie_app/models/app_config.dart';

class Movie {
  final String name;
  final String language;
  final String description;
  final String posterPath;
  final String backdropPath;
  final String releaseDate;
  final bool isAdult;
  final num rating;

  Movie({
    required this.name,
    required this.language,
    required this.description,
    required this.posterPath,
    required this.backdropPath,
    required this.releaseDate,
    required this.isAdult,
    required this.rating,
  });

  factory Movie.fromJson(Map<String, dynamic> _json) {
    return Movie(
      name: _json['title'],
      language: _json['original_language'],
      description: _json['overview'],
      posterPath: _json['poster_path'],
      backdropPath: _json['backdrop_path'],
      releaseDate: _json['release_date'],
      isAdult: _json['adult'],
      rating: _json['vote_average'],
    );
  }

  String posterURL() {
    final AppConfig _appConfig = GetIt.instance.get<AppConfig>();
    return '${_appConfig.BASE_IMAGE_API_URL}${this.posterPath}';
  }
}
