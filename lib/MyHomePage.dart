import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'botton_nav_controller.dart';
import 'carousel_slider.dart';
import 'data_model.dart';

class MyHomePage extends StatelessWidget {
  List<PageModel> homeScreen = [
    PageModel(books: [
      Books(bookList: [
        'Himu',
        'Misir Ali',
        'The Great Gatsby',
        'Beloved',
      ])
    ], electronics: [
      Electronics(electronicsList: [
        'Phones',
        'Laptops',
        'Headphones',
        'Monitors',
      ])
    ], fashion: [], sports: [], kids: [])
  ];
  List<String> images = [
    "assets/images/1.jpeg",
    "assets/images/2.jpeg",
    "assets/images/3.jpeg",
    "assets/images/4.jpeg",
    "assets/images/5.jpeg"
  ];
  List<String> categories = [
    'Books',
    'Electronics',
    'Fashtion',
    'Sports',
    'Kids',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.black,
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
                const Expanded(
                  child: Text(
                    "Explore With Us And Enjoy the New revolutions",
                    style: TextStyle(
                      fontFamily: 'avenir',
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
                PopupMenuButton(
                    color: Colors.transparent,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
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
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: SwipeSlider()),
          SizedBox(height: 10),
          Expanded(
            child: StaggeredGridView.countBuilder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              crossAxisCount: 4,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) => Stack(
                children: [
                  ClipRRect(
                    child: Image.asset(images[index]),
                    borderRadius: BorderRadius.circular(03),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            categories[index],
                            style: TextStyle(
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
              staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
          ),
          BottomNav()
        ],
      ),
    );
  }
}
