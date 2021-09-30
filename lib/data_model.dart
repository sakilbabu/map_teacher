class PageModel {
  final List<Books> books;
  final List<Electronics> electronics;
  final List<Books> fashion;
  final List<Sports> sports;
  final List<Kids> kids;

  PageModel({
    required this.books,
    required this.electronics,
    required this.fashion,
    required this.sports,
    required this.kids,
  });
}

class Books {
  final List<String> bookList;

  Books({required this.bookList});
}

class Electronics {
  final List<String> electronicsList;

  Electronics({required this.electronicsList});
}

class Fashion {
  final List<String> fashionList;

  Fashion({required this.fashionList});
}

class Sports {
  final List<String> sportsList;

  Sports({required this.sportsList});
}

class Kids {
  final List<String> kidsList;

  Kids({required this.kidsList});
}
