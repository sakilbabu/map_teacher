import 'package:flutter/material.dart';

class Books extends StatefulWidget {
  const Books({Key? key}) : super(key: key);

  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  List<String> data = [
    "himu",
    "himu",
    "himu",
    "himu",
    "himu",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Read your desired book here",
            style: TextStyle(
              fontFamily: 'avenir',
              fontSize: 35,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (BuildContext context, int index) {
              return new Card(
                child: new GridTile(
                  footer: new Text(data[index]),
                  child: new Text(data[
                      index]), //just for testing, will fill with image later
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
