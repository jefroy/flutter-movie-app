import 'package:movie_app/models/movie.dart';

import '../services/http_service.dart';
import '../models/app_config.dart';

//Packages
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class MovieService {
  final GetIt getIt = GetIt.instance;
  HTTPService? _httpService = null;

  MovieService(){
    _httpService = getIt.get<HTTPService>();
  }

  Future<List<Movie>> getPopularMovies({required int page}) async {
    Response? _response = await _httpService?.get('/movie/popular', query: {
      'page': page,
    });
    if (_response?.statusCode == 200){
      Map _data = _response?.data;
      List<Movie> _movies = _data['results'].map<Movie>((_movieData) {
        return Movie.fromJson(_movieData);
      }).toList();
      return _movies;
    } else {
      throw Exception('couldnt load latest popular movies :(');
    }
  }


}
