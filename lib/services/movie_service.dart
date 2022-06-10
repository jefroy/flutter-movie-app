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
}
