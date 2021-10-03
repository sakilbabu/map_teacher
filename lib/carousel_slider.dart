import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SwipeSlider extends StatefulWidget {
  @override
  _SwipeSliderState createState() => _SwipeSliderState();
}

class _SwipeSliderState extends State<SwipeSlider> {
  List<String> imagesList = [
    'assets/images/1.jpeg',
    'assets/images/2.jpeg',
    'assets/images/3.jpeg',
    'assets/images/4.jpeg',
  ];
  final List<String> titles = [
    ' Coffee ',
    ' Bread ',
    ' Gelato ',
    ' Ice Cream ',
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        pauseAutoPlayOnTouch: true,
        autoPlay: true,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
      items: imagesList
          .map(
            (item) => Padding(
              padding: const EdgeInsets.all(0.0),
              child: Card(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                ),
                elevation: 6.0,
                shadowColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Center(
                        child: Text(
                          titles[_currentIndex],
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.black45,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
