import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'data_model.dart';

class MyHomePage extends StatelessWidget {
  List<PageModel> homeScreen = [
    PageModel(wallpapers: [], map: [], books: [], foods: [], movies: [])
  ];
  List<String> images = [
    "assets/images/1.jpeg",
    "assets/images/2.jpeg",
    "assets/images/3.jpeg",
    "assets/images/4.jpeg",
    "assets/images/5.jpeg"
  ];

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
                    color: Colors.transparent,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.white),
                            ),
                            value: 1,
                          ),
                          PopupMenuItem(
                            child: Text(
                              "Map",
                              style: TextStyle(color: Colors.white),
                            ),
                            value: 2,
                          ),
                          PopupMenuItem(
                            child: Text(
                              "Movies",
                              style: TextStyle(color: Colors.white),
                            ),
                            value: 2,
                          ),
                          PopupMenuItem(
                            child: Text(
                              "Books",
                              style: TextStyle(color: Colors.white),
                            ),
                            value: 2,
                          ),
                          PopupMenuItem(
                            child: Text(
                              "Foods",
                              style: TextStyle(color: Colors.white),
                            ),
                            value: 2,
                          ),
                          PopupMenuItem(
                            child: Text(
                              "Wallpapers",
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
                          onTap: () {},
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
