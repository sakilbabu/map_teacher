import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:map_teacher/continets.dart';

class MyHomePage extends StatelessWidget {
  List<String> images = [
    "assets/images/book_store.jpeg",
    "assets/images/map.jpeg",
    "assets/images/movie.jpeg",
    "assets/images/music.jpeg",
    "assets/images/5.jpeg",
    "assets/images/6.jpeg",
    "assets/images/7.jpeg",
    "assets/images/8.jpeg",
    "assets/images/9.jpeg",
    "assets/images/10.jpeg",
  ];
  List<String> continents = ["Asia", "America", "Europe"];

  List<String> items = ['map', 'movies', 'shop'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "MapTeacher",
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
                PopupMenuButton(
                    color: Colors.black,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text(
                              "First",
                              style: TextStyle(color: Colors.white),
                            ),
                            value: 1,
                          ),
                          PopupMenuItem(
                            child: Text(
                              "Second",
                              style: TextStyle(color: Colors.white),
                            ),
                            value: 2,
                          )
                        ])
              ],
            ),
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: images.length,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    color: Colors.green,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            final route = MaterialPageRoute(
                                builder: (BuildContext context) {
                              return Continets(
                                classModel: continents[index],
                              );
                            });
                          },
                          child: Image.asset(images[index]),
                        ),
                      ],
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            ),
          ),
        ],
      ),
    );
  }
}
