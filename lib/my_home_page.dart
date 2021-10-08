import 'package:flutter/material.dart';
import 'package:map_teacher/drawer.dart';
import 'package:map_teacher/home_tabs/books_tab.dart';
import 'package:map_teacher/home_tabs/fashion_tab.dart';
import 'package:map_teacher/home_tabs/kids_tab.dart';
import 'package:map_teacher/home_tabs/sports_tab.dart';
import 'package:map_teacher/home_tabs/watch_tab.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          backgroundColor: Colors.white12,
          drawer: ShowDrawer(),
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                const SliverAppBar(
                  backgroundColor: Colors.deepOrangeAccent,
                  title: Text('Categories'),
                  pinned: true,
                  elevation: 20,
                  floating: true,
                  bottom: TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(child: Text('Books')),
                      Tab(child: Text('Fashion')),
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Kids')),
                      Tab(child: Text('Watch')),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                BooksTab(),
                FashionTab(),
                SportsTab(),
                KidsTab(),
                WatchTab(),
              ],
            ),
          )),
    );
  }
}
