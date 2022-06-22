import 'package:movie_app/models/movie.dart';
import 'package:movie_app/models/search_category.dart';

class MainPageData {
  final List<Movie> movies; // store all movies pulled
  final int page; // for pagination -> api will pull a certain amount of pages
  final String searchCategory;
  final String searchText;

  MainPageData(
      {required this.movies,
      required this.page,
      required this.searchCategory,
      required this.searchText});

  MainPageData.initial()
      : movies = [],
        page = 1,
        searchCategory = SearchCategory.popular,
        searchText = '';

  MainPageData copyWith(
      List<Movie> movies, int page, String searchCategory, String searchText) {
    return MainPageData(
        movies: movies ?? this.movies,
        page: page ?? this.page,
        searchCategory: searchCategory ?? this.searchCategory,
        searchText: searchText ?? this.searchText);
  }
}
