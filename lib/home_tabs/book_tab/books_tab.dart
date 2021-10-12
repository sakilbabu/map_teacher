import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:map_teacher/books/details_previw.dart';
import 'books_data.dart';

class BooksTab extends StatefulWidget {
  const BooksTab({Key? key}) : super(key: key);

  @override
  _BooksTabState createState() => _BooksTabState();
}

class _BooksTabState extends State<BooksTab> {
  final List<Books> books = [
    Books(
        images: "assets/images/himu.jpg",
        bookName: "Himu",
        writer: "Humayun Ahamed",
        series: "Himu",
        descriptions: ""),
    Books(
        images: "assets/images/mishir.jpeg",
        bookName: "Mishir Ali",
        writer: "Humayun Ahamed",
        series: "Mishir Ali",
        descriptions: ""),
    Books(
        images: "assets/images/blissful.jpeg",
        bookName: "In Blissful Hell",
        writer: "Humayun Ahamed",
        series: "In Blissful Hell",
        descriptions: ""),
    Books(
        images: "assets/images/kothao.jpg",
        bookName: "Kothao Keu Nei",
        writer: "Humayun Ahamed",
        series: "Kothao Keu Nei",
        descriptions: ""),
    Books(
        images: "assets/images/bohubrihi.jpeg",
        bookName: "Bohubrihi",
        writer: "Humayun Ahamed",
        series: "Bohubrihi",
        descriptions: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Flex(direction: Axis.vertical, children: [
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(),
            crossAxisCount: 4,
            itemCount: books.length,
            itemBuilder: (BuildContext context, int index) => Stack(
              children: [
                GestureDetector(
                    child: ClipRRect(
                      child: Image.asset(books[index].images),
                      borderRadius: BorderRadius.circular(03),
                    ),
                    onTap: () {
                      final route =
                          MaterialPageRoute(builder: (BuildContext context) {
                        return DetailsPreview(
                          books: books[index],
                        );
                      });
                      Navigator.push(context, route);
                    }),
                Positioned(
                  bottom: 5,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          books[index].bookName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            staggeredTileBuilder: (int index) => const StaggeredTile.fit(2),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
        ]),
      ),
    );
  }
}
