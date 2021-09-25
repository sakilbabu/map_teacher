class PageModel {
  final List<Wallpapers> wallpapers;
  final List<Map> map;
  final List<Books> books;
  final List<Foods> foods;
  final List<Movies> movies;

  PageModel({
    required this.wallpapers,
    required this.map,
    required this.books,
    required this.foods,
    required this.movies,
  });
}

class Wallpapers {
  final List<String> wallpapersList;

  Wallpapers({required this.wallpapersList});
}

class Map {
  final List<String> mapList;

  Map({required this.mapList});
}

class Books {
  final List<String> booksList;

  Books({required this.booksList});
}

class Foods {
  final List<String> foodsList;

  Foods({required this.foodsList});
}

class Movies {
  final List<String> moviesList;

  Movies({required this.moviesList});
}
