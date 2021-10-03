import 'package:flutter/material.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => new _BooksState();
}

class _BooksState extends State<Books> with SingleTickerProviderStateMixin {
  var deviceSize;

  Widget productCard() {
    var cardHeight = deviceSize.height * 0.8;
    var cardWidth = deviceSize.width * 0.85;
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 1.0,
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0)),
      color: Colors.white,
      child: Ink(
        height: cardHeight,
        width: cardWidth,
        child: new Stack(
          children: <Widget>[
            Container(
              height: cardHeight - cardHeight / 2 * 1.1,
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: new Container(
                width: double.infinity,
                height: cardHeight / 2 * 1.2,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(30.0),
                      topRight: const Radius.circular(30.0)),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return productCard();
  }
}
